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
public class PhukienProduct {
    private int id;
    private String ten,gia;
    private int soluong;
    private String mota,hinhanh;

    public PhukienProduct(int id, String ten, String gia, int soluong, String mota, String hinhanh) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
        this.soluong = soluong;
        this.mota = mota;
        this.hinhanh = hinhanh;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGia() {
        return gia;
    }

    public void setGia(String gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    @Override
    public String toString() {
        return "PhukienProduct{" + "id=" + id + ", ten=" + ten + ", gia=" + gia + ", soluong=" + soluong + ", mota=" + mota + ", hinhanh=" + hinhanh + '}';
    }
    
    
}
