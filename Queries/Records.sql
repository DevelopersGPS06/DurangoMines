--Fetch all the records with all their information
SELECT min_name, area, manager, organization, mun_table, num_contract, sign, start_date, allocation, expedition, num_exp, longitude, latitude, geom
FROM mines_dgo.mines_itrf2008 as geom 
JOIN mines_dgo.contracts as cont ON geom.fk_numcount = cont.num_contract 
JOIN mines_dgo.expedients as exped ON cont.fk_exp = exped.id_exp 
JOIN mines_dgo.dates as dat ON cont.fk_mindate = dat.id_date 
JOIN mines_dgo.mines as min ON cont.fk_mindate = min.id_mine 
JOIN mines_dgo.locations as loc ON min.fk_loc = loc.id_loc 
JOIN mines_dgo.mun as mun ON loc.fk_mun = mun.id_mun
--To fetch all every record comment the following code lines
limit 10
;
