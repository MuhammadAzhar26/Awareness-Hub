-- Migration: add_challenge_data_column
-- Created at: 1761845101


-- Add challenge_data JSONB column to stages table to support interactive challenges
ALTER TABLE stages ADD COLUMN IF NOT EXISTS challenge_data JSONB;

-- Add video_url column to modules table (optional, for future use)
ALTER TABLE modules ADD COLUMN IF NOT EXISTS video_url TEXT;

COMMENT ON COLUMN stages.challenge_data IS 'Stores challenge-specific data like options, pairs, drag-drop items, etc.';
COMMENT ON COLUMN modules.video_url IS 'URL to module introduction video';
;