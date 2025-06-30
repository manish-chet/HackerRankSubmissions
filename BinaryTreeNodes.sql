select N,
case when N not in (select  distinct P from BST where P is not null) then 'Leaf'
when P is null then 'Root'
else 'Inner'
end as node_type from BST order by N
