-- Populate MCQ Questions for Key Tool Stages
-- 10+ questions per module mixing basic commands and advanced scenarios

-- ===================================
-- WIRESHARK MASTERY - Stage 1 (ID: 1)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(1, 'Which command starts Wireshark in GUI mode?', 
'[{"id":"a","text":"wireshark"},{"id":"b","text":"tshark"},{"id":"c","text":"tcpdump"},{"id":"d","text":"wireshark-gui"}]'::jsonb,
'a', 'basic', 'The command "wireshark" launches the graphical user interface.', 10, 1),

(1, 'What permission group is required for packet capture on Linux?', 
'[{"id":"a","text":"sudo"},{"id":"b","text":"wireshark"},{"id":"c","text":"root"},{"id":"d","text":"netadmin"}]'::jsonb,
'b', 'basic', 'Users must be added to the wireshark group to capture packets without root.', 10, 2),

(1, 'Which file format does Wireshark use to save captures?', 
'[{"id":"a","text":".pcap"},{"id":"b","text":".cap"},{"id":"c","text":".wire"},{"id":"d","text":".pkt"}]'::jsonb,
'a', 'basic', 'Wireshark saves captures in .pcap (packet capture) format by default.', 10, 3),

(1, 'Which display filter shows only HTTP traffic?', 
'[{"id":"a","text":"tcp.port == 80"},{"id":"b","text":"http"},{"id":"c","text":"protocol == http"},{"id":"d","text":"port 80"}]'::jsonb,
'b', 'basic', 'The display filter "http" shows all HTTP protocol traffic regardless of port.', 10, 4),

(1, 'What does the -k flag do when starting Wireshark?', 
'[{"id":"a","text":"Kill existing instance"},{"id":"b","text":"Start capture immediately"},{"id":"c","text":"Keep running"},{"id":"d","text":"Kiosk mode"}]'::jsonb,
'b', 'basic', 'The -k flag starts packet capture immediately on launch.', 10, 5),

(1, 'Which command line tool is Wireshark''s CLI equivalent?', 
'[{"id":"a","text":"tcpdump"},{"id":"b","text":"tshark"},{"id":"c","text":"capinfos"},{"id":"d","text":"dumpcap"}]'::jsonb,
'b', 'basic', 'tshark is the command-line version of Wireshark with similar functionality.', 10, 6),

(1, 'How do you filter for DNS queries in Wireshark?', 
'[{"id":"a","text":"port 53"},{"id":"b","text":"dns.query"},{"id":"c","text":"udp.port == 53"},{"id":"d","text":"protocol dns"}]'::jsonb,
'b', 'basic', 'The display filter "dns.query" specifically shows DNS query packets.', 10, 7),

(1, 'What command captures 100 packets and then stops?', 
'[{"id":"a","text":"tshark -c 100"},{"id":"b","text":"wireshark -n 100"},{"id":"c","text":"tcpdump -c 100"},{"id":"d","text":"Both A and C"}]'::jsonb,
'd', 'basic', 'Both tshark and tcpdump use -c flag to specify packet count.', 10, 8),

(1, 'You are investigating potential malware C2 traffic. Which Wireshark feature would help identify suspicious periodic connections?', 
'[{"id":"a","text":"Statistics > Conversations"},{"id":"b","text":"Statistics > IO Graphs"},{"id":"c","text":"Follow TCP Stream"},{"id":"d","text":"Protocol Hierarchy"}]'::jsonb,
'b', 'advanced', 'IO Graphs visualize traffic patterns over time, making periodic beaconing behavior visible.', 15, 9),

(1, 'You found encrypted HTTPS traffic suspected of data exfiltration. What is the BEST approach to analyze it?', 
'[{"id":"a","text":"Try to decrypt using rainbow tables"},{"id":"b","text":"Analyze packet sizes and timing patterns"},{"id":"c","text":"Use Wireshark decryption with SSL keys"},{"id":"d","text":"Focus on DNS queries instead"}]'::jsonb,
'c', 'advanced', 'If SSL/TLS keys are available (from memory dump or key log file), Wireshark can decrypt the traffic for analysis.', 15, 10),

