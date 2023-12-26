commit;

select * from autotests_full
order by land asc, merk asc, model asc;

alter table autotests_full
add continent varchar(50);

update autotests_full
set continent = "Europa"
where land in ("Duitsland",
				"Frankrijk",
                "Italie",
                "Kroatie",
                "Nederland",
                "Roemenie",
				"Rusland",
                "Spanje",
                "Tsjechie",
                "VK",
                "Zweden");
                
update autotests_full
set continent = "Azie"
where land in ("China",
				"Japan",
                "Korea");
                
update autotests_full
set continent = "Noord-Amerika"
where land in ("VS");                
                
update autotests_full
set continent = "Overig"
where land not in ("Duitsland",
					"Frankrijk",
					"Italie",
                    "Kroatie",
					"Nederland",
					"Roemenie",
					"Rusland",
					"Spanje",
					"Tsjechie",
					"VK",
					"Zweden",
					"China",
					"Japan",
					"Korea",
                    "VS");