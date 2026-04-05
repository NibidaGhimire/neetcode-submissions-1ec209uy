select distinct sp.name from sales_person sp
left join orders o on o.sales_id = sp.sales_id
left join company c on c.com_id = o.com_id and c.name = 'CRIMSON' 
group by sp.sales_id, sp.name
having count(c.com_id)=0;

