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
public class LaptopCategory {
    private int cid;
    private String name;

    public LaptopCategory(int cid, String name) {
        this.cid = cid;
        this.name = name;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category{" + "cid=" + cid + ", name=" + name + '}';
    }
    
    
}
