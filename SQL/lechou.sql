create database lechou;

use lechou;

create table lechou_user
(
pk_user int primary key auto_increment,
username varchar(20),
userpassword varchar(40),
sex varchar(2),
tel varchar(20),
email varchar(50),
iconurl varchar(50),
resume varchar(200),
modifier varchar(20),
modifytime datetime,
register varchar(20),
registetime datetime,
firstlogintime datetime,
lastlogintime datetime,
isadmin int
);
DORP TABLE LECHOU_USER;
delete  from  lechou_user;
DELETE FROM TABLE LECHOU_USER;
delete from  lechou_user where pk_user=31
update lehchou_user a set a.userpassword= 'c4ca4238a0b923820dcc509a6f75849b'
select * from lechou_user  where 1=1  and lechou_user.username like '%qinfeng%' and lechou_user.sex = '��' and (lechou_user.email like '%15369356153%'or lechou_user.tel like '%15369356153%') and lechou_user.isadmin = 1 order by registetime descselect * from lechou_user u where u.sex='��' or u.email  like '%1074%'
insert into lechou_user values(null,'admin','c4ca4238a0b923820dcc509a6f75849b','Ů','15369356152','1074195454@qq.com',null,null,'qinxt2',now(),'qinxt2',now(),now(),now(),1);
select * from lechou_project  where 1=1  and lechou_project.title like '%����%' order by publishtime desc limit 0,3
create table lechou_shipping_address
(
pk_shipping_address int primary key auto_increment,
pk_user int,
receiver varchar(20),
tel varchar(20),
address varchar(50),
postcode varchar(10),
publishtime datetime,
modifier varchar(20),
modifytime datetime
);
select * from lechou_shipping_address
insert into lechou_shipping_address values(null,1,'��С��','15369356152','�Ĵ�ʡ�����ж�·23�Ŵ��',635000,now(),'qinfeng',now());

create table lechou_order
(
pk_order int primary key auto_increment,
pk_project int,
pk_user int,
amount int,
totalsum int,
ispay int,
payway varchar(10),
isshiping int,
ordertype varchar(10),
publishtime datetime,
modifier varchar(20),
modifytime datetime
);

select totalsum from lechou_order124 143
insert into lechou_order values(null,92,1,12,1000,0,'֧����',0,'ֱ�ӹ���',now(),'qinxt1',now());
select * from lechou_order  where 1=1  and lechou_order.ispay =0 and lechou_order.pk_project in (select lechou_project.pk_project from lechou_project where  lechou_project.title like '%����%') and lechou_order.pk_user in (select lechou_user.pk_user from lechou_user where  lechou_user.username like '%qin%') order by publishtime desc 
select a.*,b.*,c.* from lechou_order a inner join lechou_project b inner join lechou_user c  where a.pk_project=b.pk_project and a.pk_user=c.pk_user and b.title like '%����%' and c.username like '%qin%'
select * from lechou_project where 1=1  and status = '������ʼ'or status = '�ڳ���' or status = '��������' or status = '�ѳɹ�'  order by publishtime desc limit 0,3
select * from lechou_project where 1=1  and  status in ('������ʼ','�ڳ���','��������' ,'�ѳɹ�' ) order by publishtime desc limit 0,3
select count(*) from lechou_project where 1=1  and status = '������ʼ' or status = '��������' or status = '�ѳɹ�' 
select * from lechou_project  where 1=1  and lechou_project.catagoryid = 2 and status in ('������ʼ','�ڳ���','��������' ,'�ѳɹ�' ) order by publishtime

create table lechou_project
(
pk_project int primary key auto_increment,
title varchar(50),
selectableprice1 int,
selectableprice2 int,
selectableprice3 int,
finalprice int,
investreward varchar(50),
description varchar(200),
detaildescription varchar(1000),
titleimageurl varchar(50),
descriptionimages varchar(200),
movieurl varchar(50),
initiatorid int,
catagoryid int,
projectaddress varchar(50),
status varchar(50),
fundamount int,          
funddate int,
fundstarttime datetime,
fundendtime datetime,
approvestarttime datetime,
approveendtime datetime,
focuscount int,
issuccesse int,
successetime datetime,
successedchoose int,
publishtime datetime,
modifier varchar(20),
modifytime datetime
);
drop table lechou_project;
update lechou_project h set h.approvestarttime ='2015-06-21 09:33:10.0'

