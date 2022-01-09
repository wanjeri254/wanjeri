package library.models;

import java.util.concurrent.TimeUnit;

public class BookFine {

    private BorrowTransaction borrowTransaction;

    private Boolean isFine;

    private double fine;

    private Book book;

    public BorrowTransaction getBorrowTransaction() {
        return borrowTransaction;
    }

    public void setBorrowTransaction(BorrowTransaction borrowTransaction) {
        this.borrowTransaction = borrowTransaction;
    }

    public Boolean getIsFine() {

        if (borrowTransaction == null) {
            return false;
        }

        if (borrowTransaction.getReturnDate().after(borrowTransaction.getDueDate())) {
            return true;
        }
        return false;
    }

    public void setIsFine(Boolean isFine) {
        this.isFine = isFine;
    }

    public double getFine() {
        return fine;
    }

    public void setFine(double fine) {
        this.fine = fine;
    }
}
