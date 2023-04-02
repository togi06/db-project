--- iki farklı ama aynı başlıkları olan dosyaları birleştirme
-- set Operators
select * from TESTERS;
select * from DEVELOPERS;

--- union ile union all arasındaki fark sorulur!!!
--- union ile bağlarsak sayıları düzenli bir şekilde listeliyor

select * from TESTERS
    union
select * from DEVELOPERS;

-- aynı bılgılerı tek olarak alıyor ? duplıcate
select names from TESTERS
union
select NAMES from DEVELOPERS;


-- union All ile bağlarsak o zaman dosyaları bozmadan kendi sıralarında bağlıyor
-- bilgiler aynı olsa fark etmez ayrı ayrı alır

select * from TESTERS
union all
select * from DEVELOPERS;
-- bilgiler aynı olsa fark etmez ayrı ayrı alır
select names from TESTERS
union all
select NAMES from DEVELOPERS;

--mınus
-- ilk yazılan tablodaki bilgilerin ortak olmayan bilgisini verir
select NAMES from TESTERS
minus
select NAMES  from DEVELOPERS;

--intersect
-- ıkı tablonun da ortak olan bilgisini verir

select NAMES from TESTERS
intersect
select NAMES  from DEVELOPERS;




