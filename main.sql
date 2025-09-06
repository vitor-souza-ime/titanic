SELECT 
    CASE Embarked
        WHEN 'C' THEN 'Cherbourg'
        WHEN 'Q' THEN 'Queenstown'
        WHEN 'S' THEN 'Southampton'
    END AS Embarque,
    CASE PClass
        WHEN 1 THEN '1° Classe' 
        WHEN 2 THEN '2° Classe' 
        WHEN 3 THEN '3° Classe' 
    END AS Classe,
    CASE Sex 
        WHEN 'female' THEN 'Mulher'
        WHEN 'male' THEN 'Homem'
    END AS Gênero,
    CASE Survived
        WHEN 0 THEN 'Não Sobreviveu'
        WHEN 1 THEN 'Sobreviveu'
    END AS Status,    
    COUNT(*) AS Total_Absoluto,
    ROUND(100.0*(COUNT(*)/(SELECT COUNT(*) FROM 'train.csv')),2) AS Percentual
FROM 'train.csv'
GROUP BY Embarked,Survived,PClass,Sex
ORDER BY Embarked,PClass,Sex;
