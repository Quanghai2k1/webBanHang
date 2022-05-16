/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.LaptopCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class CategoryDao {
    public static ArrayList<LaptopCategory> getAllCategory(){
        ArrayList<LaptopCategory> list = new ArrayList();
        String sql = "select * from categorylap";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                LaptopCategory c=new LaptopCategory(rs.getInt(1),rs.getString(2));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        
        ArrayList<LaptopCategory> list = getAllCategory();
        for(LaptopCategory c:list){
            System.out.println(c);
        }
    }
}
