select * from judete;

create table romania_wgs_rn as
select county_id, county_code, region, mnemonic, ST_Transform(geom,4326) as geom from judete;

select * from romania_wgs_rn where 
ST_Touches((select geom from romania_wgs_rn where mnemonic='SB'),geom);

select mnemonic from romania_wgs where 
ST_Touches((select geom from romania_wgs where mnemonic='BV'),geom);

select mnemonic,MAX(ST_AREA(geom)) area, geom from romania_wgs where 
ST_Touches((select geom from romania_wgs where mnemonic='AB'),geom)
group by mnemonic, geom
order by area DESC limit 1;

select * from judete;

create table romania_wgs as 
select county_id, county_code, region,mnemonic, ST_Transform(geom,4326) as geom from judete;

--toate judetele vecine cu ....
select mnemonic,MAX(ST_AREA(geom)) area, geom from romania_wgs where 
ST_Touches((select geom from romania_wgs where mnemonic='SB'),geom)
group by mnemonic, geom;

--toate judetele care nu se invecineaza cu .....
select mnemonic,MAX(ST_AREA(geom)) area, geom from romania_wgs where 
ST_Touches((select geom from romania_wgs;
			
select mnemonic, ST_GeometryType(geom) as type, ST_NDims(geom) dimension, ST_SRID(geom) from judete;
			
select  county_id, county_code, region,mnemonic, ST_AsGeoJSON(geom) from judete;
select ST_AsGeoJSON(geom) from judete;
			
select ST_AsEWKT(geom) from judete;
			
select ST_AsKML(geom) from judete;