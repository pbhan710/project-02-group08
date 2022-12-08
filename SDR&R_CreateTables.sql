-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/5ktCGG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "std" (
    "Indicator" varchar   NOT NULL,
    "Geography" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "Number_of_STD_Cases" int   NOT NULL,
    "STD_Rate_per_100000" float   NOT NULL
);

CREATE TABLE "dpm" (
    "State" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "Deaths" int   NOT NULL,
    "Population" int   NOT NULL,
    "Crude_Death_Rate" float   NOT NULL,
    "Standard_Error" float64   NOT NULL,
    "Lower_Confidence_Limit" float64   NOT NULL,
    "Upper_Confidence_Limit" float64   NOT NULL,
    "Age-adjusted_Rate" float   NOT NULL,
    "Standard_Error_for_Age-adjusted_Rate" float   NOT NULL,
    "Lower_Confidence_Limit_for_Age-adjusted_Rate" float   NOT NULL,
    "Upper_Confidence_Limit_for_Age-adjusted_Rate" float   NOT NULL,
    "State_Crude_Rate_in_Range" varchar   NOT NULL,
    "US_Crude_Rate" float   NOT NULL,
    "US_Age-adjusted_Rate" float   NOT NULL
);

