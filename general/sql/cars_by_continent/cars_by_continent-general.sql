select * from autotests_full
order by continent asc, land asc, merk asc, model asc;

select merk, model, continent, land, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where continent = "Azie"
order by land asc, merk asc, model asc;

select merk, model, continent, land, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where continent = "Europa"
order by land asc, merk asc, model asc;

select merk, model, continent, land, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where continent = "Overig"
order by land asc, merk asc, model asc;