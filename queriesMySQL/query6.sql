SELECT year(DataeRegjistrimit) as Viti, sum(Shuma) as Shuma
FROM projekti.detajelexuesit 
group by(Viti)
