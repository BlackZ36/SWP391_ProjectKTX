package Model;

public class User {

    private Long idUser;
    private Long idAccount;
    private String name;
    private String dob;
    private String address;
    private String numberCCCD;
    private String nameUniversity;
    private String phoneNumber;
    private String imageRenter;
    private String gender;
    private String gmail;

    // Constructors
    public User() {
    }

    public User(Long idUser, Long idAccount, String name, String dob, String address, String numberCCCD, String nameUniversity, String phoneNumber, String imageRenter, String gender, String gmail) {
        this.idUser = idUser;
        this.idAccount = idAccount;
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.numberCCCD = numberCCCD;
        this.nameUniversity = nameUniversity;
        this.phoneNumber = phoneNumber;
        this.imageRenter = imageRenter;
        this.gender = gender;
        this.gmail = gmail;
    }

    // Getters and Setters
    public Long getIdUser() {
        return idUser;
    }

    public void setIdUser(Long idUser) {
        this.idUser = idUser;
    }

    public Long getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(Long idAccount) {
        this.idAccount = idAccount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNumberCCCD() {
        return numberCCCD;
    }

    public void setNumberCCCD(String numberCCCD) {
        this.numberCCCD = numberCCCD;
    }

    public String getNameUniversity() {
        return nameUniversity;
    }

    public void setNameUniversity(String nameUniversity) {
        this.nameUniversity = nameUniversity;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getImageRenter() {
        return imageRenter;
    }

    public void setImageRenter(String imageRenter) {
        this.imageRenter = imageRenter;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }
}

