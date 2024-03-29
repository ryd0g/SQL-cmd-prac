/*
 * TODO: Create a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 * 
 * Note that album - song is a one-to-many relationship, so no bridge table is needed.
 */

CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    name VARCHAR(70) NOT NULL,
    album_id VARCHAR(70) NOT NULL
)

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

/* 
 * TODO: Insert at least 4 rows of data into the songs table. You can change up the albums as well. :)
 */

INSERT INTO Songs
    (name, album_id)
VALUES
    ('Money', 'The Dark Side of the Moon')
    ('Would?', 'Dirt')
    ('Sultans of Swing', 'Dire Straits')
    ('Riders on the Storm', 'LA Woman')
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('The Dark Side of the Moon', 'Pink Floyd', 1973),
    ('Abbey Road', 'The Beatles', 1969),
    ('Hotel California', 'Eagles', 1976),
    ('Born in the U.S.A.', 'Bruce Springsteen', 1984),
    ('California', 'Blink-182', 2016)
;

/* Required to get result in column format */
.headers on
.mode column


/* Queries */

-- SELECT * FROM Songs;

SELECT * FROM Albums;
SELECT * FROM Songs;

/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */

SELECT * FROM Songs
JOIN Albums
JOIN Albums ON Songs.name = Albums.name
WHERE Albums.name = 1;

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

SELECT year_published
FROM Albums
WHERE year_published BETWEEN 1970 AND 1980

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
 
 SELECT * FROM Songs
 JOIN Albums
 JOIN Albums ON Songs.name = Albums.year_published BETWEEN 1970 and 1980
 WHERE Albums.name = 1;

/*
 * TODO: Find all songs on albums with names containing 'California'.
 */

SELECT name 
FROM Songs
WHERE name LIKE %'California'%