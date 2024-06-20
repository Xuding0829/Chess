package org.example.pojo;

public class Room_Admin {
    private String association;
    private String user_id;

    public Room_Admin(String association, String user_id) {
        this.association = association;
        this.user_id = user_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getAssociation() {
        return association;
    }

    public void setAssociation(String association) {
        this.association = association;
    }
}
