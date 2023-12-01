-- Die VereinsDB für die Befüllung mit Daten auswählen
USE VEREIN_DATABASE;

-- Tabelle FUNKTION befüllen
INSERT INTO FUNKTION (
    FUNKID,
    BEZEICHNER
) VALUES (
    1,
    'Praesidium'
);

--
INSERT INTO FUNKTION (
    FUNKID,
    BEZEICHNER
) VALUES (
    2,
    'Vizepraesidium'
);

--
INSERT INTO FUNKTION (
    FUNKID,
    BEZEICHNER
) VALUES (
    3,
    'Kasse'
);

--
INSERT INTO FUNKTION (
    FUNKID,
    BEZEICHNER
) VALUES (
    4,
    'Beisitz'
);

--
INSERT INTO FUNKTION (
    FUNKID,
    BEZEICHNER
) VALUES (
    5,
    'PR'
);

-- Tabelle SPONSOR befüllen
INSERT INTO SPONSOR (
    SPONID,
    NAME,
    STRASSE_NR,
    PLZ,
    ORT,
    SPENDENTOTAL
) VALUES (
    1,
    'Hasler AG',
    'Zelgweg 9',
    '2540',
    'Grenchen',
    1270
);

--
INSERT INTO SPONSOR (
    SPONID,
    NAME,
    STRASSE_NR,
    PLZ,
    ORT,
    SPENDENTOTAL
) VALUES (
    2,
    'Pauker Druck',
    'Solothurnstr. 19',
    '2544',
    'Bettlach',
    2750
);

--
INSERT INTO SPONSOR (
    SPONID,
    NAME,
    STRASSE_NR,
    PLZ,
    ORT,
    SPENDENTOTAL
) VALUES (
    3,
    'Meyer Toni',
    'Rothstr. 22',
    '4500',
    'Solothurn',
    750
);

-- Tabelle STATUS befüllen
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    1,
    'Junior',
    0
);

--
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    2,
    'Aktiv',
    50
);

--
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    3,
    'Ehemalig',
    NULL
);

--
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    4,
    'Passiv',
    30
);

--
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    5,
    'Helfer',
    NULL
);

--
INSERT INTO STATUS (
    STATID,
    BEZEICHNER,
    BEITRAG
) VALUES (
    6,
    'Extern',
    NULL
);

-- Tabelle PERSON befüllen
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    1,
    3,
    'Niiranen',
    'Ulla',
    'Nordstr. 113',
    '2500',
    'Biel',
    '1',
    NULL,
    STR_TO_DATE('11-11-2007', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2011', '%d-%m-%Y'),
    NULL
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    2,
    3,
    'Wendel',
    'Otto',
    'Sigriststr. 9',
    '4500',
    'Solothurn',
    '1',
    NULL,
    STR_TO_DATE('01-01-2011', '%d-%m-%Y'),
    STR_TO_DATE('30-11-2014', '%d-%m-%Y'),
    NULL
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    3,
    2,
    'Meyer',
    'Dominik',
    'Rainstr. 13',
    '4528',
    'Zuchwil',
    '1',
    NULL,
    STR_TO_DATE('01-01-2011', '%d-%m-%Y'),
    NULL,
    NULL
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    4,
    2,
    'Meyer',
    'Petra',
    'Rainstr. 13',
    '4528',
    'Zuchwil',
    '1',
    NULL,
    STR_TO_DATE('15-02-2009', '%d-%m-%Y'),
    NULL,
    NULL
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    5,
    2,
    'Tamburino',
    'Mario',
    'Solothurnstr. 96',
    '2540',
    'Grenchen',
    '0',
    NULL,
    STR_TO_DATE('30-09-2014', '%d-%m-%Y'),
    NULL,
    4
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    6,
    2,
    'Bregger',
    'Beni',
    'Sportstr. 2',
    '2540',
    'Grenchen',
    '1',
    NULL,
    STR_TO_DATE('21-05-2012', '%d-%m-%Y'),
    NULL,
    4
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    7,
    5,
    'Luder',
    'Kevin',
    'Forstweg 14',
    '2545',
    'Zuchwil',
    '1',
    'Klaushock',
    NULL,
    NULL,
    NULL
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    8,
    2,
    'Marti',
    'Rolf',
    'Grenzstr. 32',
    '2540',
    'Grenchen',
    '1',
    'Spezialgebiet Finanzen',
    STR_TO_DATE('12-03-2016', '%d-%m-%Y'),
    NULL,
    3
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    9,
    2,
    'Moser',
    'Stefan',
    'Hauptstr. 7',
    '2544',
    'Bettlach',
    '1',
    'Erfahrenes Vorstandsmitglied',
    STR_TO_DATE('01-01-2016', '%d-%m-%Y'),
    NULL,
    1
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    10,
    2,
    'Schmidt',
    'Karin',
    'Finkenweg 8',
    '2540',
    'Grenchen',
    '0',
    NULL,
    STR_TO_DATE('15-08-2019', '%d-%m-%Y'),
    NULL,
    8
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    11,
    1,
    'Bart',
    'Sabine',
    'Bernstr. 15',
    '2540',
    'Grenchen',
    '1',
    NULL,
    STR_TO_DATE('12-07-2014', '%d-%m-%Y'),
    NULL,
    10
);

--
INSERT INTO PERSON (
    PERSID,
    STATID,
    NAME,
    VORNAME,
    STRASSE_NR,
    PLZ,
    ORT,
    BEZAHLT,
    BEMERKUNGEN,
    EINTRITT,
    AUSTRITT,
    MENTORID
) VALUES (
    12,
    2,
    'Gruber',
    'Romy',
    'Gladbaechli 3',
    '2545',
    'Selzach',
    '0',
    NULL,
    STR_TO_DATE('29-11-2009', '%d-%m-%Y'),
    NULL,
    NULL
);

