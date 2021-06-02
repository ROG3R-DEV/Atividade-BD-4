DELIMITER $$
create TRIGGER tri_vendas_ai
after insert on comivenda
FOR EACH row
begin
	declare ITENS_V_TOTAL float(10,2) default 0; 
    declare TOTAL_V_ITEM float(10,2);
    declare ITEM_TOTAL float(10,2) default 0; 
	declare ITEM_QUANTIDADE int default 0;
    declare LOOPEND int default 0;

    declare busca_itens cursor FOR
		select n_valoivenda, n_qtdeivenda
          from comivenda
		 where n_numevenda = NEW.n_numevenda;

    declare CONTINUE HANDLER FOR SQLSTATE '02000' set LOOPEND = 1;
    
open busca_itens;
itens : loop
	if LOOPEND = 1 then
	LEAVE itens;
	end if;
	
	FETCH busca_itens into ITEM_TOTAL, ITEM_QUANTIDADE;
	set ITENS_V_TOTAL = ITENS_V_TOTAL + (ITEM_TOTAL * ITEM_QUANTIDADE);		
end loop itens;     
close busca_itens;

update comvenda set n_totavenda = ITENS_V_TOTAL - (NEW.n_valoivenda * NEW.n_qtdeivenda)
where n_numevenda = NEW.n_numevenda;
end $$
DELIMITER ;