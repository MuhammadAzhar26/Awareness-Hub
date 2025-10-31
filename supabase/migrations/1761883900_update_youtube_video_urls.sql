-- Migration: update_youtube_video_urls
-- Created at: 1761883900

-- Update all tool_stages with proper YouTube embed URLs

-- Wireshark stages (tool_module_id = 1)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/qTaOZrDnMzQ' WHERE tool_module_id = 1 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/lb1Dw0elw0Q' WHERE tool_module_id = 1 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/4_7A8Ikp5Cc' WHERE tool_module_id = 1 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/ZO46H_kI1bc' WHERE tool_module_id = 1 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/XJrtjJgXDOQ' WHERE tool_module_id = 1 AND stage_number = 5;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/wWKl2xVMPXQ' WHERE tool_module_id = 1 AND stage_number = 6;

-- Nmap stages (tool_module_id = 2)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/BHESuhyrGg4' WHERE tool_module_id = 2 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/4t4kBkMsDbQ' WHERE tool_module_id = 2 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/_GEEKcb_2vU' WHERE tool_module_id = 2 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/IoIsTrKrl-0' WHERE tool_module_id = 2 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/68llfWrss3k' WHERE tool_module_id = 2 AND stage_number = 5;

-- Metasploit stages (tool_module_id = 3)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/CDgNCwJtn_w' WHERE tool_module_id = 3 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/cPNXqBofZGQ' WHERE tool_module_id = 3 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/Ft6tLATCIVQ' WHERE tool_module_id = 3 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/TCPyoWHy4eA' WHERE tool_module_id = 3 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/8lR27r8Y_ik' WHERE tool_module_id = 3 AND stage_number = 5;

-- Burp Suite stages (tool_module_id = 4)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/G3hpAeoZ4ek' WHERE tool_module_id = 4 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/jTED8UBr6KM' WHERE tool_module_id = 4 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/QiNLNDSLuJY' WHERE tool_module_id = 4 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/r46b9L6UQDo' WHERE tool_module_id = 4 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/GxvFqgCBW-8' WHERE tool_module_id = 4 AND stage_number = 5;

-- Nessus stages (tool_module_id = 5)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/lT6Px9zJM3s' WHERE tool_module_id = 5 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/ZEuwX2FcXAE' WHERE tool_module_id = 5 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/E3SrgsVKQSQ' WHERE tool_module_id = 5 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/DxXvxqBJvC8' WHERE tool_module_id = 5 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/4OMZ7Iu0N_c' WHERE tool_module_id = 5 AND stage_number = 5;

-- OpenVAS stages (tool_module_id = 6)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/vwtUszEqr6g' WHERE tool_module_id = 6 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/VX8BYy0OgPo' WHERE tool_module_id = 6 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/rFa3lCw-HLE' WHERE tool_module_id = 6 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/hq9vIGvHlFU' WHERE tool_module_id = 6 AND stage_number = 4;

-- Autopsy stages (tool_module_id = 7)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/q334Iq-28e8' WHERE tool_module_id = 7 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/S6V66G2tVr8' WHERE tool_module_id = 7 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/-nkuM9Rzbns' WHERE tool_module_id = 7 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/o6boK9dG-Lc' WHERE tool_module_id = 7 AND stage_number = 4;

-- Volatility stages (tool_module_id = 8)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/A2AZhJdmeYU' WHERE tool_module_id = 8 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/2S_pi9qnIo8' WHERE tool_module_id = 8 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/KsMDV00Dd3Y' WHERE tool_module_id = 8 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/ypjbB9BQvL0' WHERE tool_module_id = 8 AND stage_number = 4;

-- John the Ripper stages (tool_module_id = 9)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/XjVYl1Ts6XI' WHERE tool_module_id = 9 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/JoSSLPdx-No' WHERE tool_module_id = 9 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/UvN8eIz4Xlw' WHERE tool_module_id = 9 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/mSzCJXoWCLU' WHERE tool_module_id = 9 AND stage_number = 4;

-- Hashcat stages (tool_module_id = 10)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/rm7Beq3cGKI' WHERE tool_module_id = 10 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/0L3gxnFCVzw' WHERE tool_module_id = 10 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/G_0PGbM9U4I' WHERE tool_module_id = 10 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/RiHqpvH1pKE' WHERE tool_module_id = 10 AND stage_number = 4;

-- Kali Linux stages (tool_module_id = 11)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/lZAoFs75_cs' WHERE tool_module_id = 11 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/tpNOq3YKN_I' WHERE tool_module_id = 11 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/U1w4T03B30I' WHERE tool_module_id = 11 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/18IK5BVI2Zo' WHERE tool_module_id = 11 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/2TofunAI6fU' WHERE tool_module_id = 11 AND stage_number = 5;

