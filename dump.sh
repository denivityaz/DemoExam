#!/bin/bash

export PGUSER='sa'
export PGPASSWORD='De_05'

pg_dump -d BD > dump.sql
