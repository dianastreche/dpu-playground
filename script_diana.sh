#!/bin/bash

date_var="$(date)"
echo Process started at "$date_var"

bq query --project_id=am-dpu --replace=true --use_legacy_sql=false --destination_table=scripting_tests.my_test_table 'SELECT * FROM scripting_tests.my_test_view'

date_var="$(date)"
echo Process ended at "$date_var"