(1, 'During incident response, you need to capture traffic on a high-volume network interface. Which tool is most efficient?', 
'[{"id":"a","text":"wireshark GUI"},{"id":"b","text":"tshark with ring buffer"},{"id":"c","text":"dumpcap with multiple files"},{"id":"d","text":"tcpdump with filters"}]'::jsonb,
'c', 'advanced', 'dumpcap is the most efficient capture engine with minimal overhead, and multiple files prevent single large files.', 15, 11),

(1, 'You are analyzing a network attack where attackers used fragmented packets. Which Wireshark feature reassembles them?', 
'[{"id":"a","text":"Edit > Preferences > Protocols"},{"id":"b","text":"Analyze > Expert Information"},{"id":"c","text":"IP reassembly (automatic)"},{"id":"d","text":"Statistics > IPv4 Statistics"}]'::jsonb,
'c', 'advanced', 'Wireshark automatically reassembles fragmented IP packets when "Reassemble fragmented IP datagrams" is enabled in preferences.', 15, 12);

-- ===================================
-- NMAP SCANNING TECHNIQUES - Stage 1 (ID: 7)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(7, 'Which flag performs a TCP SYN scan in Nmap?', 
'[{"id":"a","text":"-sS"},{"id":"b","text":"-sT"},{"id":"c","text":"-sU"},{"id":"d","text":"-sA"}]'::jsonb,
'a', 'basic', 'The -sS flag performs a SYN scan, also known as half-open scanning.', 10, 1),

(7, 'What does the -sV flag do in Nmap?', 
'[{"id":"a","text":"Scan vulnerabilities"},{"id":"b","text":"Version detection"},{"id":"c","text":"Verbose output"},{"id":"d","text":"Verify hosts"}]'::jsonb,
'b', 'basic', 'The -sV flag enables service version detection to identify running software versions.', 10, 2),

(7, 'Which flag is used for UDP scanning?', 
'[{"id":"a","text":"-sU"},{"id":"b","text":"-sT"},{"id":"c","text":"-sS"},{"id":"d","text":"-sP"}]'::jsonb,
'a', 'basic', 'The -sU flag performs UDP port scanning.', 10, 3),

(7, 'What is the default TCP port scan range in Nmap?', 
'[{"id":"a","text":"1-65535"},{"id":"b","text":"1-1024"},{"id":"c","text":"1-1000"},{"id":"d","text":"Top 1000 ports"}]'::jsonb,
'd', 'basic', 'By default, Nmap scans the top 1000 most common ports, not all 65535.', 10, 4),

(7, 'Which flag increases Nmap verbosity?', 
'[{"id":"a","text":"-v"},{"id":"b","text":"-vv"},{"id":"c","text":"-d"},{"id":"d","text":"Both A and B"}]'::jsonb,
'd', 'basic', 'Both -v and -vv increase verbosity, with -vv providing more detailed output.', 10, 5),

(7, 'How do you scan only ports 80, 443, and 8080?', 
'[{"id":"a","text":"-p 80,443,8080"},{"id":"b","text":"--ports 80,443,8080"},{"id":"c","text":"-ports 80-8080"},{"id":"d","text":"-p 80 443 8080"}]'::jsonb,
'a', 'basic', 'The -p flag with comma-separated values scans specific ports.', 10, 6),

(7, 'Which flag enables OS detection?', 
'[{"id":"a","text":"-O"},{"id":"b","text":"--os"},{"id":"c","text":"-sO"},{"id":"d","text":"--detect-os"}]'::jsonb,
'a', 'basic', 'The -O flag attempts to detect the target operating system.', 10, 7),

(7, 'What command scans all 65535 ports?', 
'[{"id":"a","text":"nmap -p- target"},{"id":"b","text":"nmap -p 1-65535 target"},{"id":"c","text":"nmap --all-ports target"},{"id":"d","text":"Both A and B"}]'::jsonb,
'd', 'basic', 'Both -p- and -p 1-65535 scan all TCP ports.', 10, 8),

