create database AddressBookService			--UC1 

create table AddressBook(
FirstName varchar(255),
LastName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
Zip int,
PhoneNumber varchar(255),
Email varchar(255)
)

select * from AddressBook;

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Akhila','Oruganti','Vidyanagar','Karimnagar','Telangana',505001,'+919550458288','orugantiakhila34@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Vamshi','Chatla','Peechupally','Karimnagar','Telangana',505467,'+9180996828819','vamsi214@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Abhi','Oruganti','Kanpur','Bangolore','karnataka',513424,'+918374726752','abhij98@gmail.com')

Insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Prasanna','Alavoju','vilalpally','Vishakapanam','Andra Pradesh',563524,'+9197456345425','puppy1234@gmail.com')

Update AddressBook
set FirstName = 'Kjal',LastName='agrwal',Address='Hanmajpally',City='Warangal',State = 'Telangana',Zip=874362,PhoneNumber='+9176354252324',Email='kajol988@gmail.com'
where FirstName='Akhila'

delete from AddressBook where FirstName='Prasanna'










--UC5 Delete person using first name
delete from Address_Books where City = 'Sangli';

--UC6 Ability to retrieve person belonging to a city or state 
select * from Address_Books where City='Sangli';

--UC7 Count size of addressbook by city and state
select count(City) as TotalContact from Address_Books;  

--UC8 Ability to retrieve entries sorted  alphabetically by person's name for a given city
select * from Address_Books where State='Maharashtra' order by (first_name);
select * from Address_Books;

--UC9 Altering Address Book to add new columns, Address Book Name and Type of contacts
alter table Address_Books add addressBookType varchar(30), AddressBookName varchar(40);

update Address_Books set addressBookType = 'Friends' where City ='Sangli';

update Address_Books set addressBookName = 'BookRecords';

update Address_Books set addressBookType = 'Family' where last_name ='Noor';

update Address_Books set addressBookType = 'Profession' where addressBookType is null;

--UC10 Getting number of contact persons for each ContactType
select addressBookType, count(addressBookType) as NumberOfContacts from Address_Books group by addressBookType;

--UC11 Ability to add person to both Friend and Family
insert into Address_Books values('Ajay', 'Yadav','CSTM','Mumbai', 'Maharashtra', 214566,941144333, 'adhar@gmail.com','Family','BookRecords');

select * from Address_Books where first_name='Ajay' and last_name='Yadav'; 

