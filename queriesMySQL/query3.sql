SELECT lexuesi.lexuesi_Emri, lexuesi.lexuesi_Mbiemri, huazimi.AfatiKthimit, huazimi.DataKthimit
FROM projekti.huazimi join projekti.lexuesi on huazimi.lexuesi_id = lexuesi.lexuesi_id
where year(DataHuazimit) <=2021 and year(DataHuazimit)>2019 and AfatiKthimit < DataKthimit