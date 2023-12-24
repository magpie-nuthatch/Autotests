select * from autotests_full
order by brandstof asc, auto_id asc;

select merk, model, jaar, land, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where brandstof = "benzine"
order by beoordeling desc, merk asc, model asc;

select merk, model, jaar, land, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where brandstof = "elektrisch"
order by beoordeling desc, merk asc, model asc;

select merk, model, jaar, land, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where brandstof = "hybride"
order by beoordeling desc, merk asc, model asc;

select merk, model, jaar, land, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where brandstof = "alternatief"
order by beoordeling desc, merk asc, model asc;