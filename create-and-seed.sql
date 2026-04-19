-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================
DROP DATABASE IF EXISTS books_db;
CREATE DATABASE books_db;
/c books_db


-- ============================================================
-- Step 2: Create the table
-- ============================================================
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE,
    author TEXT NOT NULL,
    genre TEXT NOT NULL, 
    price NUMERIC NOT NULL,
    pages INT NOT NULL,
    ISBN_number INT UNIQUE,
    available BOOLEAN DEFAULT TRUE
);


-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================
---------+------------------------+-----------------------+-------+-------+----------

INSERT INTO books (name, author, genre, price, pages) VALUES 
    ('The Giving Tree', 'Shel Silverstein', 'Picture Book', 9.99, 64),
    ('Green Eggs and Ham', 'Dr.Seuss', 'Picture Book', 9.99, 20),
    ('The Lorax', 'Dr.Seuss', 'Picture Book', 9.99, 64),
    ('The Great Gatspy', 'F. Scott Fitzgerald', 'Literary Fiction', 14.99, 218),
    ('To Kill a Mocking Bird', 'Harper Lee', 'Southern Gothic', 14.99, 281),
    ('1984', 'George Orwell','Dystopian', 14.99, 328),
    ('One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magical Realism', 19.99, 448),
    ('The Stranger', 'Albert Camus', 'Philosophical Fiction',  19.99, 144);

