--I want to know how much mines have every township, ordered from major to minor.
select mun_table, count(mun_table) as num_mines
from mines_dgo.locations as l
JOIN mines_dgo.mun as mun
on fk_mun = id_mun
group by mun_table
order by num_mines desc;