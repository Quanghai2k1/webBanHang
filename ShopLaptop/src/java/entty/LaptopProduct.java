
package entty;


public class LaptopProduct {
    private int id;
    private String name;
    private String image;
    private double price;
    private String title;
    private String description;
    private int soluong;
    private String manhinh,cpu,ram,ocung,dohoa,trongluong,kichthuoc;
    public LaptopProduct() {
    }

    public LaptopProduct(int id, String name, String image, double price, String title, String description, int soluong, String manhinh, String cpu, String ram, String ocung, String dohoa, String trongluong, String kichthuoc) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.description = description;
        this.soluong = soluong;
        this.manhinh = manhinh;
        this.cpu = cpu;
        this.ram = ram;
        this.ocung = ocung;
        this.dohoa = dohoa;
        this.trongluong = trongluong;
        this.kichthuoc = kichthuoc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getOcung() {
        return ocung;
    }

    public void setOcung(String ocung) {
        this.ocung = ocung;
    }

    public String getDohoa() {
        return dohoa;
    }

    public void setDohoa(String dohoa) {
        this.dohoa = dohoa;
    }

    public String getTrongluong() {
        return trongluong;
    }

    public void setTrongluong(String trongluong) {
        this.trongluong = trongluong;
    }

    public String getKichthuoc() {
        return kichthuoc;
    }

    public void setKichthuoc(String kichthuoc) {
        this.kichthuoc = kichthuoc;
    }

    @Override
    public String toString() {
        return "LaptopProduct{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", description=" + description + ", soluong=" + soluong + ", manhinh=" + manhinh + ", cpu=" + cpu + ", ram=" + ram + ", ocung=" + ocung + ", dohoa=" + dohoa + ", trongluong=" + trongluong + ", kichthuoc=" + kichthuoc + '}';
    }

    
    
}
