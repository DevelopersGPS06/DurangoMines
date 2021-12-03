--What material has the major number of extractions?
create temp table num_ext as
select fk_material, count(id_ext) as num
from mines_dgo.extractions 
group by fk_material;

select mat.name_material, tt.num
from num_ext as tt
join mines_dgo.materials as mat
on tt.fk_material = mat.id_material
where num
in
(select max(num) from num_ext);