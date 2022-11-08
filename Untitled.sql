create table customer(
 customer_id varchar(20) primary key,
  customer_name varchar(20) not null,
	customer_tel numeric
);
create table product(
	product_id varchar (20) primary key,
	 product_name varchar(20) not null,
	  category varchar(20),
	   price numeric check (price >= 0)
);
create table orders(
	customer_id varchar(20),
	 product_id varchar (20),
	  order_date date default current_date,
	   quantity int,
	    total_amount float,
	     constraint fk_customer_id foreign key(customer_id)references customer (customer_id),
	      constraint fk_product_id foreign key(product_id) references product(product_id)
);

insert into customer (customer_id, customer_name,customer_tel)values
 ('C01', 'Ali', '71321009'),
  ('C02', 'Asma', '77345823');
  
insert into product (product_id, product_name, category,price) values
 ('P01', 'Samsung galaxy s20', 'smartphone', 3299),
  ('P02', 'Asus Notebook', 'PC', 4599);
  
insert into orders (customer_id, product_id, order_date, quantity, total_amount) values
 ('C01', 'P02', NULL, 2, 9198),
   ('C02', 'P01', '05/28/2020':: Date, 1, 3299)