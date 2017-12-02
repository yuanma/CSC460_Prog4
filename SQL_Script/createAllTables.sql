/*  This sql script create all the relations for Program4.
 *
 *  Author: Yuanjun Ma
 */

CREATE TABLE Customer (
    custNo     VARCHAR2(6) NOT NULL,
    firstName  VARCHAR2(20) NOT NULL,
    lastName   VARCHAR2(20) NOT NULL,
    email      VARCHAR2(50),
    PRIMARY KEY (custNo)
);

CREATE TABLE Department (
    deptName        VARCHAR2(20) NOT NULL,
    Model           VARCHAR2(50) NOT NULL,
    basePrice       NUMBER,
    PRIMARY KEY (deptName)
);

CREATE TABLE Part (
    partNo      VARCHAR2(6) NOT NULL,
    partName    VARCHAR2(50) NOT NULL,
    price       NUMBER,
    PRIMARY KEY (partNo)
);

CREATE TABLE Contract (
    contrNo      VARCHAR2(8) NOT NULL,
    contrDate    DATE NOT NULL,
    custNo       VARCHAR2(6) NOT NULL,
    PRIMARY KEY (contrNo),
    FOREIGN KEY (custNo) REFERENCES Customer(custNo)
);

CREATE TABLE Order (
    orderNo         VARCHAR2(8) NOT NULL,
    contrNo         VARCHAR2(6) NOT NULL,
    deptName        VARCHAR2(20) NOT NULL,
    orderStatus     VARCHAR2(2),
    PRIMARY KEY (orderNo),
    FOREIGN KEY (contrNo) REFERENCES Contract(contrNo),
    FOREIGN KEY (deptName) REFERENCES Department(deptName),
);

CREATE TABLE Build (
    orderNo     VARCHAR2(8) NOT NULL,
    partNo      VARCHAR2(6) NOT NULL,
    install     VARCHAR2(1),
    PRIMARY KEY (orderNo, partNo),
    FOREIGN KEY (orderNo) REFERENCES Order(orderNo),
    FOREIGN KEY (partNo) REFERENCES part(partNo),
);
