--I want to know the 5 mines with area major than 5000 hectares and that extract gold but also 
--i'm interested in how much area those have,township and i want to see them on the map.
select m.min_name, mun.mun_table, m.area, s.geom
from mines_dgo.mines as m 
JOIN mines_dgo.locations as l 
on m.fk_loc = l.id_loc
JOIN mines_dgo.mun as mun
on l.fk_mun = mun.id_mun
JOIN mines_dgo.contracts as c
on m.id_mine = c.fk_mindate
JOIN mines_dgo.mines_utm as s
on c.num_contract = s.titulo
where num_contract
in
(select fk_numcont 
from mines_dgo.extractions 
where fk_material = 'Au')
and m.area > 5000
order by m.area desc;