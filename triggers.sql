delimiter $$
create trigger sasia_kerkuar before insert
on libri
for
each row begin if new .NrKopjeve < 20
then signal sqlstate '45000'
set message_text = "Sasia e librave te pranuar duhet te jete me e madhe sesa 20!";
end if;
end $$
delimiter $$;
show triggers;

delimiter $$
create trigger pagesa before insert
on DetajeLexuesit for each row begin if new .Shuma < 15
then signal sqlstate '45000'
set message_text = "Personi nuk mund te regjistrohet - nuk permbushet shuma e pageses se kerkuar.";
end if;
end$$
delimiter $$;
show triggers;
