package library.models;

public class Payment {
    
    private int id;
    
    private int memberId;
    
    private int librarianId;
    
    private double subscriptionFee;
    
    private double bookFine;
    
    private boolean hasPaidSubscription;
    
    private boolean hasPaidBookFine;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public int getLibrarianId() {
        return librarianId;
    }

    public void setLibrarianId(int librarianId) {
        this.librarianId = librarianId;
    }

    public double getSubscriptionFee() {
        return subscriptionFee;
    }

    public void setSubscriptionFee(double subscriptionFee) {
        this.subscriptionFee = subscriptionFee;
    }

    public double getBookFine() {
        return bookFine;
    }

    public void setBookFine(double bookFine) {
        this.bookFine = bookFine;
    }

    public boolean isHasPaidSubscription() {
        return hasPaidSubscription;
    }

    public void setHasPaidSubscription(boolean hasPaidSubscription) {
        this.hasPaidSubscription = hasPaidSubscription;
    }

    public boolean isHasPaidBookFine() {
        return hasPaidBookFine;
    }

    public void setHasPaidBookFine(boolean hasPaidBookFine) {
        this.hasPaidBookFine = hasPaidBookFine;
    }
    
}
