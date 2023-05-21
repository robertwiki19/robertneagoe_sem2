select * from geometries;
select * from geometries where name = 'Point';
select * from geometries where name = 'Linestring';
select ST_AsText(geom) from geometries;
select ST_Area(geom) from geometries;
select ST_Area(geom) from geometries where name in ('Polygon', 'PolygonWithHoles');
select ST_Length(geom) from geometries;
select ST_Length(geom) from geometries where name in ('Linestring', 'LINESTRING');
SELECT ST_Perimeter(geom) from geometries;
SELECT ST_Perimeter(geom) from geometries where name in ('Polygon', 'PolygonWithHoles');

select ST_Centroid(geom) as geom from geometries
UNION
select geom from geometries

select St_Y(ST_Centroid(geom)), St_X(ST_Centroid(geom)) from geometries;

select ST_Y(geom) as latitude, ST_X(geom) as longitude from geometries where name in ('Point','POINT');

select name, ST_Transform(geom,4326) as geom from geometries;