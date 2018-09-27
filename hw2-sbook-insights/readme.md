# CSCI 585 Database Systems

## Homework 2 - SBook insights

A database for a social networking application consists of the following tables:
- USERS (`USER_ID`, NAME, GENDER, DATE_OF_BIRTH).
- FRIENDSHIPS (`USER_ID`, `FRIEND_ID`).
- POSTS (`POST_ID`, USER_ID, TEXT).
- COMMENTS (`COMMENT_ID`, POST_ID, COMMENTER _USER_ID, TEXT).

The primary key for each table is bolded. The USER_ID and FRIEND_ID of the Friendships table are foreign
keys referencing the Users table. The same applies for the USER_ID of the Posts table. The POST_ID and
COMMENTER _USER_ID columns of the COMMENTS table are foreign keys referencing the POSTS and
USERS tables, respectively. Everyone can make a comment on any post. Friendship relationships are symmetric. If user 1 is a friend of user 2, user 2 is a friend of user 1 as
well.

### Notes:
- The GENDER column of the USERS is represented as ‘F’ for female users and ‘M’ for male users.
- The format for the DATE_OF_BIRTH column is ‘YYYY-MM-DD’.
- We haven't provided any tables of data. You are responsible to make your own with the schema given above and do the query tests on them. We will have our own tables to test your queries.
- Assume the corresponding data for every query exists and that it must return some records.
- Don't use views. They are not allowed in this assignment.
- Temporary tables, dummy tables, ... are not allowed. All the questions should be answered in one query (with as many subqueries as you need) for that question.
- For loops are not allowed either.

### Instructions:
- For each query provide the SQL query and an explanation of why the query works the way it does. Make any assumptions that are not conflicting. Only use the mentioned attributes (we will make queries only with the exact given names of tables and attributes. Also they should be all CAPITAL letters).

### Files
- ANUJ_DOIPHODE_HW2.pdf - Insights from Sbook database.