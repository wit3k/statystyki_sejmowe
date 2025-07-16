SELECT calosc.*, calosc.ostatnia - calosc.pierwsza as dlugosc ,
dane1."dane Data i miejce urodzenia" as urodzony1,
dane2."dane Data i miejce urodzenia" as urodzony2,
dane1."dane Lista" as lista1,
dane2."dane Lista" as lista2,
dane1.klub as klub1,
dane2.klub as klub2

FROM (
SELECT posel, min(kadencja_chronologia) as pierwsza, max(kadencja_chronologia) as ostatnia
FROM sejmgov
GROUP BY posel) as calosc
left join sejmgov as dane1 ON (dane1.posel = calosc.posel and dane1.kadencja_chronologia = calosc.pierwsza)
left join sejmgov as dane2 ON (dane2.posel = calosc.posel and dane2.kadencja_chronologia = calosc.ostatnia)

WHERE
calosc.pierwsza != calosc.ostatnia
and calosc.pierwsza < 1989
and calosc.ostatnia > 1989

ORDER BY dlugosc DESC
