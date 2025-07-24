const { createClient } = require('@supabase/supabase-js');
require('dotenv').config({ path: '.env.local' });

const supabaseUrl = process.env.REACT_APP_SUPABASE_URL;
const supabaseAnonKey = process.env.REACT_APP_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('❌ Missing Supabase environment variables in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseAnonKey);

const setupDatabase = async () => {
  console.log('🚀 Setting up database schema...');
  
  try {
    // Note: This would require service role key, not anon key
    // For security, this should be done via Supabase dashboard
    console.log('⚠️  For security reasons, please run the SQL schema manually:');
    console.log('');
    console.log('1. Go to: https://supabase.com/dashboard/project/fotqvdowavivpxxxiiqs/sql');
    console.log('2. Copy the contents of supabase-schema.sql');
    console.log('3. Paste and click "Run"');
    console.log('');
    console.log('✅ This creates the mosques table with all features');
    
  } catch (error) {
    console.error('❌ Error:', error.message);
  }
};

setupDatabase();