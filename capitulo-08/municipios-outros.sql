select concat('db.municipios.insert({_id:', m.codigo_ibge,', nome:"', m.nome,'",uf:"',e.uf,'",estado:"',
  e.nome,'",loc:{x:', m.longitude,',y:', m.latitude,'},capital:"N"});') as outros  
from estados e, municipios m 
where e.codigo_uf = m.codigo_uf 
 and capital=0