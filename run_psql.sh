#!/bin/bash

POSTGRES_MASKED_URL=postgresql://adel:toto@localhost:5432
POSTGRES_URL=postgresql://adel:toto@localhost:5432

echo psql $POSTGRES_MASKED_URL
psql $POSTGRES_URL