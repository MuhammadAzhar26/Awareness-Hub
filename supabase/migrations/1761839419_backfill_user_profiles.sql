-- Migration: backfill_user_profiles
-- Created at: 1761839419

-- Backfill profiles for existing users
INSERT INTO public.user_profiles (id, username, level, total_points, member_since)
SELECT 
  id,
  COALESCE(raw_user_meta_data->>'username', 'User' || substr(id::text, 1, 8)),
  1,
  0,
  created_at
FROM auth.users
WHERE id NOT IN (SELECT id FROM public.user_profiles)
ON CONFLICT (id) DO NOTHING;;