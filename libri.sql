.header on 
.mode column 

Drop table if exists autore;

create table autore
(
    id integer primary key,
    cognome text not null,
    nome text,
    nascita date,
    morte date,
    sesso integer (1)
);

Insert into autore (cognome, nome, nascita, sesso) values ("D'Annunuzio", "Gabriele", date("1863-03-12"),1);
Insert into autore (cognome) values ("Verga");

Select * from autore;

Drop table if exists libri;

create table libri
(
    id integer primary key,
    titolo text not null,
    id_autore integer 
);

Insert into libri (titolo) values ("il piacere");
insert into libri (titolo,id_autore) values ("il fuoco", 1);
Insert into libri (titolo,id_autore) values ("Ciclo vinti", 2);

Select * from libri;
