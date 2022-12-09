# project02-group08

Repository of project proposal, code, report and deliverables for Project 02: ETL Process

# Sex, Drugs, & Rock 'n' Roll

Project Report
(We provided the rock ‘n’ roll)

## Overview:

Using SqlAlchemy and Pandas in a Jupyter Notebook, we imported the two CSV’s we downloaded from the CDC  website and combined them along the state and year columns in each table. We are looking for any correlation between two classically high risk behaviors.

## Datasets and Sources:

Both datasets are from the CDC’s website:

[Sex](https://gis.cdc.gov/grasp/nchhstpatlas/tables.html)

[Drugs](https://data.cdc.gov/NCHS/NCHS-Drug-Poisoning-Mortality-by-State-United-Stat/xbxb-epbu)

Our data on STD’s included the number of reported cases across all 50 states for the years of 1999-2020. 

![Shot_2](https://user-images.githubusercontent.com/112498067/206604237-ab3dcfd1-9423-42bf-8647-719be2b6de9d.png)

### Our data on drug mortality:

![Shot_3](https://user-images.githubusercontent.com/112498067/206604603-12172194-04b6-4ce4-ad0a-1ca65c7bc107.png)

# ETL:

![Shot_4](https://user-images.githubusercontent.com/112498067/206604861-2ef90f07-d3d5-4389-9858-ba572bc9083e.png)

# Cleaning, Joining, and Filtering the Data:

We exported both data sets into CSV files. The CDC data on STD’s included the number of cases by year in each of the 50 states and the District of Columbia.  From our STD data we removed the column “FIPS”, changed multiple columns from objects to integers or floats,  and removed the added comment of “COVID-19 Pandemic” from the 2020 column. Then we removed rows that were not part of both data sets, i.e rows that include years that are not in both data sets. We then renamed columns to add clarity for when we join the two files, turning “Cases” into “STD Cases”, for example.

In the Drug Poisoning Mortality data, we removed the “Both Sexes”, “Age Group”, and “Race and Hispanic Origin” columns as they were redundant. We then only used years that were available in both data sets. All columns were already in the correct data set format.
We then went on to merge the columns on the State and Year columns

### Flow Chart and Schema:

![Shot_5](https://user-images.githubusercontent.com/112498067/206606268-692f105b-e2ed-42a2-bef2-e68b864c80ba.png)

#### Joined Data:

![Table_joined](https://user-images.githubusercontent.com/112498067/206605485-27fadee5-4728-41e7-89a5-bbdbd054dad4.png)