(7, 'You are performing stealth reconnaissance on a hardened target. Which scan type would be MOST effective?', 
'[{"id":"a","text":"-sS (SYN scan)"},{"id":"b","text":"-sN (NULL scan)"},{"id":"c","text":"-sF (FIN scan)"},{"id":"d","text":"-sX (Xmas scan)"}]'::jsonb,
'c', 'advanced', 'FIN scans can bypass some stateless firewalls and IDS systems that don''t inspect FIN packets as thoroughly.', 15, 9),

(7, 'You need to identify vulnerable services on a network. What is the BEST Nmap command strategy?', 
'[{"id":"a","text":"nmap -sV -sC --script vuln target"},{"id":"b","text":"nmap -A -p- target"},{"id":"c","text":"nmap -O -sS target"},{"id":"d","text":"nmap --script all target"}]'::jsonb,
'a', 'advanced', 'Combining -sV (version detection), -sC (default scripts), and --script vuln runs vulnerability detection scripts.', 15, 10),

(7, 'You are pentesting an air-gapped network with strict egress filtering. What scanning approach is most appropriate?', 
'[{"id":"a","text":"Aggressive scan with -A flag"},{"id":"b","text":"Slow scan with timing templates -T1 or -T2"},{"id":"c","text":"Fast scan with -T5"},{"id":"d","text":"Standard scan with no timing options"}]'::jsonb,
'b', 'advanced', 'Slow scans (-T1/-T2) are less likely to trigger IDS/IPS and are appropriate for sensitive environments.', 15, 11),