insert into lechou_project values(null,'��ý��΢��Ӱ??��ɫҹ��',100,150,200,150,'1.��һʱ����ӰƬ�ĸ���������� 2.ӰƬ���ߺ󣬻���빫ӳ�汾��ͬ��δɾ����','Yomotion ң�����յ������ֻ������ž��ü��ķ�ˮ�������������������Ǳ뺷������������һ̨����Ʒ��',
'��λС����ǣ���Һã�������һ��70��ĸ߿Ƽ��з��Ŷӣ������Ȱ������봴����ϲ�����У�������ʽ�Ƴ���������ֻ�Yomotion ң�����յ������ֻ�������Ʒ�����ִ��߿Ƽ����ײ��ϣ��������˸߿Ƽ������������ɣ�����һ������׷��ʱ�е�����ǰһ����˵����Щ�������𣿸Ͽ����������ǵ��ڳ�ɡ�','01045110e341a7a88dea3d8c8b772914.jpg',
'54046b8d26116243a1cce83ad581c77f.jpg&d51bfaa30cff45df1b2a618ce0c21e08.jpg&8eb4d4cf5d8dd2cf89fcba88938f595c.jpg&',
'd08548be69352241629d7e0e79e03afb.flv',4,4,'����������','�ѳɹ�',10000,30,'2015-05-20 09:33:10.0',null,'2015-05-20 09:33:10.0','2015-05-22 09:33:10.0',0 ,0,null,0,now(),'qinxt',now());


select * from lechou_project  where 1=1 and  lechou_project.status ='δ����' order by publishtime desc limit 0,3
select * from lechou_project  order by publishtime desc limit 0,6
delete  from  lechou_project where pk_project=3;
create table lechou_project_approvelist(
pk_project_approvelist int primary key auto_increment,
pk_project int,
pk_user int,
approveresult int,
publishtime datetime,
modifier varchar(20),
modifytime datetime
);
select * from lechou_project_approvelist
update lechou_project_approvelist h set h.approveresult = 1
select  pk_project,count(pk_project)  from  lechou_project_approvelist  group by pk_project order by  count(pk_project) desc limit 0,3
select a.pk_project from  lechou_project_approvelist a ,(select  pk_project,count(pk_project) ordera from table lechou_project_approvelist 
group by pk_project)b where a.pk_project=b.ordera by b.a desc
select * from (select pk_project,count(pk_project) as total from lechou_project_approvelist group by pk_project )lechou_project_approvelist order by total
insert into lechou_project_approvelist values(null,12,1,4,now(),'qinfeng',now());
select * from lechou_project_approvelist
create table lechou_project_comment(
pk_project_comment int primary key auto_increment,
pk_project int,
pk_user int,
commentcontent varchar(200),
publishtime datetime,
modifier varchar(20),
modifytime datetime
);
insert into lechou_project_comment values(null,106,1,'��������',now(),'qinfeng',now());
select * from lechou_project_comment
create table lechou_project_latestnews(
pk_project_latestnews int primary key auto_increment,
pk_project int,
content varchar(100),
imagesurl varchar(50),
moviesurl varchar(50),
publishtime datetime,
modifier varchar(20),
modifytime datetime
);
insert into lechou_project_latestnews values(null,98,'���ǽ���2015��12��1��ǰ��½�������������ڴ�',null,null,now(),'qinfeng',now());
���ǵ���Ŀ���Ͼ�Ҫ�ɹ��ˣ���Ҽ��Ͷ�
select * from lechou_project_latestnews
create table lechou_project_catagory(
catagoryid int primary key auto_increment,
catagoryname varchar(20),
descr varchar(20),
publishtime datetime,
modifier varchar(20),
modifytime datetime
);

insert into lechou_project_catagory values(null,'�Ƽ�','�Ƽ�����������',now(),now(),now());
insert into lechou_project_catagory values(null,'����','����֮������̾Ϊ��ֹ',now(),now(),now());
select * from lechou_project_catagory
delete  from lechou_project
select * from lechou_project  order by publishtime desc limit 0,3
show tables in lechou
desc lechou_project;
drop database lechou; 
drop table lechou_user;
insert into lechou_user values(null,'qinfeng1','1','��','1074195454@qq.com','15369356152','�Ĵ�ʡ�����Թ�����Ҵ�����',null,'liuqinsong','������ҵ��',null,0,null,'qinfeng',now(),'qinfeng',now(),now(),now(),default,null);
select * from lechou_project;
select * from lechou_user where pk_user=10;
delete from lechou_user where pk_user =10
select count(*) from lechou_user where user_name='qinfeng' and user_password='1'