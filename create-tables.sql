-- =============================================
-- Author:  Stacy Meichle
-- Description: Create tables for library database: Books, Category, Subcategory, Author, and AuthorISBN
-- =============================================


/* 
Create the Books table
*/ 
CREATE TABLE Books (
  ISBN VARCHAR(30) NOT NULL PRIMARY KEY,
  SubcategoryID VARCHAR(50) NOT NULL,
  Title VARCHAR(60),
  PublicationDate DATE
);

/* 
create the Category table
*/ 
CREATE TABLE Category (
  CategoryID VARCHAR(50) NOT NULL PRIMARY KEY,
  Name VARCHAR(50) NOT NULL
);

/* 
create the Subcategory table
*/ 
CREATE TABLE Subcategory (
  SubcategoryID INT NOT NULL PRIMARY KEY,
  CategoryID VARCHAR(50) NOT NULL,
  FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
  Name VARCHAR(50) NOT NULL
);

/* 
create the Author table
*/ 
CREATE TABLE Author (
  AuthorID INT NOT NULL PRIMARY KEY,
  FirstName VARCHAR(30),
  LastName VARCHAR(30)
);


/* 
create the AuthorISBN table
*/ 
CREATE TABLE AuthorISBN (
  AuthorID INT NOT NULL PRIMARY KEY,
  ISBN VARCHAR(30) NOT NULL,
  FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);
