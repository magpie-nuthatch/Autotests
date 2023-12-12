commit;

select * from autotests
where topsnelheid is not null
and maxvermogen is not null
order by topsnelheid desc, maxvermogen desc;

select * from autotests
where maxvermogen is not null
and maxkoppel is not null
order by maxvermogen desc, maxkoppel desc;

select * from autotests
where maxkoppel is not null
and massaleeg is not null
order by maxkoppel desc, massaleeg asc;

select * from autotests
where massaleeg is not null
and topsnelheid is not null
order by massaleeg asc, topsnelheid desc;

select * from autotests
where beoordeling is not null
order by beoordeling desc;

select * from autotests
where acceleratie100 is not null
and topsnelheid is not null
order by acceleratie100 asc, topsnelheid desc;

-- final test analysis
select concat(merk, " ", model) as auto, jaar, land, brandstof, maxvermogen, massaleeg, beoordeling from autotests
where maxvermogen is not null
and massaleeg is not null
and beoordeling is not null
order by beoordeling desc, maxvermogen desc, massaleeg asc;