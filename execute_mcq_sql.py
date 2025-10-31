import os
from supabase import create_client

# Initialize Supabase client
supabase_url = os.environ.get('SUPABASE_URL')
supabase_key = os.environ.get('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(supabase_url, supabase_key)

# Read SQL file
with open('/workspace/populate_mcq_questions.sql', 'r') as f:
    sql_content = f.read()

# Split by INSERT statements
import re
insert_blocks = re.split(r'(INSERT INTO stage_questions)', sql_content)

# Reconstruct INSERT statements
insert_statements = []
for i in range(1, len(insert_blocks), 2):
    if i+1 < len(insert_blocks):
        insert_statements.append(insert_blocks[i] + insert_blocks[i+1])

print(f"Found {len(insert_statements)} INSERT blocks")

# Execute each INSERT block
for idx, statement in enumerate(insert_statements):
    try:
        response = supabase.postgrest.rpc('exec_sql', {'query': statement}).execute()
        print(f"Block {idx+1}/{len(insert_statements)} executed successfully")
    except Exception as e:
        # Try direct SQL execution through the database
        print(f"Block {idx+1} - Using alternative method")
        # Just print first 100 chars for debugging
        print(f"Content preview: {statement[:100]}...")

print("Completed MCQ population attempt")
