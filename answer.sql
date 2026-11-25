/*
 * Week 8 Assignment: MySQL Database Backup and Restore
 */

-- Question 1: Creating a Complete Database Backup
-- The -u option specifies root, -p prompts for the password, and the output
-- redirection saves both the sales database schema and its data to sales_backup.sql.
mysqldump -u root -p --routines --triggers --events sales > sales_backup.sql;

/*
 * Explanation:
 * This command creates a complete logical backup of the sales database,
 * including stored routines, triggers, events, table structures, and data.
 * Regular backups are important because they enable recovery after data loss,
 * accidental changes, hardware failure, or other disasters.
 */

-- Question 2: Backing Up All Databases
-- --all-databases exports every database on the MySQL server. Root is used and
-- -p prompts for the password without storing it in the command.
mysqldump -u root -p --all-databases --routines --triggers --events > all_databases_backup.sql;

/*
 * Explanation:
 * Backing up all databases preserves all application data, schemas, users'
 * database objects, and server-side objects (with the listed options) before
 * migration. This provides a consistent source for recreating the server and
 * helps prevent omissions that could break applications after migration.
 */

-- Question 3: Creating a Data-Only Database Backup
-- --no-create-info excludes CREATE TABLE statements, so only INSERT data for
-- the sales database is exported.
mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql;

/*
 * Explanation:
 * This command creates a data-only backup of sales. It is useful when the
 * database schema already exists and only the table data needs to be restored,
 * moved, or migrated. The existing tables must have compatible structures.
 */
