package library.utils;

import library.models.Book;
import library.models.Novel;

public class NovelFactory extends BookFactory {

    @Override
    public Book createBook() {
        return new Novel();
    }
    
}
