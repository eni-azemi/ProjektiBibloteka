SELECT  lexuesi.lexuesi_Emri, lexuesi.lexuesi_Mbiemri,lexuesi.lexuesi_id as id
FROM projekti.huazimi as huazimi
join projekti.lexuesi lexuesi on lexuesi.lexuesi_id = huazimi.lexuesi_id
where year(DataHuazimit) = 2020
group by (id)
having count(*)>2

