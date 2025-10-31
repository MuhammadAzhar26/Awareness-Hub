-- Migration: fix_scenario_based_challenges
-- Created at: 1761883797

-- Apply scenario-based challenge updates from scenario_migration.sql
-- Module 1: Cryptography CTF

UPDATE stages SET 
  challenge_type = 'caesar-cipher'
WHERE id = 1;

UPDATE stages SET 
  challenge_type = 'password-builder'
WHERE id = 7;

UPDATE stages SET 
  challenge_type = 'email-detective'
WHERE id = 13;

UPDATE stages SET 
  challenge_type = 'social-sharing-quiz'
WHERE id = 60;;