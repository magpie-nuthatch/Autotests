-- 12/2022
insert into autotests_full
	(merk, model, jaar, land, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling)
values 
    ("Kia", "Niro EV", 2022, "Korea", "elektrisch", "F", 167, 7.8, 160, 254, 1653, 3.5),
    ("Xpeng", "P5", 2022, "China", "elektrisch", "F", 175, 7.5, 155, 310, 1790, 3),
    ("BMW", "iX M60", 2022, "Duitsland", "elektrisch", null, 250, 3.8, 455, 1100, 2584, 3.5),
    ("Citroen", "C5 X Plug-In Hybrid 225 e-EAT 8 Business Plus", 2022, "Frankrijk", "hybride", "F", 225, 8.9, 165, 360, 1697, null),
    ("Volkswagen", "Arteon Shooting Brake e-Hybrid R-Line Business+", 2022, "Duitsland", "hybride", "F", 222, 7.8, 160, 400, 1709, null),
    ("Max", "Roadster", 1990, "Nederland", "benzine", "F", 190, 9, 61.5, 115, 772, null),
    ("Mega", "Tjaffer", 1994, "Frankrijk", "benzine", "F", 140, 15.4, 44.1, 87.5, 655, null),
    ("Triumph", "Herald 1200", 1962, "VK", "benzine", "R", 132, 27.2, 31.63, 82.5, 810, null),
    ("BMW", "220iA Active Tourer", 2022, "Duitsland", "benzine", "F", 221, 7.9, 125, 280, 1495, 3.5),
    ("Mercedes-Benz", "B 200 Business Line", 2022, "Duitsland", "benzine", "F", 223, 8.2, 120, 250, 1310, 4),
    ("Caterham", "7 VX 1600", 1998, "VK", "benzine", "R", 177, 7, 74, 145, 525, null),
    ("Lada", "2105 1.3", 1981, "Rusland", "benzine", "R", 148, 18, 47.81, 96, 970, null);

select * from autotests_full;

-- 16/2022
insert into autotests_full
	(merk, model, jaar, land, brandstof, aandrijving, topsnelheid, acceleratie100, maxvermogen, maxkoppel, massaleeg, beoordeling)
values 
    ("Lotus", "Emira V6", 2022, "VK", "benzine", "R", 290, 4.3, 298, 420, 1405, 4),
    ("Weltmeister", "W5", 2023, "China", "elektrisch", "F", 160, 8.3, 160, 315, null, 3),
    ("Mercedes-Benz", "EQS 53 AMG", 2022, "Duitsland", "elektrisch", null, 250, 3.4, 560.45, 1020, 2555, 3.5),
    ("Alpine", "A110 GT", 2022, "Frankrijk", "benzine", null, 250, 4.2, 221, 340, 1119, 4,5),
    ("Mercedes-Benz", "EQXX Vision", 2022, "Duitsland", "elektrisch", "R", 140, null, 180.2, null, 1755, null),
    ("Mercedes-Benz", "280 SL", 1980, "Duitsland", "benzine", "R", 207, 9, 136.07, 238, 1560, null),
    ("Nissan", "2400 Custom de Luxe", 1972, "Japan", "benzine", "R", 165, 11.2, 95.61, 196, 1320, null),
    ("Opel", "Astra 1.6 Turbo Hybrid GS Line", 2022, "Duitsland", "hybride", "F", 225, 7.9, 132.39, 360, 1578, 3),
    ("Seat", "Leon 1.4 TSI e-Hybrid Fr Business Intense", 2022, "Spanje", "hybride", "F", 220, 7.7, 150.04, 350, 1514, 4),
    ("Lotus", "Evora 3.5 S 2+2 IPS", 2012, "VK", "benzine", "R", 286, 4.6, 258, 400, 1407, null),
    ("Volkswagen", "Passat W8", 2003, "Duitsland", "benzine", "4", 250, 7.8, 202.26, 370, 1691, null);

select * from autotests_full;