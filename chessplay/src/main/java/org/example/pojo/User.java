package org.example.pojo;

public class User {
    private String username;
    private String password;
    private String association;
    private int score;
    private String identity;
    private int coin;
    private String id;

    public User() {}

    public User(String username, String password, String association, int score, String identity, int coin, String id) {
        this.username = username;
        this.password = password;
        this.association = association;
        this.score = score;
        this.identity = identity;
        this.coin = coin;
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getCoin() {
        return coin;
    }
    
    public void setCoin(int coin) {
        this.coin = coin;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAssociation() {
        return association;
    }

    public void setAssociation(String association) {
       this.association = association;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
       this.score = score;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    @Override
    public String toString() {
        return "User [username=" + username + ", password=" + password + ", association=" + association+ ", score=" + score + ", identity=" + identity + "]";
    }
}
