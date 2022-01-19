SELECT libri.Autori ,count(libri.Autori) as times
FROM projekti.huazimi inner join projekti.libri on libri.libri_id = huazimi.libri_id
group by(libri.Autori) order by times desc
limit 1