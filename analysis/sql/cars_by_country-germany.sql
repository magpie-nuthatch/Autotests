select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by jaar desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by beoordeling desc, jaar desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by topsnelheid desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by acceleratie100 asc, topsnelheid desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by maxvermogen desc, maxkoppel desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by maxkoppel desc, maxvermogen desc, merk asc, model asc;

select merk, model, jaar, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling from autotests_full
where land = "Duitsland"
order by massaleeg desc, merk asc, model asc;