(7, 'During a pentest, firewalls are blocking your SYN scans. Which technique might bypass stateless firewalls?', 
'[{"id":"a","text":"Use -sA ACK scan"},{"id":"b","text":"Fragment packets with -f"},{"id":"c","text":"Use -sW Window scan"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'ACK scans, packet fragmentation, and Window scans can all help bypass certain firewall configurations.', 15, 12);

-- ===================================
-- METASPLOIT FRAMEWORK - Stage 1 (ID: 12)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(12, 'What command starts the Metasploit console?', 
'[{"id":"a","text":"msfconsole"},{"id":"b","text":"metasploit"},{"id":"c","text":"msf"},{"id":"d","text":"msfcli"}]'::jsonb,
'a', 'basic', 'The msfconsole command launches the interactive Metasploit console.', 10, 1),

(12, 'Which command searches for exploits in Metasploit?', 
'[{"id":"a","text":"search"},{"id":"b","text":"find"},{"id":"c","text":"locate"},{"id":"d","text":"query"}]'::jsonb,
'a', 'basic', 'The "search" command finds modules by name, type, platform, or other attributes.', 10, 2),

(12, 'What command shows available options for a module?', 
'[{"id":"a","text":"show options"},{"id":"b","text":"options"},{"id":"c","text":"get options"},{"id":"d","text":"list"}]'::jsonb,
'a', 'basic', 'The "show options" command displays all configurable parameters for the current module.', 10, 3),

(12, 'How do you set the target IP address?', 
'[{"id":"a","text":"set RHOST <ip>"},{"id":"b","text":"set TARGET <ip>"},{"id":"c","text":"set IP <ip>"},{"id":"d","text":"set HOST <ip>"}]'::jsonb,
'a', 'basic', 'RHOST (Remote Host) is the standard variable for target IP addresses.', 10, 4),

(12, 'Which command executes the loaded exploit?', 
'[{"id":"a","text":"run"},{"id":"b","text":"exploit"},{"id":"c","text":"execute"},{"id":"d","text":"Both A and B"}]'::jsonb,
'd', 'basic', 'Both "run" and "exploit" commands launch the loaded module.', 10, 5),

(12, 'What is a payload in Metasploit?', 
'[{"id":"a","text":"The exploit code"},{"id":"b","text":"The code that runs after successful exploitation"},{"id":"c","text":"The target system"},{"id":"d","text":"The scanning module"}]'::jsonb,
'b', 'basic', 'A payload is the code executed on the target system after successful exploitation.', 10, 6),

(12, 'Which command lists all available payloads?', 
'[{"id":"a","text":"show payloads"},{"id":"b","text":"list payloads"},{"id":"c","text":"get payloads"},{"id":"d","text":"payloads"}]'::jsonb,
'a', 'basic', 'The "show payloads" command displays all payload modules compatible with the current exploit.', 10, 7),

(12, 'What is Meterpreter?', 
'[{"id":"a","text":"A scanning tool"},{"id":"b","text":"An advanced payload"},{"id":"c","text":"An exploit module"},{"id":"d","text":"A database"}]'::jsonb,
'b', 'basic', 'Meterpreter is an advanced, dynamically extensible payload that operates in memory.', 10, 8),

(12, 'You gained initial access to a network. What Metasploit module would help you pivot to internal systems?', 
'[{"id":"a","text":"auxiliary/scanner/portscan/tcp"},{"id":"b","text":"post/windows/manage/autoroute"},{"id":"c","text":"exploit/multi/handler"},{"id":"d","text":"auxiliary/admin/smb/psexec"}]'::jsonb,
'b', 'advanced', 'The autoroute module allows pivoting through a compromised host to access internal network segments.', 15, 9),

(12, 'During post-exploitation, you need to maintain persistence. Which Meterpreter command is MOST effective?', 
'[{"id":"a","text":"run persistence -X"},{"id":"b","text":"run scheduleme"},{"id":"c","text":"exploit/windows/local/persistence"},{"id":"d","text":"Both A and C"}]'::jsonb,
'd', 'advanced', 'Both the persistence script and persistence exploit module can establish persistent access mechanisms.', 15, 10),

(12, 'You are exploiting a web application. Which Metasploit feature would help automate the exploitation process?', 
'[{"id":"a","text":"AutoPwn"},{"id":"b","text":"Auxiliary modules"},{"id":"c","text":"Resource scripts"},{"id":"d","text":"Meterpreter"}]'::jsonb,
'c', 'advanced', 'Resource scripts (.rc files) automate sequences of Metasploit commands for repeatable exploitation.', 15, 11),

(12, 'You have a Meterpreter session but need to bypass AV. What technique is recommended?', 
'[{"id":"a","text":"Use encoder modules"},{"id":"b","text":"Migrate to trusted process"},{"id":"c","text":"Use execute -H -f"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'Encoding payloads, process migration, and hidden execution all help evade antivirus detection.', 15, 12);

-- ===================================
-- BURP SUITE PRO - Stage 1 (ID: 17)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(17, 'What is the default proxy port for Burp Suite?', 
'[{"id":"a","text":"8080"},{"id":"b","text":"8888"},{"id":"c","text":"9090"},{"id":"d","text":"3128"}]'::jsonb,
'a', 'basic', 'Burp Suite uses port 8080 as the default proxy listener.', 10, 1),

(17, 'Which Burp tool intercepts HTTP requests and responses?', 
'[{"id":"a","text":"Proxy"},{"id":"b","text":"Interceptor"},{"id":"c","text":"Scanner"},{"id":"d","text":"Spider"}]'::jsonb,
'a', 'basic', 'The Proxy tool intercepts and allows modification of HTTP/HTTPS traffic.', 10, 2),

(17, 'What is the Intruder tool used for?', 
'[{"id":"a","text":"Automated attacks"},{"id":"b","text":"Fuzzing inputs"},{"id":"c","text":"Brute force testing"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'basic', 'Intruder performs automated customized attacks including fuzzing and brute forcing.', 10, 3),

(17, 'Which tab shows the raw HTTP request and response?', 
'[{"id":"a","text":"Raw"},{"id":"b","text":"HTTP"},{"id":"c","text":"Message"},{"id":"d","text":"Details"}]'::jsonb,
'a', 'basic', 'The Raw tab displays unprocessed HTTP messages in their original format.', 10, 4),

(17, 'What is the Repeater tool used for?', 
'[{"id":"a","text":"Repeating requests automatically"},{"id":"b","text":"Manual request manipulation and replay"},{"id":"c","text":"Duplicating sessions"},{"id":"d","text":"Retrying failed requests"}]'::jsonb,
'b', 'basic', 'Repeater allows manual modification and resubmission of individual HTTP requests.', 10, 5),

(17, 'How do you enable SSL/TLS interception in Burp?', 
'[{"id":"a","text":"Install Burp CA certificate"},{"id":"b","text":"Enable HTTPS in settings"},{"id":"c","text":"Use --ssl flag"},{"id":"d","text":"Configure SSL proxy"}]'::jsonb,
'a', 'basic', 'Installing Burp''s CA certificate in the browser allows interception of HTTPS traffic.', 10, 6),

(17, 'Which Burp extension is commonly used for SQL injection analysis?', 
'[{"id":"a","text":"SQLiPy"},{"id":"b","text":"SQLMap Integration"},{"id":"c","text":"Active Scan++"},{"id":"d","text":"CO2"}]'::jsonb,
'b', 'basic', 'The SQLMap Integration extension allows using SQLMap directly from Burp Suite.', 10, 7),

(17, 'What does the Spider tool do?', 
'[{"id":"a","text":"Analyzes spiders"},{"id":"b","text":"Crawls application content"},{"id":"c","text":"Tests for vulnerabilities"},{"id":"d","text":"Maps network topology"}]'::jsonb,
'b', 'basic', 'Spider automatically crawls web applications to discover content and map structure.', 10, 8),

(17, 'You are testing authentication mechanisms. Which Burp tool is MOST appropriate for testing login bypass vulnerabilities?', 
'[{"id":"a","text":"Sequencer"},{"id":"b","text":"Intruder with username/password lists"},{"id":"c","text":"Repeater with modified requests"},{"id":"d","text":"Both B and C"}]'::jsonb,
'd', 'advanced', 'Both Intruder (for automated testing) and Repeater (for manual manipulation) are effective for authentication testing.', 15, 9),

(17, 'You need to test for parameter tampering. What is the BEST Burp Suite workflow?', 
'[{"id":"a","text":"Intercept request, modify parameters, forward"},{"id":"b","text":"Use Intruder with payload positions on parameters"},{"id":"c","text":"Send to Repeater and manually test variations"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'Comprehensive parameter testing uses Proxy interception, Intruder automation, and Repeater for manual testing.', 15, 10),

(17, 'During a pentest, you need to fuzz a JSON API. What Burp Intruder attack type is most suitable?', 
'[{"id":"a","text":"Sniper"},{"id":"b","text":"Battering ram"},{"id":"c","text":"Pitchfork"},{"id":"d","text":"Cluster bomb"}]'::jsonb,
'a', 'advanced', 'Sniper attack type tests each payload position independently, ideal for methodical JSON field fuzzing.', 15, 11),

(17, 'You discovered a potential session fixation vulnerability. Which Burp tool helps analyze session token randomness?', 
'[{"id":"a","text":"Sequencer"},{"id":"b","text":"Comparer"},{"id":"c","text":"Decoder"},{"id":"d","text":"Intruder"}]'::jsonb,
'a', 'advanced', 'Sequencer performs statistical analysis of session tokens to identify weak randomness.', 15, 12);

-- ===================================
-- AUTOPSY FORENSICS - Stage 1 (ID: 31)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(31, 'What type of forensics tool is Autopsy?', 
'[{"id":"a","text":"Network forensics"},{"id":"b","text":"Digital forensics platform"},{"id":"c","text":"Memory forensics"},{"id":"d","text":"Mobile forensics"}]'::jsonb,
'b', 'basic', 'Autopsy is a comprehensive digital forensics platform for analyzing file systems and artifacts.', 10, 1),

(31, 'What is the first step in Autopsy?', 
'[{"id":"a","text":"Add data source"},{"id":"b","text":"Create new case"},{"id":"c","text":"Run analysis"},{"id":"d","text":"Generate report"}]'::jsonb,
'b', 'basic', 'Creating a new case is the first step, which organizes all investigation data.', 10, 2),

(31, 'Which file systems does Autopsy support?', 
'[{"id":"a","text":"NTFS"},{"id":"b","text":"FAT32"},{"id":"c","text":"Ext3/Ext4"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'basic', 'Autopsy supports all major file systems including NTFS, FAT, and Ext variants.', 10, 3),

(31, 'What is an artifact in Autopsy?', 
'[{"id":"a","text":"A deleted file"},{"id":"b","text":"Evidence of user activity"},{"id":"c","text":"System log"},{"id":"d","text":"Image file"}]'::jsonb,
'b', 'basic', 'Artifacts are traces of user activity such as web history, downloads, or program execution.', 10, 4),

(31, 'Which view shows files organized by type?', 
'[{"id":"a","text":"File Types"},{"id":"b","text":"Directory Tree"},{"id":"c","text":"Timeline"},{"id":"d","text":"Results"}]'::jsonb,
'a', 'basic', 'The File Types view categorizes files by extension and type for easier analysis.', 10, 5),

(31, 'What does the Timeline feature do?', 
'[{"id":"a","text":"Shows file creation times"},{"id":"b","text":"Displays chronological activity"},{"id":"c","text":"Tracks user sessions"},{"id":"d","text":"Monitors real-time events"}]'::jsonb,
'b', 'basic', 'Timeline displays file system events chronologically, helping reconstruct activity sequences.', 10, 6),

(31, 'How do you search for specific files in Autopsy?', 
'[{"id":"a","text":"Keyword Search"},{"id":"b","text":"File Search tool"},{"id":"c","text":"Both A and B"},{"id":"d","text":"Regular expressions only"}]'::jsonb,
'c', 'basic', 'Both Keyword Search (for content) and File Search (for names) help locate specific files.', 10, 7),

(31, 'What format are Autopsy reports generated in?', 
'[{"id":"a","text":"HTML"},{"id":"b","text":"PDF"},{"id":"c","text":"Excel"},{"id":"d","text":"All of the above"}]'::jsonb,
'a', 'basic', 'Autopsy generates HTML reports with interactive navigation and detailed findings.', 10, 8),

(31, 'You are analyzing evidence from a suspected data breach. Which Autopsy module identifies recently accessed files?', 
'[{"id":"a","text":"Recent Activity"},{"id":"b","text":"File Type Analysis"},{"id":"c","text":"Hash Lookup"},{"id":"d","text":"Keyword Search"}]'::jsonb,
'a', 'advanced', 'The Recent Activity module identifies recently opened documents, accessed folders, and user activity.', 15, 9),

(31, 'During investigation, you need to identify when files were copied to a USB drive. Which artifact provides this information?', 
'[{"id":"a","text":"USB Device Artifacts"},{"id":"b","text":"Windows LNK files"},{"id":"c","text":"Registry analysis"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'USB artifacts, LNK files, and Registry entries all provide evidence of USB device usage and file transfers.', 15, 10),

(31, 'You found encrypted files during forensic analysis. What is the BEST Autopsy approach?', 
'[{"id":"a","text":"Attempt password cracking"},{"id":"b","text":"Look for encryption keys in memory/registry"},{"id":"c","text":"Analyze file metadata and access patterns"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'A comprehensive approach includes key recovery, metadata analysis, and access pattern investigation.', 15, 11),

(31, 'You need to establish chain of custody. Which Autopsy feature helps document evidence handling?', 
'[{"id":"a","text":"Case notes and tags"},{"id":"b","text":"Automated logging"},{"id":"c","text":"Report generation with metadata"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'Autopsy''s case management, logging, and reporting features all support chain of custody documentation.', 15, 12);

-- ===================================
-- VOLATILITY FRAMEWORK - Stage 1 (ID: 35)
-- ===================================

INSERT INTO stage_questions (tool_stage_id, question_text, options, correct_option, difficulty, explanation, points, order_index) VALUES

(35, 'What type of forensics does Volatility specialize in?', 
'[{"id":"a","text":"Disk forensics"},{"id":"b","text":"Memory forensics"},{"id":"c","text":"Network forensics"},{"id":"d","text":"Mobile forensics"}]'::jsonb,
'b', 'basic', 'Volatility is a memory forensics framework for analyzing RAM dumps.', 10, 1),

(35, 'Which command lists running processes?', 
'[{"id":"a","text":"pslist"},{"id":"b","text":"processes"},{"id":"c","text":"tasklist"},{"id":"d","text":"procs"}]'::jsonb,
'a', 'basic', 'The pslist plugin displays running processes from memory.', 10, 2),

(35, 'What flag specifies the memory dump file?', 
'[{"id":"a","text":"-f"},{"id":"b","text":"--file"},{"id":"c","text":"-m"},{"id":"d","text":"--memory"}]'::jsonb,
'a', 'basic', 'The -f flag specifies the path to the memory dump file.', 10, 3),

(35, 'Which plugin identifies network connections?', 
'[{"id":"a","text":"netscan"},{"id":"b","text":"connections"},{"id":"c","text":"netstat"},{"id":"d","text":"network"}]'::jsonb,
'a', 'basic', 'The netscan plugin scans for network connection artifacts in memory.', 10, 4),

(35, 'What command shows loaded kernel modules?', 
'[{"id":"a","text":"modules"},{"id":"b","text":"lsmod"},{"id":"c","text":"driverscan"},{"id":"d","text":"Both A and B"}]'::jsonb,
'a', 'basic', 'The modules plugin lists loaded kernel modules from memory.', 10, 5),

(35, 'Which plugin analyzes browser history?', 
'[{"id":"a","text":"iehistory"},{"id":"b","text":"chromehistory"},{"id":"c","text":"firefoxhistory"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'basic', 'Volatility has plugins for extracting history from IE, Chrome, and Firefox.', 10, 6),

(35, 'What does the imageinfo command do?', 
'[{"id":"a","text":"Shows image files"},{"id":"b","text":"Identifies memory dump profile"},{"id":"c","text":"Displays image metadata"},{"id":"d","text":"Analyzes picture files"}]'::jsonb,
'b', 'basic', 'The imageinfo command identifies the operating system profile for the memory dump.', 10, 7),

(35, 'Which plugin dumps process memory?', 
'[{"id":"a","text":"procdump"},{"id":"b","text":"memdump"},{"id":"c","text":"dumpmem"},{"id":"d","text":"processdump"}]'::jsonb,
'b', 'basic', 'The memdump plugin extracts the memory contents of a specific process.', 10, 8),

(35, 'You are investigating malware persistence mechanisms. Which Volatility plugin identifies auto-start locations?', 
'[{"id":"a","text":"autoruns"},{"id":"b","text":"svcscan"},{"id":"c","text":"Both A and B"},{"id":"d","text":"shimcache"}]'::jsonb,
'c', 'advanced', 'Both autoruns (for registry persistence) and svcscan (for services) help identify persistence mechanisms.', 15, 9),

(35, 'You need to find decrypted passwords in memory. Which approach is MOST effective?', 
'[{"id":"a","text":"hashdump for password hashes"},{"id":"b","text":"mimikatz plugin for credentials"},{"id":"c","text":"strings | grep password"},{"id":"d","text":"Both A and B"}]'::jsonb,
'd', 'advanced', 'Both hashdump (for SAM hashes) and mimikatz plugin (for plaintext credentials) extract password data.', 15, 10),

(35, 'During rootkit analysis, you suspect DKOM (Direct Kernel Object Manipulation). Which technique detects hidden processes?', 
'[{"id":"a","text":"Compare pslist vs psscan"},{"id":"b","text":"Use psxview for cross-validation"},{"id":"c","text":"Check for unlinked EPROCESS blocks"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'All techniques help identify processes hidden by DKOM: cross-referencing plugins, psxview validation, and EPROCESS scanning.', 15, 11),

(35, 'You are analyzing a memory dump for evidence of code injection. Which Volatility plugins are MOST relevant?', 
'[{"id":"a","text":"malfind"},{"id":"b","text":"ldrmodules"},{"id":"c","text":"hollowfind"},{"id":"d","text":"All of the above"}]'::jsonb,
'd', 'advanced', 'malfind detects injected code, ldrmodules finds unlinked DLLs, and hollowfind identifies process hollowing.', 15, 12);
