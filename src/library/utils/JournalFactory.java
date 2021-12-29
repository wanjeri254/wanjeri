package library.utils;

import library.models.Book;
import library.models.Journal;

public class JournalFactory extends BookFactory {

    @Override
    public Book createBook() {
        return new Journal();
    }
    
}
