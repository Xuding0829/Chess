package org.example.pojo;

public class Comment {
    private String username;
    private String content;
    private String time;
    private String id;

    public Comment(){}

    public Comment(String username, String content, String time, String id) {
        this.username = username;
        this.content = content;
        this.time = time;
        this.id = id;
    }

    public String getId() {return id;}

    public void setId(String id) {this.id = id;}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String toString(){
        return username + "\t" + content + "\t" + time + "\t" + id;
    }
}
