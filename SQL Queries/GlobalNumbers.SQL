-- 1. Global Numbers

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From "CovidExp"."CovidDeaths"
--Where location like '%states%'
where continent is not null 
--Group By date
order by 1,2