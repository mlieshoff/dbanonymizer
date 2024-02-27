#!/bin/sh



sleep 10
echo starting...

date

#ping mysql-dump-db

#mysql -u root --host mysql-dump-db -P 3306 --password=mysql tmp_db

pynonymizer -i ${DUMP_INPUT_FILE} -o ${DUMP_OUTPUT_FILE}  -t ${DB_TYPE} -s ${STRATEGY_FILE} -l ${LOCALE} --seed-rows ${SEED_ROWS} --verbose -d ${DB_HOST} -P ${DB_PORT} -n ${DB_NAME} -u ${DB_USER} -p ${DB_PASSWORD}

ls

