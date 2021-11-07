/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

/**
 *
 * @author eva
 */
public class User {
  
    private int id;
    private String email;
    private String name;
    private String password;
    private String contact;
    private String gender;

    public User(int id, String email, String password, String name, String contact , String gender) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.contact = contact;
        this.gender= gender;
    }


    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }
        public String getcontact() {
        return contact;
    }

    public String getgender() {
        return gender;
    }
}


