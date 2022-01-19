select  lexuesi.lexuesi_id, lexuesi_Emri, lexuesi_Mbiemri,libri.Zhanri, 
count(*) as NrHuazimit,
sum(IF(huazimi.AfatiKthimit< huazimi.DataKthimit,1,0))  as VonesaTotale
-- count(libri.Zhanri) as ZhandriPreferuar
from projekti.lexuesi join projekti.huazimi on lexuesi.lexuesi_id = huazimi.lexuesi_id join projekti.libri on libri.libri_id = huazimi.libri_id
where year(DataKthimit) =2021
group by lexuesi.lexuesi_id
order by Zhanri desc