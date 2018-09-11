#!/bin/bash

echo "host all all ip-address-your-manager/32 trust" >> /var/lib/pgsql/9.5/data/pg_hba.conf
echo "listen_addresses='*'" >> /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/autovacuum_vacuum_scale_factor/c\autovacuum_vacuum_scale_factor = 0.01' /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/autovacuum_analyze_scale_factor/c\autovacuum_analyze_scale_factor = 0.075' /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/autovacuum_max_workers/c\autovacuum_max_workers = 6' /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/maintenance_work_mem/c\maintenance_work_mem = 64MB' /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/max_connections/c\max_connections = 150' /var/lib/pgsql/9.5/data/postgresql.conf
sed -i '/work_mem/c\work_mem = 8MB' /var/lib/pgsql/9.5/data/postgresql.conf
