SELECT libri.Titulli ,count(libri.libri_id) as times
FROM projekti.huazimi inner join projekti.libri on libri.libri_id = huazimi.libri_id
where year(DataHuazimit)=2021 and year(DataKthimit)=2021
group by(libri.libri_id) order by times desc
limit 1