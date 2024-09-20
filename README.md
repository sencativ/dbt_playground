# DBT Playground

## Introduction

This is a DBT playground for learning purposes where we can experiment with various SQL queries and DBT models. In this repository, I have created five dimension tables and one fact table for a star schema. All the queries used to create the tables, as well as the analysis queries using the star schema to find the top-selling categories by each state in India, are documented in the results folder.

## BigQuery Setup

1. Enable BigQuery API
2. Create your BQ Service Account: references
3. Create your Dataset
4. Create BigQuery Table using upload files method with data from data/Amazon Sale Report.csv

## Environment Variables

Create a .env file in the root directory and set the following environment variables:

```bash
BIGQUERY_PROJECT_ID: {Your BigQuery project ID}
BIGQUERY_DATASET_ID: {Your BigQuery dataset ID}
```

## Docker Setup

build & run docker compose

```bash
docker compose up --build
```

## Usage

Run debug dbt

```bash
docker compose run --rm dbt-run debug
```

```bash
docker compose run --rm dbt-run run
```
