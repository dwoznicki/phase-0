1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states
   ORDER BY population DESC;
5. SELECT state_name FROM states
   WHERE regiod_id=7;
6. SELECT state_name, population_density FROM states
   WHERE population_density>50
   ORDER BY population_density ASC;
7. SELECT state_name FROM states
   WHERE population BETWEEN 1000000 AND 1500000;
8. SELECT state_name, region_id FROM states
   ORDER BY region_id ASC;
9. SELECT region_name FROM regions
   WHERE region_name LIKE "%central%";
10. SELECT region_name, state_name FROM regions
    JOIN states ON regions.id=states.region_id
    ORDER BY region_id ASC;

Outfit schema
![screenshot](/outfit_schema.png "Outfit Schema")

=====Reflection=====
###What are databases for?

  Databases are files that store lists of information. Databases make it
  easy to view data in an easy to understand way by allowing you to print,
  concatenate, and sort data.

###What is a one-to-many relationship?

  The one-to-many relationship states that if "A" belongs to category "B",
  and category "B" contains many objects of the same type as "A", then "A"
  is in a one-to-many relationship with "B". For example, "apples" are in a
  one-to-many relationship with "fruit" because there are many types of
  "fruit", with "apples" being one type.

###What is a primary key? What is a foreign key? How can you determine which is which?

  A primary key is a field in a database that is unique for each individual
  row. It can be anything (employee ID number, birth date, etc.), and can be
  shifted around based on necessity. A foreign key is a key that points to
  the (usually) primary key in another table. This is important for joining
  information from two tables so SQL knows what to reference when listing the
  data. While a primary key *must* be unique, a foreign key often won't be.
  This uniqueness is the way to tell which key is primary and which is
  foreign.

###How can you select information out of a SQL database? What are some general guidelines for that?

  You can select information out of a database using the command `SELECT
  column_name(s) FROM table_name;`. There are lots of ways to organize, sort,
  and concatenate the information, but this is the basic command. While SQL
  doesn't enforce capitalization, it's considered best practice to write
  commands in all caps and column/table names in lower case.