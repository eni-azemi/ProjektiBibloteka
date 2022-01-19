SELECT distinct huazimi.libri_id ,titulli FROM projekti.huazimi join projekti.libri on libri.libri_id=huazimi.libri_id where
year(DataHuazimit) = 2019 or year(DataHuazimit) = 2020
and libri.libri_id
not in
(
select libri.libri_id FROM projekti.huazimi join libri on libri.libri_id=huazimi.libri_id where
year(DataHuazimit)=2021
)