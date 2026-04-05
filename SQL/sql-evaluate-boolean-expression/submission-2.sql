-- Write your query below
select e.left_operand, e.operator,e.right_operand ,
case 
    when e.operator = '>' and leftv.value > rightv.value then true
    when e.operator = '<' and leftv.value < rightv.value then true
    when e.operator = '=' and leftv.value = rightv.value then true
    else false
end as value
from expressions e
join variables leftv on leftv.name = e.left_operand
join variables rightv on rightv.name = e.right_operand
