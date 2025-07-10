
SELECT
pierwsza_kadencja.ccc,
pierwsza_kadencja.posel,
pierwsza_kadencja.miejsce,

'target="1947_' || CASE WHEN (k1947.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1947.klub IS NOT NULL AND NOT k1947.klub LIKE ' ') THEN k1947.klub ELSE 'OBECNY' END END
|| '", source="1952_' || CASE WHEN (k1952.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1952.klub IS NOT NULL AND k1952.klub NOT LIKE ' ') THEN k1952.klub ELSE 'OBECNY' END END || '"' AS k1952_tranzycja,

'target="1952_' || CASE WHEN (k1952.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1952.klub IS NOT NULL AND NOT k1952.klub LIKE ' ') THEN k1952.klub ELSE 'OBECNY' END END
|| '", source="1957_' || CASE WHEN (k1957.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1957.klub IS NOT NULL AND k1957.klub NOT LIKE ' ') THEN k1957.klub ELSE 'OBECNY' END END || '"' AS k1957_tranzycja,

'target="1957_' || CASE WHEN (k1957.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1957.klub IS NOT NULL AND NOT k1957.klub LIKE ' ') THEN k1957.klub ELSE 'OBECNY' END END
|| '", source="1961_' || CASE WHEN (k1961.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1961.klub IS NOT NULL AND k1961.klub NOT LIKE ' ') THEN k1961.klub ELSE 'OBECNY' END END || '"' AS k1961_tranzycja,

'target="1961_' || CASE WHEN (k1961.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1961.klub IS NOT NULL AND NOT k1961.klub LIKE ' ') THEN k1961.klub ELSE 'OBECNY' END END
|| '", source="1965_' || CASE WHEN (k1965.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1965.klub IS NOT NULL AND k1965.klub NOT LIKE ' ') THEN k1965.klub ELSE 'OBECNY' END END || '"' AS k1965_tranzycja,

'target="1965_' || CASE WHEN (k1965.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1965.klub IS NOT NULL AND NOT k1965.klub LIKE ' ') THEN k1965.klub ELSE 'OBECNY' END END
|| '", source="1969_' || CASE WHEN (k1969.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1969.klub IS NOT NULL AND k1969.klub NOT LIKE ' ') THEN k1969.klub ELSE 'OBECNY' END END || '"' AS k1969_tranzycja,

'target="1969_' || CASE WHEN (k1969.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1969.klub IS NOT NULL AND NOT k1969.klub LIKE ' ') THEN k1969.klub ELSE 'OBECNY' END END
|| '", source="1972_' || CASE WHEN (k1972.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1972.klub IS NOT NULL AND k1972.klub NOT LIKE ' ') THEN k1972.klub ELSE 'OBECNY' END END || '"' AS k1972_tranzycja,

'target="1972_' || CASE WHEN (k1972.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1972.klub IS NOT NULL AND NOT k1972.klub LIKE ' ') THEN k1972.klub ELSE 'OBECNY' END END
|| '", source="1976_' || CASE WHEN (k1976.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1976.klub IS NOT NULL AND k1976.klub NOT LIKE ' ') THEN k1976.klub ELSE 'OBECNY' END END || '"' AS k1976_tranzycja,

'target="1976_' || CASE WHEN (k1976.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1976.klub IS NOT NULL AND NOT k1976.klub LIKE ' ') THEN k1976.klub ELSE 'OBECNY' END END
|| '", source="1980_' || CASE WHEN (k1980.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1980.klub IS NOT NULL AND k1980.klub NOT LIKE ' ') THEN k1980.klub ELSE 'OBECNY' END END || '"' AS k1980_tranzycja,

'target="1980_' || CASE WHEN (k1980.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1980.klub IS NOT NULL AND NOT k1980.klub LIKE ' ') THEN k1980.klub ELSE 'OBECNY' END END
|| '", source="1985_' || CASE WHEN (k1985.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1985.klub IS NOT NULL AND k1985.klub NOT LIKE ' ') THEN k1985.klub ELSE 'OBECNY' END END || '"' AS k1985_tranzycja,

'target="1985_' || CASE WHEN (k1985.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1985.klub IS NOT NULL AND NOT k1985.klub LIKE ' ') THEN k1985.klub ELSE 'OBECNY' END END
|| '", source="1989_' || CASE WHEN (k1989.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1989.klub IS NOT NULL AND k1989.klub NOT LIKE ' ') THEN k1989.klub ELSE 'OBECNY' END END || '"' AS k1989_tranzycja,

