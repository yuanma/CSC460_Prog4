create table Customer (
	CustID 	number,
	Fname 	varchar2(30),
	Lname 	varchar2(30),
	primary key (CustID)
);

create table Contract (
	CustIdent			number,
	BuildNo 				number,
	ContractNo 			number,
	DeptName				varchar2(7),
	Progress				float(2),
	primary key(CustIdent, BuildNo)
);

create table Department (
	name			varchar2(10),
	ShipType		varchar2(14),
	primary key(name)
);

create table Build (
	BuildNum		number,
	PartNo		number,
	Installed	boolean,
	primary key(BuildNum, PartNo),
	foreign key(PartNo) references Part(PartNum)
);

create table Part (
	PartNum		number,
	Name			varchar2(30),
	Cost			number,
	primary key(PartNum)
);

insert into Customer values(0, 'dustin', 'janzen');

insert into Contract values(0, 0, 0, 'Sport', 0);

insert into Department values('Luxury', 	'Accord');
insert into Department values('Sport', 	'Integra Type-R');
insert into Department values('Economy',	'Fit');

insert into Part values('Luxury Hull',   1000000);
insert into Part values('Luxury Engine', 1000000);
insert into Part values('Luxury Wings',  1000000);

insert into Part values('Sport Hull', 	 2000000);
insert into Part values('Sport Engine', 2000000);
insert into Part values('Sport Wings',  2000000);

insert into Part values('Economy Hull', 	500000);
insert into Part values('Economy Engine', 500000);
insert into Part values('Economy Wings', 	500000);


insert into Part values('Fancy Atmosphere',   1000000);
insert into Part values('Superdrive', 1000000);
insert into Part values('Enhanced Jumpdrive',  1000000);

insert into Part values('SCSI Dice', 	 2000000);
insert into Part values('Party Bit', 2000000);
insert into Part values('Spurious Couples',  2000000);

insert into Part values('Gold Plating', 	500000);
insert into Part values('Extended Jump Range', 5000000);
insert into Part values('Planetside Assistance', 	500000);
insert into Part values('SatNav', 	500000);

	