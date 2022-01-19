SELECT lexuesi_Emri,lexuesi_Mbiemri, count(lexuesi.lexuesi_id) as nrHuazimeve 
FROM projekti.huazimi join projekti.lexuesi on huazimi.lexuesi_id = lexuesi.lexuesi_id 
where month(DataKthimit)>=10 and year(DataKthimit)=2021
group by (lexuesi.lexuesi_id)
order by(nrHuazimeve) desc
limit 5