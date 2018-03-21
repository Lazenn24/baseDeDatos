select * from BOOKSTATS;
select * from BORROWS;

delimiter $$
create trigger update_bookstats after delete on BORROWS
for each row
begin
	declare v_book char(4);
    declare v_amount int;
    declare v_year int;
    declare v_month int;
    
    select BOOK_CODE into v_book
    from BORROWS,
		COPIES,
        BOOKS
	where BORROWS.COPY_CODE = COPIES.COPY_CODE and
    COPIES.BOOK_CODE = BOOKS.BOOK_CODE;
    
    select year(BORROW_DATE) into v_year
    from BORROWS;
    
    select month(BORROW_DATE) into v_month
    from BORROWS; 
    
	select count(BOOKS.BOOK_CODE) into v_amount
    from BORROWS,
		COPIES,
        BOOKS
	where BORROWS.COPY_CODE = COPIES.COPY_CODE and
    COPIES.BOOK_CODE = BOOKS.BOOK_CODE
    group by BOOKS.BOOK_CODE;
    
    if v_amount >= BOOKSTATS.amount_of_books then
		delete from BOOKSTATS where v_book = BOOKSTATS.BOOK_CODE;
	elseif v_amount < BOOKSTATS.amount_of_books then
		update BOOKSTATS set amount_of_books = amount_of_books - v_amount;
	end if;
    
    
 end;
 $$
 delimiter ;
 
   select count(BOOKS.BOOK_CODE)
    from BORROWS,
		COPIES,
        BOOKS
	where BORROWS.COPY_CODE = COPIES.COPY_CODE and
    COPIES.BOOK_CODE = BOOKS.BOOK_CODE
    group by BOOKS.BOOK_CODE;