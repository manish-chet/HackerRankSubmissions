SELECT MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
        MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
       MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
              MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
      
FROM
    (
        select Name, Occupation, row_number() over (partition by Occupation order by Name) as rn
        from OCCUPATIONS
    
    )as sub
GROUP BY rn
order by rn;
