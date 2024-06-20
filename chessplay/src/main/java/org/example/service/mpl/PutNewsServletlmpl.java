package org.example.service.mpl;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.HttpClientUtils;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.example.mapper.PutNewsMapper;
import org.example.pojo.News;
import org.example.service.PutNewsServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class PutNewsServletlmpl implements PutNewsServlet {
    @Autowired
    public PutNewsMapper putNewsMapper;

    @Override
    public void insertnews() {
        Set<News> newsSet = new HashSet<>();
        CloseableHttpClient httpClient = HttpClients.createDefault();
        CloseableHttpResponse response = null;

        HttpGet requset = new HttpGet("http://www.eweiqi.com/index.php?m=content&c=index&a=lists&catid=16");
        try{
            response = httpClient.execute(requset);
            if(response.getStatusLine().getStatusCode() == 200){
                HttpEntity httpEntity = response.getEntity();
                String html = EntityUtils.toString(httpEntity, "utf-8");
                Pattern p = Pattern.compile("(?<=<a href=\")(http|https)(.*).com(.*)(?=(\" target=))");
                Pattern p_pic = Pattern.compile("((?<=<img src=\")http(.*).(png|jpg)(?=\" width=\"120px\" height=\"70px\"/></dt> -->))|((?<=<img src=\"/uploadfile)(.*).(png|jpg)(?=\" width=\"))");
                Pattern p_title = Pattern.compile("\\[(.*)](.*)(?=</dd)");
                Pattern p_time = Pattern.compile("(?<=dl1_dd2\">)(.*)(?=<a)");
                Matcher matcher = p.matcher(html);
                Matcher matcher_pic = p_pic.matcher(html);
                Matcher matcher_title = p_title.matcher(html);
                Matcher matcher_time = p_time.matcher(html);
                while(matcher_time.find() && matcher_title.find() && matcher_pic.find() && matcher.find()){
                    News news = new News();
                    CloseableHttpClient httpClient_content = HttpClients.createDefault();
                    CloseableHttpResponse response_content = null;

                    HttpGet requset_content = new HttpGet(matcher.group());
                    response_content = httpClient_content.execute(requset_content);
                    if(response_content.getStatusLine().getStatusCode() == 200) {
                        HttpEntity httpEntity_content = response_content.getEntity();
                        String html_content = EntityUtils.toString(httpEntity_content, "utf-8");

                        Pattern p_content = Pattern.compile("(?<=<!-- )<div class=\"con\"(.*)</div>(?= -->)", Pattern.DOTALL);
                        Matcher matcher_content = p_content.matcher(html_content);

                        while(matcher_content.find()){
                            news.setTitle(matcher_title.group());
                            news.setContent(matcher_content.group());
                            news.setTime(matcher_time.group());
                            news.setPic(matcher_pic.group());
                            newsSet.add(news);
                        }
                    }
                }
            }
            else {
                System.out.println("不是200");
                System.out.println(EntityUtils.toString(response.getEntity(), "utf-8"));
            }
        } catch (ClientProtocolException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            HttpClientUtils.closeQuietly(response);
            HttpClientUtils.closeQuietly(httpClient);
        }
        putNewsMapper.insertNews(newsSet);

    }
}
