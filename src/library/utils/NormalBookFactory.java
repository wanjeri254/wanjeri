package library.utils;

import library.models.Book;

public class NormalBookFactory extends BookFactory {

    @Override
    public Book createBook() {
        return new Book();
    }
    
}
