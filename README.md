As a User
So that I can access my favourite sites
I would like to see a list of bookmarks.

As a User
so that I can save a new site
I would like to be able to add a new bookmark

As a User
so that I can remove bookmarks I no longer want
I would like to be able to delete bookmarks

As a User
so that I can update my list of bookmarks
I would like to be able to update my list of bookmarks

As a User
so that I can add notes to my book bookmarks
I would like to be able to comment on each of my bookmarks

As a User
so that I can selectively see specific bookmarks
I would like to be able to add tags to my bookmarks

As a User
so that I can selectively see specific bookmarks
I would like to be able to filter through the tags of my bookmarks


### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
CREATE DATABASE bookmark_manager;
```
To create the database for the test environment
```
CREATE DATABASE "bookmark_manager_test";
```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
