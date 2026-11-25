# Week 8: MySQL Database Backup and Restore

This assignment demonstrates MySQL database backup operations using `mysqldump`.

## Backup Commands

The backup commands are provided in [answer.sql](answer.sql). They cover:

1. A complete backup of the `sales` database.
2. A complete backup of every database on the MySQL server.
3. A data-only backup of the `sales` database.

## Requirements

- MySQL Server
- MySQL Command-Line Client or MySQL Workbench
- Access to a MySQL account with backup permissions

## Running the Commands

Run the commands from your system terminal. Each command using `-p` will prompt for the MySQL password without exposing it in the command.

Examples:

```sql
mysqldump -u root -p --routines --triggers --events sales > sales_backup.sql;
mysqldump -u root -p --all-databases --routines --triggers --events > all_databases_backup.sql;
mysqldump -u root -p --no-create-info sales > sales_data_only_backup.sql;
```