'target="1989_' || CASE WHEN (k1989.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1989.klub IS NOT NULL AND NOT k1989.klub LIKE ' ') THEN k1989.klub ELSE 'OBECNY' END END
|| '", source="1991_' || CASE WHEN (k1991.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1991.klub IS NOT NULL AND k1991.klub NOT LIKE ' ') THEN k1991.klub ELSE 'OBECNY' END END || '"' AS k1991_tranzycja,

'target="1991_' || CASE WHEN (k1991.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1991.klub IS NOT NULL AND NOT k1991.klub LIKE ' ') THEN k1991.klub ELSE 'OBECNY' END END
|| '", source="1993_' || CASE WHEN (k1993.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1993.klub IS NOT NULL AND k1993.klub NOT LIKE ' ') THEN k1993.klub ELSE 'OBECNY' END END || '"' AS k1993_tranzycja,

'target="1993_' || CASE WHEN (k1993.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1993.klub IS NOT NULL AND NOT k1993.klub LIKE ' ') THEN k1993.klub ELSE 'OBECNY' END END
|| '", source="1997_' || CASE WHEN (k1997.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1997.klub IS NOT NULL AND k1997.klub NOT LIKE ' ') THEN k1997.klub ELSE 'OBECNY' END END || '"' AS k1997_tranzycja,

'target="1997_' || CASE WHEN (k1997.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k1997.klub IS NOT NULL AND NOT k1997.klub LIKE ' ') THEN k1997.klub ELSE 'OBECNY' END END
|| '", source="2001_' || CASE WHEN (k2001.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2001.klub IS NOT NULL AND k2001.klub NOT LIKE ' ') THEN k2001.klub ELSE 'OBECNY' END END || '"' AS k2001_tranzycja,

'target="2001_' || CASE WHEN (k2001.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2001.klub IS NOT NULL AND NOT k2001.klub LIKE ' ') THEN k2001.klub ELSE 'OBECNY' END END
|| '", source="2005_' || CASE WHEN (k2005.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2005.klub IS NOT NULL AND k2005.klub NOT LIKE ' ') THEN k2005.klub ELSE 'OBECNY' END END || '"' AS k2005_tranzycja,

'target="2005_' || CASE WHEN (k2005.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2005.klub IS NOT NULL AND NOT k2005.klub LIKE ' ') THEN k2005.klub ELSE 'OBECNY' END END
|| '", source="2007_' || CASE WHEN (k2007.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2007.klub IS NOT NULL AND k2007.klub NOT LIKE ' ') THEN k2007.klub ELSE 'OBECNY' END END || '"' AS k2007_tranzycja,

'target="2007_' || CASE WHEN (k2007.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2007.klub IS NOT NULL AND NOT k2007.klub LIKE ' ') THEN k2007.klub ELSE 'OBECNY' END END
|| '", source="2011_' || CASE WHEN (k2011.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2011.klub IS NOT NULL AND k2011.klub NOT LIKE ' ') THEN k2011.klub ELSE 'OBECNY' END END || '"' AS k2011_tranzycja,

'target="2011_' || CASE WHEN (k2011.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2011.klub IS NOT NULL AND NOT k2011.klub LIKE ' ') THEN k2011.klub ELSE 'OBECNY' END END
|| '", source="2015_' || CASE WHEN (k2015.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2015.klub IS NOT NULL AND k2015.klub NOT LIKE ' ') THEN k2015.klub ELSE 'OBECNY' END END || '"' AS k2015_tranzycja,

'target="2015_' || CASE WHEN (k2015.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2015.klub IS NOT NULL AND NOT k2015.klub LIKE ' ') THEN k2015.klub ELSE 'OBECNY' END END
|| '", source="2019_' || CASE WHEN (k2019.posel IS NULL) THEN 'OUT' ELSE CASE WHEN (k2019.klub IS NOT NULL AND k2019.klub NOT LIKE ' ') THEN k2019.klub ELSE 'OBECNY' END END || '"' AS k2019_tranzycja,

'AAAA' as last_column


FROM (
    SELECT posel, "dane Data i miejce urodzenia" as miejsce, min(kadencja_chronologia) as ccc FROM sejmgov GROUP by posel, miejsce ORDER BY ccc asc, posel asc, miejsce asc
) as pierwsza_kadencja

