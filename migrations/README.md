# Database Migrations

This directory contains all database migration files in chronological order.

## Migration Files

1. **001_initial_schema.sql** - Initial database schema creation
2. **002_initial_data.sql** - Initial mosque data import
3. **003_nullable_facilities.sql** - Make facility columns nullable
4. **004_facilities_data_migration.sql** - Migrate existing facility data
5. **005_add_description_column.sql** - Add description column to mosques table
6. **006_fix_auth_policy.sql** - Fix authentication policies
7. **007_reset_and_import_data.sql** - Reset and import mosque data

## Usage

Run migrations in order using Supabase SQL Editor:
1. Copy the content of each migration file
2. Paste into Supabase SQL Editor
3. Execute in numerical order

## Adding New Migrations

When adding new migrations:
1. Use the next sequential number (008_, 009_, etc.)
2. Use descriptive names
3. Include comments explaining the changes
4. Test thoroughly before applying to production