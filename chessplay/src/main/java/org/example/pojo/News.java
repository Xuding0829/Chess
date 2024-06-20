package org.example.pojo;

public class News {
    private int id;
    private String title;
    private String content;
    private String time;
    private String pic;

    public News(int id, String title, String content, String time, String pic) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.time = time;
        this.pic = pic;
    }

    public News() {}
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
}
