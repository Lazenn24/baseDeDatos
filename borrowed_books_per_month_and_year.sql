delimiter $$
create procedure borrowed_books()
begin
	declare v_fin int;
    declare v_bookCode char(4);
    declare v_month int;
    declare v_year int;
    declare amount int;
    
    
    declare c_book cursor for select BOOKS.BOOK_CODE, month(BORROWS.BORROW_DATE), year(BORROWS.BORROW_DATE), count(BOOKS.BOOK_CODE)
								from BOOKS,
									 COPIES,
									 BORROWS
								where
									BOOKS.BOOK_CODE = COPIES.BOOK_CODE and
									COPIES.COPY_CODE = BORROWS.COPY_CODE
								group by BOOKS.BOOK_CODE, month(BORROWS.BORROW_DATE), year(BORROWS.BORROW_DATE);
                                
	declare continue handler for not found set v_fin = 1;

	create table if not exists BOOKSTATS(
		BOOK_CODE char(4),
		month int,
		year int,
		amount_of_books int);
		
	set v_fin = 0;	
	
	SET SQL_SAFE_UPDATES = 0;
    delete from BOOKSTATS where BOOK_CODE is not null;
    SET SQL_SAFE_UPDATES = 1;

	open c_book;

	l_book : loop
		fetch c_book into v_bookCode, v_month, v_year, amount;
		
		if v_fin = 1 then
			leave l_book;
		end if;    
		
		insert into BOOKSTATS(BOOK_CODE, month, year, amount_of_books) values (v_bookCode, v_month, v_year, amount);
	end loop l_book;

	close c_book;
                                
end;	
$$
delimiter ;

call borrowed_books;	
drop procedure borrowed_books;		

drop table BOOKSTATS;

select * from BOOKSTATS;	




			