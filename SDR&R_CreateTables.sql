-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5ktCGG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "sex" (
    "indicator" varchar NOT NULL,
    "geography" varchar NOT NULL,
    "year" int NOT NULL,
    "number_of_std_cases" int NOT NULL,
    "std_rate_per_100000" float NOT NULL
);

CREATE TABLE "drugs" (
    "state" varchar NOT NULL,
    "year" int NOT NULL,
    "deaths" int NOT NULL,
    "population" int NOT NULL,
    "crude_death_rate" float NOT NULL,
    "standard_error_for_crude_rate" float NOT NULL,
    "lower_confidence_limit_for_crude_rate" float NOT NULL,
    "upper_confidence_limit_for_crude_rate" float NOT NULL,
    "age_adjusted_rate" float NOT NULL,
    "standard_error_for_age_adjusted_rate" float NOT NULL,
    "lower_confidence_limit_for_age_adjusted_rate" float NOT NULL,
    "upper_confidence_limit_for_age_adjusted_rate" float NOT NULL,
    "state_crude_rate_in_range" varchar NOT NULL,
    "us_crude_rate" float NOT NULL,
    "us_age_adjusted_rate" float   NOT NULL
);