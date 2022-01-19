create view vonuesit_e_librit as
SELECT lexuesi.lexuesi_Emri, lexuesi.lexuesi_Mbiemri, huazimi.AfatiKthimit, huazimi.DataKthimit
FROM projekti.huazimi join projekti.lexuesi on huazimi.lexuesi_id = lexuesi.lexuesi_id
where huazimi.Verejtje = "Vonese ne kthim"