/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entty;

/**
 *
 * @author QuangHai144
 */
public class Account {
    private String user,pass;
    private int id,isSell,isAdmin;

    public Account(int id,String user, String pass,int isSell,int isAdmin) {
        this.id=id;
        this.user = user;
        this.pass = pass;
        this.isAdmin=isAdmin;
        this.isSell=isSell;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }
    
    public String toString(){
        return id+" "+user+" "+pass+" "+isSell+" "+isAdmin ; 
    }
}
