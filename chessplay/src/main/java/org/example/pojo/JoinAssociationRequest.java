package org.example.pojo;

public class JoinAssociationRequest {
    private String username;
    private String association;

    // Getters and Setters

    public JoinAssociationRequest(String username, String association) {
        this.username = username;
        this.association = association;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getAssociation() {
        return association;
    }
    public void setAssociation(String association) {
        this.association = association;
    }
}
