--POINTS
--POINT(lat,long)
select point(45,25;

--LINESTRING
-- linestring(lat long, lat long, lat long, lat long)
select linestring(20 40, 25 45, 26 46, 27 47);
 
--POLYGON(lat long, lat long, lat long, lat long)
select polygon(20 40, 25 45, 26 46, 27 47, 20 40);

--polygon with holes
--polygon(polygon1, holes)
--select polygon((20 40, 25 45, 26 46, 27 47, 20 40),(hole1), (hole2))
select polygon((20 40, 25 45, 26 46, 27 47, 20 40))

--geometry collection
--geometrycollection((geom1),(geom2),(geom3))
select geometrycollection(Point(45,84), linestring(45 79,24 79), polygon(20 40, 25 45, 26 46, 27 47, 20 40))

create table geometries
(
	fid serial primary key,
	name varchar(30) null,
	geom geometry
);

INSERT INTO geometries(name, geom) VALUES
  ('Point', 'POINT(0 0)'),
  ('Linestring', 'LINESTRING(0 0, 1 1, 2 1, 2 2)'),
  ('Polygon', 'POLYGON((0 0, 1 0, 1 1, 0 1, 0 0))'),
  ('PolygonWithHole', 'POLYGON((0 0, 10 0, 10 10, 0 10, 0 0),(1 1, 1 2, 2 2, 2 1, 1 1))'),
  ('Collection', 'GEOMETRYCOLLECTION(POINT(2 0),POLYGON((0 0, 1 0, 1 1, 0 1, 0 0)))');
			 
update geometries set geom = ST_SetSRID(geom, 4326)		 