-- Security Integration stages (tool_module_id = 12)
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/yFQaI8vcxQY' WHERE tool_module_id = 12 AND stage_number = 1;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/qHXjH3SKfEU' WHERE tool_module_id = 12 AND stage_number = 2;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/hxREXzfatcU' WHERE tool_module_id = 12 AND stage_number = 3;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/3Kq1MIfTWCE' WHERE tool_module_id = 12 AND stage_number = 4;
UPDATE tool_stages SET video_url = 'https://www.youtube.com/embed/FwdZSG2wIU0' WHERE tool_module_id = 12 AND stage_number = 5;

-- Update DFIR stages with YouTube URLs
-- Incident Response Fundamentals (dfir_module_id = 1)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/0icJEyLZSPc' WHERE dfir_module_id = 1 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/xThzjvHYzPw' WHERE dfir_module_id = 1 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/JnYdI-VUIbU' WHERE dfir_module_id = 1 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/Ts68kJ-oJjI' WHERE dfir_module_id = 1 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/FKVhfvGGO0w' WHERE dfir_module_id = 1 AND stage_number = 5;

-- Digital Evidence Collection (dfir_module_id = 2)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/M6zoycd2xdI' WHERE dfir_module_id = 2 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/6N8jqoEWvEI' WHERE dfir_module_id = 2 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/FcPHCyR9o3s' WHERE dfir_module_id = 2 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/pJFSqsWbfXM' WHERE dfir_module_id = 2 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/K6VcTx5DGis' WHERE dfir_module_id = 2 AND stage_number = 5;

-- Memory Forensics (dfir_module_id = 3)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/A2AZhJdmeYU' WHERE dfir_module_id = 3 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/2S_pi9qnIo8' WHERE dfir_module_id = 3 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/KsMDV00Dd3Y' WHERE dfir_module_id = 3 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/eluS7_eSm8M' WHERE dfir_module_id = 3 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/Cs0Gc3GtfZY' WHERE dfir_module_id = 3 AND stage_number = 5;

-- File System Analysis (dfir_module_id = 4)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/q334Iq-28e8' WHERE dfir_module_id = 4 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/o6boK9dG-Lc' WHERE dfir_module_id = 4 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/FWY0QaAu4Tg' WHERE dfir_module_id = 4 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/8o1XbnYlQ5k' WHERE dfir_module_id = 4 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/wUVLfB_XdJE' WHERE dfir_module_id = 4 AND stage_number = 5;

-- Malware Analysis (dfir_module_id = 5)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/S8eKq0sUtdU' WHERE dfir_module_id = 5 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/QH0o0RRfH7Y' WHERE dfir_module_id = 5 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/6v0T2L7ZCRY' WHERE dfir_module_id = 5 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/k1-YDRwSm0A' WHERE dfir_module_id = 5 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/ZEeEMdBSWvk' WHERE dfir_module_id = 5 AND stage_number = 5;

-- Threat Hunting (dfir_module_id = 6)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/sRIXXHqE7jc' WHERE dfir_module_id = 6 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/J_o5a8tBFFM' WHERE dfir_module_id = 6 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/xTwzF7OGDss' WHERE dfir_module_id = 6 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/YUU9g8Cdo28' WHERE dfir_module_id = 6 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/kWoXlxu7rj8' WHERE dfir_module_id = 6 AND stage_number = 5;

-- Chain of Custody (dfir_module_id = 7)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/4S5jcJfJvFo' WHERE dfir_module_id = 7 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/rOmvQH3yv-Q' WHERE dfir_module_id = 7 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/gk4voXL1eBQ' WHERE dfir_module_id = 7 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/p6yJ6qwCLB8' WHERE dfir_module_id = 7 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/kJVa7_OsEPw' WHERE dfir_module_id = 7 AND stage_number = 5;

-- Court-Ready Reports (dfir_module_id = 8)
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/gEZB8CPqE6o' WHERE dfir_module_id = 8 AND stage_number = 1;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/4bJfh5SQ4Sc' WHERE dfir_module_id = 8 AND stage_number = 2;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/DW0nMYCCHRw' WHERE dfir_module_id = 8 AND stage_number = 3;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/KhPVTF6tJSY' WHERE dfir_module_id = 8 AND stage_number = 4;
UPDATE dfir_stages SET video_url = 'https://www.youtube.com/embed/e3MN7oYf4V0' WHERE dfir_module_id = 8 AND stage_number = 5;;