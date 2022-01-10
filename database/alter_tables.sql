-- Alter tables

ALTER TABLE `book`
  ADD FOREIGN KEY (Category_id) REFERENCES Category(Category_id) 
    	ON DELETE NO ACTION ON UPDATE NO ACTION;
		
ALTER TABLE book
	DROP COLUMN Category_name;

ALTER TABLE `borrowers`
  ADD FOREIGN KEY (Book_id) REFERENCES book(Book_id) 
    	ON DELETE NO ACTION ON UPDATE NO ACTION;
		

ALTER TABLE `borrowers`
  ADD FOREIGN KEY (librarian_id) REFERENCES librarian(librarian_Id) 
    	ON DELETE NO ACTION ON UPDATE NO ACTION;
		

ALTER TABLE `borrowers`
  ADD FOREIGN KEY (readers_id) REFERENCES readers(readers_id) 
    	ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `borrowers`
	ADD COLUMN return_date DATE;

ALTER TABLE `borrowers`
	ADD COLUMN total_fine DECIMAL(5,2);


ALTER TABLE borrowers
	DROP COLUMN reader_Name;
	
ALTER TABLE borrowers
	DROP COLUMN librarian_name;

DROP TABLE `return`;

ALTER TABLE `readers` CHANGE `readers_id` `readers_id` INT(10) NOT NULL AUTO_INCREMENT;

	
	
-- Undo alter tables

ALTER TABLE book
	ADD COLUMN Category_name varchar(255) NOT NULL
	
ALTER TABLE book
	DROP CONSTRAINT Category_id;