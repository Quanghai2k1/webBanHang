/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.LaptopProduct;
import entty.PhukienProduct;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class ProductDao {
    public static ArrayList<LaptopProduct> getAllProduct(){
        ArrayList<LaptopProduct> list=new ArrayList();
        String sql = "select * from lap";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                LaptopProduct p=new LaptopProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15),rs.getString(16));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<LaptopProduct> getProductByCid(String cid){
        ArrayList<LaptopProduct> list=new ArrayList();
        String sql = "select * from lap where cateID = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                LaptopProduct p=new LaptopProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15),rs.getString(16));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static LaptopProduct getProductByPid(String pid){
        String sql = "select * from lap where id = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, pid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                LaptopProduct p=new LaptopProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15),rs.getString(16));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static ArrayList<LaptopProduct> getProductSearch(String search){
        ArrayList<LaptopProduct> list=new ArrayList();
        String sql = "select * from lap where id in\n" +
"(select distinct id from lap where name like ? or [description] like ? or title like ?)";
         try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, "%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ps.setString(3, "%"+search+"%");
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                LaptopProduct p=new LaptopProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getString(14),rs.getString(15),rs.getString(16));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<PhukienProduct> getPhukienSearch(String search){
        ArrayList<PhukienProduct> list=new ArrayList();
        String sql = "select * from phukien where id in\n" +
"(select distinct id from phukien where ten like ? or mota like ?)";
         try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, "%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                PhukienProduct p=new PhukienProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(7));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
//    phu kien
    public static ArrayList<PhukienProduct> getAllPhukien(){
        ArrayList<PhukienProduct> list=new ArrayList();
        String sql = "select * from phukien";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                PhukienProduct p=new PhukienProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(7));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<PhukienProduct> getPhukienByCateid(String cateID){
        ArrayList<PhukienProduct> list=new ArrayList();
        String sql = "select * from phukien where cateID = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, cateID);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                PhukienProduct p=new PhukienProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(7));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static PhukienProduct getPhukienByPid(String pid){
        String sql = "select * from phukien where id = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, pid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                PhukienProduct p=new PhukienProduct(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(7));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
//        ArrayList<LaptopProduct> list=getProductSearch("giày");
//        for(LaptopProduct p:list){
//            System.out.println(p);
//        }
//           LaptopProduct p=getProductByPid("1");
//           System.out.println(p);
        ArrayList<LaptopProduct> list = getProductByCid("1");
        for(LaptopProduct p:list){
            System.out.println(p);
        }
//        ArrayList<LaptopProduct> list = getProductSearch(search);
//        for(PhukienProduct p:list){
//            System.out.println(p);
//        }
    }
}
