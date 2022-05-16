use negocio;
call SP_procedures;


describe articulos;
-- encapsular la tabla articulos
drop procedure if exists SP_articulos_insert;
delimiter //
create procedure SP_articulos_insert(in Pdescripcion varchar(50),Prubro varchar(20), Pcosto double,
		Pprecio double, Pstock int(11), PStock_minimo int(11), Pstock_maximo int(11))
	begin
		insert into articulos (descripcion,rubro,costo,precio,stock,stock_minimo,stock_maximo) 
			values
		(Pdescripcion, Prubro, Pcosto, Pprecio, Pstock, Pstock_minimo, Pstock_maximo);
    end;
// delimiter ;
 call SP_articulos_insert('BiduCola 2.5L','BEBIDAS',99, 150, 20, 5,30 );

 select * from articulos;
 
 drop procedure if exists SP_articulos_remove;
 delimiter //
 create procedure SP_articulos_remove(in Pid int)
 begin
	delete from articulos where id=Pid;
 end;
 // delimiter ;
 call SP_articulos_remove(7);
 select * from articulos;
 describe articulos;
 
 drop procedure if exists SP_articulos_update;
 
 delimiter //
 create procedure SP_articulos_update(in Pid int, Pdescripcion varchar(50),Prubro varchar(20), Pcosto double,
		Pprecio double, Pstock int(11), PStock_minimo int(11), Pstock_maximo int(11))
begin
	update articulos set descripcion = Pdescripcion, rubro=Prubro, costo=Pcosto, precio=Pprecio, stock=Pstock, stock_minimo=Pstock_minimo, stock_maximo=Pstock_maximo          where id=Pid;
end;
 // delimiter ;
 select * from articulos;
 call SP_articulos_update(2,'Gini Diet','BEBIDAS',100,150,12,5,30);
 
 
 
 