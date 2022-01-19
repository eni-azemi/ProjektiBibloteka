create view info_lexuesit as
select lexuesi.*, detajelexuesit.DataeRegjistrimit, detajelexuesit.Shuma, detajelexuesit.EndeiAntarsuar
from projekti.lexuesi join projekti.detajelexuesit on lexuesi.lexuesi_id = detajelexuesit.lexuesi_id