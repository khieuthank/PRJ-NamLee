/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author KinNhun
 */
public class Users {
     private int userId;
    private String username;
    private String password;
    private int role;
    private String registrationDate;

    public Users() {
    }

    public Users(int userId, String username, String password, int role, String registrationDate) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.role = role;
        this.registrationDate = registrationDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(String registrationDate) {
        this.registrationDate = registrationDate;
    }

    @Override
    public String toString() {
        return "Users{" + "userId=" + userId + ", username=" + username + ", password=" + password + ", role=" + role + ", registrationDate=" + registrationDate + '}';
    }
    
}