LEFT JOIN sejmgov as k1947 ON (
  k1947.posel = pierwsza_kadencja.posel
  and (k1947."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1947."dane Data i miejce urodzenia" IS NULL)
  and k1947.kadencja_chronologia = 1947
)

LEFT JOIN sejmgov as k1952 ON (
  k1952.posel = pierwsza_kadencja.posel
  and (k1952."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1952."dane Data i miejce urodzenia" IS NULL)
  and k1952.kadencja_chronologia = 1952
)

LEFT JOIN sejmgov as k1957 ON (
  k1957.posel = pierwsza_kadencja.posel
  and (k1957."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1957."dane Data i miejce urodzenia" IS NULL)
  and k1957.kadencja_chronologia = 1957
)

LEFT JOIN sejmgov as k1961 ON (
  k1961.posel = pierwsza_kadencja.posel
  and (k1961."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1961."dane Data i miejce urodzenia" IS NULL)
  and k1961.kadencja_chronologia = 1961
)
LEFT JOIN sejmgov as k1965 ON (
  k1965.posel = pierwsza_kadencja.posel
  and (k1965."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1965."dane Data i miejce urodzenia" IS NULL)
  and k1965.kadencja_chronologia = 1965
)
LEFT JOIN sejmgov as k1969 ON (
  k1969.posel = pierwsza_kadencja.posel
  and (k1969."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1969."dane Data i miejce urodzenia" IS NULL)
  and k1969.kadencja_chronologia = 1969
)
LEFT JOIN sejmgov as k1972 ON (
  k1972.posel = pierwsza_kadencja.posel
  and (k1972."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1972."dane Data i miejce urodzenia" IS NULL)
  and k1972.kadencja_chronologia = 1972
)
LEFT JOIN sejmgov as k1976 ON (
  k1976.posel = pierwsza_kadencja.posel
  and (k1976."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1976."dane Data i miejce urodzenia" IS NULL)
  and k1976.kadencja_chronologia = 1976
)
LEFT JOIN sejmgov as k1980 ON (
  k1980.posel = pierwsza_kadencja.posel
  and (k1980."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1980."dane Data i miejce urodzenia" IS NULL)
  and k1980.kadencja_chronologia = 1980
)
LEFT JOIN sejmgov as k1985 ON (
  k1985.posel = pierwsza_kadencja.posel
  and (k1985."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1985."dane Data i miejce urodzenia" IS NULL)
  and k1985.kadencja_chronologia = 1985
)
LEFT JOIN sejmgov as k1989 ON (
  k1989.posel = pierwsza_kadencja.posel
  and (k1989."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1989."dane Data i miejce urodzenia" IS NULL)
  and k1989.kadencja_chronologia = 1989
)
LEFT JOIN sejmgov as k1991 ON (
  k1991.posel = pierwsza_kadencja.posel
  and (k1991."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1991."dane Data i miejce urodzenia" IS NULL)
  and k1991.kadencja_chronologia = 1991
)
LEFT JOIN sejmgov as k1993 ON (
  k1993.posel = pierwsza_kadencja.posel
  and (k1993."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1993."dane Data i miejce urodzenia" IS NULL)
  and k1993.kadencja_chronologia = 1993
)
LEFT JOIN sejmgov as k1997 ON (
  k1997.posel = pierwsza_kadencja.posel
  and (k1997."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k1997."dane Data i miejce urodzenia" IS NULL)
  and k1997.kadencja_chronologia = 1997
)
LEFT JOIN sejmgov as k2001 ON (
  k2001.posel = pierwsza_kadencja.posel
  and (k2001."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2001."dane Data i miejce urodzenia" IS NULL)
  and k2001.kadencja_chronologia = 2001
)
LEFT JOIN sejmgov as k2005 ON (
  k2005.posel = pierwsza_kadencja.posel
  and (k2005."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2005."dane Data i miejce urodzenia" IS NULL)
  and k2005.kadencja_chronologia = 2005
)
LEFT JOIN sejmgov as k2007 ON (
  k2007.posel = pierwsza_kadencja.posel
  and (k2007."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2007."dane Data i miejce urodzenia" IS NULL)
  and k2007.kadencja_chronologia = 2007
)
LEFT JOIN sejmgov as k2011 ON (
  k2011.posel = pierwsza_kadencja.posel
  and (k2011."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2011."dane Data i miejce urodzenia" IS NULL)
  and k2011.kadencja_chronologia = 2011
)
LEFT JOIN sejmgov as k2015 ON (
  k2015.posel = pierwsza_kadencja.posel
  and (k2015."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2015."dane Data i miejce urodzenia" IS NULL)
  and k2015.kadencja_chronologia = 2015
)
LEFT JOIN sejmgov as k2019 ON (
  k2019.posel = pierwsza_kadencja.posel
  and (k2019."dane Data i miejce urodzenia" = pierwsza_kadencja.miejsce or k2019."dane Data i miejce urodzenia" IS NULL)
  and k2019.kadencja_chronologia = 2019
)


ORDER BY pierwsza_kadencja.ccc asc, pierwsza_kadencja.posel asc, pierwsza_kadencja.miejsce asc
