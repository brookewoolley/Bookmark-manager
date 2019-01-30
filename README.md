### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

### To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`
To view bookmarks, navigate to `localhost:3000/bookmarks`.


# User story 1

```
As a user,
I want to be able to look through a list of bookmarks
```

# User story 2

```
As a user,
So I can store a website link
I want to add the website to a bookmark manager
```

# Domain Model

![domain model](./public/images/bookmark_manager_1.png)
