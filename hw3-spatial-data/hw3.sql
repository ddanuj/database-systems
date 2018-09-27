CREATE TABLE UniversityPark
(
    placename VARCHAR(1000),
    location GEOMETRY
);

INSERT INTO UniversityPark
VALUES
    ('Home', ST_GeomFromText('POINT(-118.283059 34.029882)')),
    ('28th-university', ST_GeomFromText('POINT(-118.281133 34.027684)')),
    ('32nd-university', ST_GeomFromText('POINT(-118.283086 34.024709)')),
    ('Leavy', ST_GeomFromText('POINT(-118.282977 34.021694)')),
    ('Tommy Trojan', ST_GeomFromText('POINT(-118.285439 34.020494)')),
    ('Aquatic Center', ST_GeomFromText('POINT(-118.288408 34.024028)')),
    ('USC Village', ST_GeomFromText('POINT(-118.285381 34.025416)')),
    ('Fire Station', ST_GeomFromText('POINT(-118.284017 34.026849)')),
    ('Study Hall', ST_GeomFromText('POINT(-118.284291 34.028570)'));

CREATE TABLE UPConvexHull AS
(SELECT ST_CONVEXHULL(ST_MULTI(ST_COLLECT(location))) Hull
FROM UniversityPark);

SELECT ST_ASTEXT(Hull) Hull
FROM UPConvexHull;

SELECT up2.placename, ST_ASTEXT(up1.location) AS Home, ST_ASTEXT(up2.location) AS NeighborLoc
FROM UniversityPark up1, UniversityPark up2
WHERE up1.placename='Home' AND up2.placename <> 'Home'
ORDER BY ST_DISTANCE(up1.location, up2.location) ASC
LIMIT 3;
