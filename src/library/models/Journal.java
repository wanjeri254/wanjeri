package library.models;

public class Journal extends Book {
    
    private Integer numberOfPublications;

    public Integer getNumberOfPublications() {
        return numberOfPublications;
    }

    public void setNumberOfPublications(Integer numberOfPublications) {
        this.numberOfPublications = numberOfPublications;
    }    
    
}
