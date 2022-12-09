select 
	d.state, 
	d.year,
	population,
	deaths as dpm_deaths,
	crude_death_rate,
	age_adjusted_rate as age_adjusted_crude_rate,
	us_crude_rate,
	chlamydia_cases,
	congenital_syphilis_cases,
	early_non_primary_secondary_syphilis_cases,
	gonorrhea_cases,
	primary_secondary_syphilis_cases
from drugs as d
left join (
	select indicator, geography, year, number_of_std_cases as "chlamydia_cases"
	from sex
	where indicator = 'Chlamydia'
) as ch
	on (d.state = ch.geography) and (d.year = ch.year)
left join (
	select indicator, geography, year, number_of_std_cases as "congenital_syphilis_cases"
	from sex
	where indicator = 'Congenital Syphilis'
) as cs
	on (d.state = cs.geography) and (d.year = cs.year)
left join (
	select indicator, geography, year, number_of_std_cases as "early_non_primary_secondary_syphilis_cases"
	from sex
	where indicator = 'Early Non-Primary, Non-Secondary Syphilis'
) as ens
	on (d.state = ens.geography) and (d.year = ens.year)
left join (
	select indicator, geography, year, number_of_std_cases as "gonorrhea_cases"
	from sex
	where indicator = 'Gonorrhea'
) as g
	on (d.state = g.geography) and (d.year = g.year)
left join (
	select indicator, geography, year, number_of_std_cases as "primary_secondary_syphilis_cases"
	from sex
	where indicator = 'Primary and Secondary Syphilis'
) as s
	on (d.state = s.geography) and (d.year = s.year)