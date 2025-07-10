SELECT
pierwsza_kadencja.posel,
pierwsza_kadencja.miejsce,

k1947.posel IS NOT NULL as k1947_obecny,
k1947.klub as k1947_klub,
k1947."dane Lista" as k1947_lista,

k1952.posel IS NOT NULL as k1952_obecny,
k1952.klub as k1952_klub,
k1952."dane Lista" as k1952_lista,

k1957.posel IS NOT NULL as k1957_obecny,
k1957.klub as k1957_klub,
k1957."dane Lista" as k1957_lista,

k1961.posel IS NOT NULL as k1961_obecny,
k1961.klub as k1961_klub,
k1961."dane Lista" as k1961_lista,

k1965.posel IS NOT NULL as k1965_obecny,
k1965.klub as k1965_klub,
k1965."dane Lista" as k1965_lista,

k1969.posel IS NOT NULL as k1969_obecny,
k1969.klub as k1969_klub,
k1969."dane Lista" as k1969_lista,

k1972.posel IS NOT NULL as k1972_obecny,
k1972.klub as k1972_klub,
k1972."dane Lista" as k1972_lista,

k1976.posel IS NOT NULL as k1976_obecny,
k1976.klub as k1976_klub,
k1976."dane Lista" as k1976_lista,

k1980.posel IS NOT NULL as k1980_obecny,
k1980.klub as k1980_klub,
k1980."dane Lista" as k1980_lista,

k1985.posel IS NOT NULL as k1985_obecny,
k1985.klub as k1985_klub,
k1985."dane Lista" as k1985_lista,

k1989.posel IS NOT NULL as k1989_obecny,
k1989.klub as k1989_klub,
k1989."dane Lista" as k1989_lista,

k1991.posel IS NOT NULL as k1991_obecny,
k1991.klub as k1991_klub,
k1991."dane Lista" as k1991_lista,

k1993.posel IS NOT NULL as k1993_obecny,
k1993.klub as k1993_klub,
k1993."dane Lista" as k1993_lista,

k1997.posel IS NOT NULL as k1997_obecny,
k1997.klub as k1997_klub,
k1997."dane Lista" as k1997_lista,

k2001.posel IS NOT NULL as k2001_obecny,
k2001.klub as k2001_klub,
k2001."dane Lista" as k2001_lista,

k2005.posel IS NOT NULL as k2005_obecny,
k2005.klub as k2005_klub,
k2005."dane Lista" as k2005_lista,

k2007.posel IS NOT NULL as k2007_obecny,
k2007.klub as k2007_klub,
k2007."dane Lista" as k2007_lista,

k2011.posel IS NOT NULL as k2011_obecny,
k2011.klub as k2011_klub,
k2011."dane Lista" as k2011_lista,

k2015.posel IS NOT NULL as k2015_obecny,
k2015.klub as k2015_klub,
k2015."dane Lista" as k2015_lista,

k2019.posel IS NOT NULL as k2019_obecny,
k2019.klub as k2019_klub,
k2019."dane Lista" as k2019_lista,

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
