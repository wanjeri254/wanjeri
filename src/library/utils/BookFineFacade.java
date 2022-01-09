package library.utils;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import library.models.Book;
import library.models.BorrowTransaction;

public class BookFineFacade {
    
    private Book book;
    
    private BorrowTransaction borrowTransaction;
    
    public BookFineFacade(BorrowTransaction borrowTransaction) {
        this.borrowTransaction = borrowTransaction;
    }
    
    public double createBookFine() {
        double fine = 0.0;

        if (borrowTransaction == null) {
            return fine;
        }

        if (borrowTransaction.getBookId() == null) {
            return fine;
        }
        
        if (borrowTransaction.getDueDate() == null) {
            return fine;
        }

        Date today = new Date();
        if(borrowTransaction.getDueDate().after(today)) {
            return fine;
        }
        
        long fineDays = today.getTime() - borrowTransaction.getDueDate().getTime();
        long days = TimeUnit.DAYS.convert(fineDays, TimeUnit.MILLISECONDS);

        if (days > 0) {
            return days * borrowTransaction.getFine();
        }

        return 0.0;
    }
}
