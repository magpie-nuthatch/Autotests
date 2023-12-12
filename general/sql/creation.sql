create database autotests;

create table autotests_full (
	auto_id int PRIMARY KEY auto_increment,
    merk varchar(50),
    model varchar(50),
    jaar int,
    land varchar(50),
	brandstof varchar(50),
    aandrijving varchar(50),
    topsnelheid int,
    acceleratie100 decimal(50, 1),
    maxvermogen decimal(50, 2),
    maxkoppel decimal(50, 2),
    massaleeg int,
    beoordeling decimal(50, 1)
);

alter table autotests_full
add constraint unique(model);

alter table autotests_full
add constraint check_topsnelheid check(topsnelheid > 100);

create view autotests_view as
select merk, model, jaar, land, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling
from autotests_full;

set autocommit = off;

commit;
