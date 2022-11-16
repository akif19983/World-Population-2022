-- Master raw table

Select *
From WorldPopulation2022..['World Population (2022) $']

-- Population of the world

Select SUM([Population (2022)]) as 'World Population'
From WorldPopulation2022..['World Population (2022) $']

-- To plot country population

Select [Country (or dependency)], [Population (2022)]
From WorldPopulation2022..['World Population (2022) $']

-- To select top 10 country that has highest and least population

Select TOP (5) [Country (or dependency)], [Population (2022)]
From WorldPopulation2022..['World Population (2022) $']
Order by [Population (2022)] desc

Select TOP (5) [Country (or dependency)], [Population (2022)]
From WorldPopulation2022..['World Population (2022) $']
Order by [Population (2022)] asc

-- Relationship between Population and Land Area

Select TOP(25) [Country (or dependency)], [Population (2022)], [Land Area (Km²)]
From WorldPopulation2022..['World Population (2022) $']

-- To find out which country has the most migrant and least migrant

Select TOP (5) [Country (or dependency)], [Migrants (net)]
From WorldPopulation2022..['World Population (2022) $']
Where [Migrants (net)] is not null
Order by [Migrants (net)] desc

Select TOP (5) [Country (or dependency)], [Migrants (net)]
From WorldPopulation2022..['World Population (2022) $']
Where [Migrants (net)] is not null
Order by [Migrants (net)] asc

-- To find out the fertility rate

Select TOP (10) [Country (or dependency)], [Fert# Rate]
From WorldPopulation2022..['World Population (2022) $']
Where [Fert# Rate] is not null
Order by [Fert# Rate] desc

