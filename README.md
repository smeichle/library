__Library Database__

---


## Tables

Table 'Books'
| Column | Description |
| ------ | ----------- |
| ISBN   | Unique identification number of the book (VARCHAR). The table’s primary key. |
| SubcategoryID | Subcategory identifier of the book (INT).  |
| Title    | Title of the book (VARCHAR) |
| PublicationDate    | Date of publication (DATE)|


Table 'Category'
| Column | Description |
| ------ | ----------- |
| CategoryID   | Category identification number (INT). |
| Name | Category name (VARCHAR) |


Table 'Subcategory'
| Column | Description |
| ------ | ----------- |
| SubcategoryID   | Subcategory identifier of the book (INT). |
| CategoryID | Category identification number (INT) for associated category. |
| Name    | Subcategory name (VARCHAR) |

Table 'Author'
| Column | Description |
| ------ | ----------- |
| AuthorID   | Author’s ID number in the database, the identity column. This ID is the primary key. (INT) |
| FirstName | Authors first name (VARCHAR) |
| LastName    | Authors last name (VARCHAR) |

Table 'AuthorISBN'
| Column | Description |
| ------ | ----------- |
| AuthorID   | Author's ID Number- Foreign Key to the Author table. |
| ISBN | The unique identifier for a book.  |