-- Tabelle ANLASS befüllen
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    1,
    'GV',
    'Solothurn',
    STR_TO_DATE('31-03-2013', '%d-%m-%Y'),
    200,
    2
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    2,
    'Vorstandssitzung',
    'Grenchen',
    STR_TO_DATE('17-01-2014', '%d-%m-%Y'),
    NULL,
    12
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    3,
    'GV',
    'Bettlach',
    STR_TO_DATE('30-03-2013', '%d-%m-%Y'),
    200,
    6
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    4,
    'Klaushock',
    'Bettlach',
    STR_TO_DATE('06-12-2014', '%d-%m-%Y'),
    150,
    7
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    5,
    'Vorstandssitzung',
    'Grenchen',
    STR_TO_DATE('21-01-2015', '%d-%m-%Y'),
    NULL,
    12
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    6,
    'Turnier',
    'Biel',
    STR_TO_DATE('28-02-2014', '%d-%m-%Y'),
    1020,
    10
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    7,
    'GV',
    'Grenchenberg',
    STR_TO_DATE('29-03-2015', '%d-%m-%Y'),
    250,
    4
);

--
INSERT INTO ANLASS (
    ANLAID,
    BEZEICHNER,
    ORT,
    DATUM,
    KOSTEN,
    ORGID
) VALUES (
    8,
    'Vorstandssitzung',
    'Grenchen',
    STR_TO_DATE('19-01-2015', '%d-%m-%Y'),
    NULL,
    6
);

-- Tabelle SPENDE befüllen
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    1,
    5,
    6,
    'Apéro',
    STR_TO_DATE('02-02-2015', '%d-%m-%Y'),
    720
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    1,
    6,
    NULL,
    'Defizittilgung',
    STR_TO_DATE('13-04-2015', '%d-%m-%Y'),
    550
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    2,
    3,
    7,
    'Getraenke',
    STR_TO_DATE('05-03-2015', '%d-%m-%Y'),
    600
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    2,
    4,
    6,
    'Plakate',
    STR_TO_DATE('11-03-2015', '%d-%m-%Y'),
    300
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    2,
    5,
    NULL,
    'Defizittilgung',
    STR_TO_DATE('13-04-2015', '%d-%m-%Y'),
    750
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    3,
    1,
    4,
    'Gluehwein',
    STR_TO_DATE('29-11-2014', '%d-%m-%Y'),
    200
);

--
INSERT INTO SPENDE (
    SPONID,
    SPENID,
    ANLAID,
    BEZEICHNER,
    DATUM,
    BETRAG
) VALUES (
    3,
    2,
    7,
    'Unterhaltungsmusik',
    STR_TO_DATE('23-02-2015', '%d-%m-%Y'),
    550
);

-- Tabelle: TEILNEHMER
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    3,
    1
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    4,
    1
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    6,
    1
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    12,
    1
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    2,
    2
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    3,
    2
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    4,
    2
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    2,
    3
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    4,
    3
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    6,
    3
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    12,
    3
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    3,
    5
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    12,
    5
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    2,
    7
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    3,
    7
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    6,
    7
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    4,
    8
);

--
INSERT INTO TEILNEHMER (
    PERSID,
    ANLAID
) VALUES (
    12,
    8
);

-- Tabelle SPONSORENKONTAKT befüllen
INSERT INTO SPONSORENKONTAKT (
    PERSID,
    SPONID
) VALUES (
    8,
    1
);

--
INSERT INTO SPONSORENKONTAKT (
    PERSID,
    SPONID
) VALUES (
    4,
    2
);

--
INSERT INTO SPONSORENKONTAKT (
    PERSID,
    SPONID
) VALUES (
    9,
    2
);

--
INSERT INTO SPONSORENKONTAKT (
    PERSID,
    SPONID
) VALUES (
    3,
    3
);

--
INSERT INTO SPONSORENKONTAKT (
    PERSID,
    SPONID
) VALUES (
    4,
    3
);

-- Tabelle FUNKTIONSBESETZUNG befüllen
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    1,
    1,
    STR_TO_DATE('11-11-2007', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2010', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    4,
    2,
    STR_TO_DATE('01-04-2009', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2011', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    12,
    1,
    STR_TO_DATE('01-04-2010', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2011', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    4,
    1,
    STR_TO_DATE('01-04-2011', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2013', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    12,
    2,
    STR_TO_DATE('01-04-2011', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2012', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    2,
    3,
    STR_TO_DATE('01-04-2011', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2013', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    3,
    2,
    STR_TO_DATE('01-04-2012', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2013', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    12,
    1,
    STR_TO_DATE('01-04-2012', '%d-%m-%Y'),
    NULL
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    6,
    3,
    STR_TO_DATE('01-04-2013', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2014', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    3,
    4,
    STR_TO_DATE('01-04-2013', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2015', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    4,
    5,
    STR_TO_DATE('01-04-2013', '%d-%m-%Y'),
    STR_TO_DATE('31-03-2014', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    6,
    2,
    STR_TO_DATE('01-04-2014', '%d-%m-%Y'),
    STR_TO_DATE('30-04-2029', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    4,
    4,
    STR_TO_DATE('01-04-2014', '%d-%m-%Y'),
    NULL
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    2,
    5,
    STR_TO_DATE('01-04-2014', '%d-%m-%Y'),
    STR_TO_DATE('30-11-2028', '%d-%m-%Y')
);

--
INSERT INTO FUNKTIONSBESETZUNG (
    PERSID,
    FUNKID,
    ANTRITT,
    RUECKTRITT
) VALUES (
    3,
    3,
    STR_TO_DATE('01-08-2014', '%d-%m-%Y'),
    NULL
);

--