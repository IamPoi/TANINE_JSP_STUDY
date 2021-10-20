CREATE TABLE board(
	num number(10) not null,
	id varchar2(10) not null, 
	name varchar2(10) not null,
	subject varchar2(100) not null, 
	content varchar2(1000) not null,
	PRIMARY KEY (num)
)

- 1¾¿ ´Ã¾î³ª´Â ½ÃÄö½º -
CREATE SEQUENCE num_increment START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

insert into board values(num_increment.NEXTVAL,'test','test','test','test');