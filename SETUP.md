# Mosque Map App Setup Guide

## Required: Supabase Configuration

This app requires a Supabase project to run. Follow these steps:

### 1. Create a Supabase Project

1. Go to [supabase.com](https://supabase.com) and sign up/login
2. Click "New Project"
3. Choose your organization and fill in project details
4. Wait for the project to be created (takes ~2 minutes)

### 2. Set up the Database

1. In your Supabase dashboard, go to **SQL Editor**
2. Copy and paste the contents of `supabase-schema.sql` from this project
3. Click "Run" to execute the SQL

### 3. Get Your Project Credentials

1. Go to **Settings** → **API** in your Supabase dashboard
2. Copy your:
   - **Project URL** (looks like: `https://your-project-id.supabase.co`)
   - **Anon Public Key** (long string starting with `eyJ...`)

### 4. Configure Environment Variables

1. Create a `.env.local` file in the project root
2. Add your credentials:

```env
REACT_APP_SUPABASE_URL=https://your-project-id.supabase.co
REACT_APP_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

### 5. Start the App

```bash
npm install
npm start
```

## Features Enabled by Supabase

- ✅ Cloud database storage
- ✅ Multi-user collaboration  
- ✅ Automatic user authentication
- ✅ Data persistence across devices
- ✅ Built-in distance calculations
- ✅ Row-level security

## Troubleshooting

**Error: "Missing Supabase environment variables"**
- Make sure `.env.local` exists and has the correct variables
- Restart your development server after creating `.env.local`

**Database errors**
- Make sure you ran the SQL schema in your Supabase dashboard
- Check that your project URL and key are correct

**Need help?**
- Check the [Supabase documentation](https://supabase.com/docs)
- Ensure your `.env.local` file is in the project root (same level as package.json)