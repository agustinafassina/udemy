#Ejercicio 3
#Modificar la comision de los vendedores y 
#ponerle al 2% cuando ganan mas de 50000
update  vendedores set comision='2' where sueldo > '50000' 

#Ejercicio 4
#Sacar a todos los vendedores cuya fecha 
#de alta sea posterior al 1-Julio-2018
select * from vendedores where fecha_alta => '2018-07-01'

#Ejercicio 5
#Traer solamente los nombre y los dias que lleva trabajando aca.
select nombre, datediff(curdate(), fecha_alta) from vendedores

#Ejercicio 6
# Traer el nombre y los apellidos de los vendedores en una misma 
#columna, y su fecha de registro, dia de la semana.
select concat(nombre,' ',apellido), dayname(fecha_alta) from vendedores

#Ejercicio 7
#Mostrar el nombre y el salario de los vendedores, con cargo de Cajero
select nombre, sueldo from vendedores where cargo = 'Cajero'

#Ejercicio 8
#Mostrar todos los coches en cuya marca exista la letra A 
# y empiecen con la letra M.
select * from coches
where marca like '%A%' and modelo like 'M%'

#Ejercicio 9
#Mostrar todos los vendedores del grupo 2
#ordenados por salario de mayor a menor
select * from vendedores where group_id=2 order by sueldo desc

#Ejercicio 10
#Mostrar los apellidos de los vendedores, fecha de alta, grupo y 
#ordenado por fecha desc y limit 4
select apellido, fecha_alta, group_id from vendedores  order by fecha_alta desc limit 4

#Ejercicio 11
#Mostrar todos los cargos y el numero 
#de vendedores que hay en cada cargo.
select count(id) from vendedores group by cargo order by count(id) asc

#Ejercicio 12
#Mostrar el sueldo del confesionario anual.
select SUM(sueldo) from vendedores where year(fecha_alta)=2019

#Ejercicio 13
#Sacar la media de sueldo entre todos los vendedores por grupo.
select AVG(sueldo) from vendedores group by group_id

#Ejercicio 14
#Mostrar las unidades totales vendidas de cada coche a cada cliente
#mostrando el nombre del producto, el numero del cliente y la suma 
#de unidades.
select count(cantidad), cliente_id from encargos group by cliente_id

#Ejercicio 15
#Mostrar los dos clientes con mayor 
#numero de pedidos han hecho y mostrar cuantos hicieron.
select count(en.cantidad), en.cliente_id, cl.nombre 
from encargos en 
inner join clientes cl
on en.cliente_id=cl.id
group by en.cliente_id order by en.cantidad desc limit 2

#Ejercicio 16
#Mostrar el listado de clientes atendidos por el vendedor
#AgustinaFassina
select  cl.*, ven.nombre  
from clientes cl 
inner join vendedores ven
on cl.vendedor_id=ven.id
where ven.nombre='Agustina'

#Ejercicio 18
# Mostrar los clientes que encargaron el coche Resault CLio

select c.*, co.marca from clientes c 
inner join encargos e on c.id=e.cliente_id
inner join coches co on e.coche_id = co.id
where co.marca='Mercedes Banz'

#Ejercicio 19
#Mostrar los vendedores con 2 o mas clientes

select count(id) from clientes group by vendedor_id having count(id=2)

#Ejercicio 20
#Seleccionar el grupo en el que trabaja el vendedor 
#con mayor salario y mostrar el nombre del grupo.
select v.group_id, v.sueldo from vendedores v 
inner join grupos g
on v.group_id=g.id
order by v.sueldo desc limit 1

#Ejercicio 21
#Mostrar los nombre y ciudades con encargos de 3 cantidad en adelante
select cl.nombre, cl.ciudad, en.cantidad 
from clientes cl
inner join encargos en
on cl.id=en.cliente_id
where en.cantidad>=3

#Ejercicio 22
#Mostrar el numero de clientes y el nombre
#mostrar numero de vendedor y su nombre
select cl.id, cl.nombre, ven.id, ven.nombre as nombreVendedor
from clientes cl
inner join vendedores ven
on cl.vendedor_id=ven.id

#Ejercicio 23
#Listar todos los encargos realizados con la marca del coche y el nombre
#del cliente.
select en.cantidad, c.marca, cl.nombre 
from encargos en
inner join coches c
on en.coche_id=c.id
inner join clientes cl
on en.cliente_id=cl.id

#Ejercicio 24
#Mostrar los encargos con el nombre del coche, el nombre del cliente y la ciudad
# pero unicamente cuando sean de Balnearia
select cl.nombre, cl.ciudad, en.cantidad from clientes cl
inner join encargos en
on cl.id=en.cliente_id where ciudad="Balnearia"

#Ejercicio 25
#Obtener una lista de los nombres de los clientes
# con el importe de sus encargos acumulados.
select cl.nombre, sum(en.cantidad) from clientes cl
inner join encargos en
on cl.id=en.cliente_id

#Son 30 Ejercicios



