﻿-- Crowdfunding ETL Mini Project
-- Group 5

CREATE TABLE "category" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

SELECT * FROM category

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

SELECT * FROM subcategory

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

SELECT * FROM contacts

CREATE TABLE "campaing" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_campaing" PRIMARY KEY (
        "cf_id"
     )
);

SELECT * FROM campaing

ALTER TABLE "campaing" ADD CONSTRAINT "fk_campaing_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaing" ADD CONSTRAINT "fk_campaing_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaing" ADD CONSTRAINT "fk_campaing_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



