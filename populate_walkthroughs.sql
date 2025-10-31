-- Populate comprehensive walkthroughs for key cybersecurity tools
-- Categories: installation, commands, scenarios, advanced, troubleshooting

-- ========================================
-- WIRESHARK WALKTHROUGHS
-- ========================================

INSERT INTO walkthroughs (tool_name, category, title, content, code_examples, order_index) VALUES

('Wireshark', 'installation', 'Installation & Setup', 
'**Prerequisites:**
- Operating System: Linux, Windows, macOS
- Root/Administrator privileges for packet capture
- Network interface access

**Installation Steps:**

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install wireshark
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark $USER
```

**CentOS/RHEL:**
```bash
sudo yum install wireshark wireshark-gnome
sudo usermod -a -G wireshark $USER
```

**macOS:**
```bash
brew install wireshark
```

**Windows:**
- Download installer from wireshark.org
- Run installer with administrator privileges
- Install WinPcap/Npcap when prompted

**Post-Installation:**
- Logout and login for group membership to take effect
- Verify installation: `wireshark --version`
- Test capture permissions on network interface',
'[{"language":"bash","code":"sudo apt install wireshark"},{"language":"bash","code":"sudo usermod -a -G wireshark $USER"}]'::jsonb, 1),

('Wireshark', 'commands', 'Command Reference', 
'**GUI Launch:**
```bash
wireshark
```

**CLI Capture (tshark):**
```bash
# Capture 100 packets
tshark -i eth0 -c 100

# Capture with filter
tshark -i eth0 -f "port 80" -c 50

# Save to file
tshark -i eth0 -w capture.pcap -c 100

# Read from file
tshark -r capture.pcap
```

**Display Filters:**
```
http                        # All HTTP traffic
tcp.port == 80             # Traffic on TCP port 80
ip.addr == 192.168.1.1     # Traffic to/from IP
dns.qry.name contains "example"  # DNS queries
http.request.method == "POST"    # HTTP POST requests
```

**Capture Filters:**
```
port 80                    # Capture port 80
host 192.168.1.1          # Capture specific host
net 192.168.0.0/24        # Capture network range
tcp and port 443          # HTTPS traffic
not broadcast and not multicast  # Unicast only
```

**Advanced Commands:**
```bash
# Ring buffer capture
tshark -i eth0 -w capture -b filesize:10000 -b files:5

# Remote capture
ssh user@host tshark -i eth0 -w - | wireshark -k -i -

# Capture with time limit
timeout 60 tshark -i eth0 -w capture.pcap
```',
'[{"language":"bash","code":"tshark -i eth0 -c 100"},{"language":"text","code":"http.request.method == \"GET\""}]'::jsonb, 2),

('Wireshark', 'scenarios', 'Practical Scenarios', 
'**Scenario 1: Web Traffic Analysis**
Objective: Analyze HTTP traffic to identify user activity

Steps:
1. Start capture on web-facing interface
2. Apply display filter: `http`
3. Follow HTTP streams to see full conversations
4. Export objects to retrieve downloaded files
5. Analyze request/response patterns

**Scenario 2: DNS Troubleshooting**
Objective: Identify DNS resolution issues

Steps:
1. Capture on client network interface
2. Filter: `dns`
3. Look for query/response patterns
4. Check for NXDomain responses (failed lookups)
5. Measure query response times

**Scenario 3: Malware C2 Detection**
Objective: Identify command and control traffic

Steps:
1. Capture suspicious host traffic
2. Statistics > Conversations to identify connections
3. Statistics > IO Graphs to visualize periodic beaconing
4. Filter unusual ports or protocols
5. Analyze packet timing and patterns
6. Export suspicious streams for analysis

**Scenario 4: Network Performance**
Objective: Diagnose slow application performance

Steps:
1. Capture during slow period
2. Statistics > TCP Stream Graphs > Time-Sequence
3. Look for retransmissions: `tcp.analysis.retransmission`
4. Check window sizes: `tcp.window_size_value`
5. Identify bottlenecks',
'[{"language":"text","code":"http.request.uri contains \"admin\""},{"language":"text","code":"dns.flags.rcode == 3"}]'::jsonb, 3),

('Wireshark', 'advanced', 'Advanced Techniques', 
'**SSL/TLS Decryption:**
Requires SSL keys from server or SSLKEYLOGFILE

Configuration:
1. Edit > Preferences > Protocols > TLS
2. Add (Pre)-Master-Secret log filename
3. Chrome/Firefox: Set SSLKEYLOGFILE environment variable
4. Restart browser and capture traffic

**Custom Plugins:**
```lua
-- Lua dissector example
local myproto = Proto("myprotocol", "My Protocol")

function myproto.dissector(buffer, pinfo, tree)
    pinfo.cols.protocol = "MYPROTO"
    local subtree = tree:add(myproto, buffer())
    subtree:add(buffer(0,4), "Header: " .. buffer(0,4):string())
end

register_postdissector(myproto)
```

**Remote Capture:**
```bash
# Using SSH tunnel
ssh user@remote "tcpdump -i eth0 -U -s0 -w - ''port 80''" | wireshark -k -i -

# Using dumpcap
dumpcap -i eth0 -P -w - | ssh user@analyst wireshark -k -i -
```

**Automation:**
```bash
# Automated analysis
tshark -r capture.pcap -Y http.request -T fields \\
  -e frame.time -e ip.src -e http.request.uri > analysis.csv
```

**Performance Optimization:**
- Use dumpcap for high-volume captures
- Disable unnecessary protocols in preferences
- Use ring buffers for continuous capture
- Apply capture filters to reduce volume',
'[{"language":"lua","code":"local myproto = Proto(\"myprotocol\", \"My Protocol\")"},{"language":"bash","code":"tshark -r capture.pcap -Y http.request -T fields"}]'::jsonb, 4),

('Wireshark', 'troubleshooting', 'Troubleshooting Guide', 
'**Problem: Permission Denied**
Error: "You don''t have permission to capture"

Solutions:
```bash
# Add user to wireshark group
sudo usermod -a -G wireshark $USER
newgrp wireshark

# Or use sudo
sudo wireshark

# Check interface permissions
ls -l /dev/net/tun
```

**Problem: Interface Not Found**
Error: "No interfaces found"

Solutions:
- Check if network interfaces exist: `ip link show`
- Verify Wireshark has capture permissions
- Restart network services
- Check for conflicting capture tools

**Problem: High CPU Usage**
Symptom: Wireshark consuming 100% CPU

Solutions:
- Disable unnecessary protocol dissectors
- Apply capture filters to reduce packets
- Increase ring buffer size
- Use tshark instead of GUI for large captures
- Close unused capture windows

**Problem: Dropped Packets**
Warning: "X packets dropped"

Solutions:
```bash
# Increase buffer size
tshark -i eth0 -B 100 -w capture.pcap

# Use dumpcap (most efficient)
dumpcap -i eth0 -w capture.pcap -b filesize:100000
```

**Problem: Cannot Decrypt SSL**
Symptom: Encrypted traffic not decrypting

Solutions:
- Verify SSL keys are correct format
- Check TLS preferences are configured
- Ensure using correct cipher suites
- Verify SSLKEYLOGFILE is set for browser
- Check that Perfect Forward Secrecy is not enabled

**Common Error Messages:**
- "Invalid capture filter": Check filter syntax
- "Unknown host": DNS resolution issue
- "Short frame": Packet truncation, increase snaplen',
'[{"language":"bash","code":"sudo usermod -a -G wireshark $USER"},{"language":"bash","code":"tshark -i eth0 -B 100"}]'::jsonb, 5);

-- ========================================
-- NMAP WALKTHROUGHS
-- ========================================

INSERT INTO walkthroughs (tool_name, category, title, content, code_examples, order_index) VALUES

('Nmap', 'installation', 'Installation & Setup',
'**Prerequisites:**
- Operating System: Linux, Windows, macOS
- Root/Administrator privileges for some scan types
- Network connectivity

**Installation:**

**Ubuntu/Debian:**
```bash
sudo apt update
sudo apt install nmap
```

**CentOS/RHEL:**
```bash
sudo yum install nmap
```

**macOS:**
```bash
brew install nmap
```

**Windows:**
- Download installer from nmap.org
- Run with administrator privileges
- Add to PATH for command-line access

**Verification:**
```bash
nmap --version
nmap -V
```

**Configuration:**
- Default NSE scripts location: `/usr/share/nmap/scripts/`
- Custom scripts: `~/.nmap/`
- Update script database: `nmap --script-updatedb`',
'[{"language":"bash","code":"sudo apt install nmap"},{"language":"bash","code":"nmap --version"}]'::jsonb, 1),

('Nmap', 'commands', 'Command Reference',
'**Basic Scans:**
```bash
# Ping scan (host discovery)
nmap -sn 192.168.1.0/24

# TCP SYN scan
nmap -sS target.com

# TCP connect scan
nmap -sT target.com

# UDP scan
nmap -sU target.com
```

**Port Specification:**
```bash
# Scan specific ports
nmap -p 80,443 target.com

# Scan port range
nmap -p 1-1000 target.com

# Scan all ports
nmap -p- target.com

# Scan top ports
nmap --top-ports 100 target.com
```

**Service/Version Detection:**
```bash
# Version detection
nmap -sV target.com

# OS detection
nmap -O target.com

# Aggressive scan (OS, version, scripts, traceroute)
nmap -A target.com
```

**Timing Templates:**
```bash
nmap -T0 target.com  # Paranoid (IDS evasion)
nmap -T1 target.com  # Sneaky
nmap -T2 target.com  # Polite
nmap -T3 target.com  # Normal (default)
nmap -T4 target.com  # Aggressive
nmap -T5 target.com  # Insane
```

**NSE Scripts:**
```bash
# Default scripts
nmap -sC target.com

# Specific script category
nmap --script vuln target.com

# Multiple scripts
nmap --script "http-* and not http-slowloris" target.com

# Script with arguments
nmap --script http-wordpress-brute --script-args userdb=users.txt target.com
```

**Output Options:**
```bash
# Normal output
nmap -oN scan.txt target.com

# XML output
nmap -oX scan.xml target.com

# Grepable output
nmap -oG scan.grep target.com

# All formats
nmap -oA scan target.com
```',
'[{"language":"bash","code":"nmap -sS -p- target.com"},{"language":"bash","code":"nmap -A -T4 target.com"}]'::jsonb, 2),

('Nmap', 'scenarios', 'Practical Scenarios',
'**Scenario 1: Network Discovery**
Objective: Identify active hosts on network

```bash
# Ping sweep
nmap -sn 192.168.1.0/24

# With traceroute
nmap -sn --traceroute 192.168.1.0/24

# Fast scan with minimal packets
nmap -sn -T5 192.168.1.0/24
```

**Scenario 2: Vulnerability Assessment**
Objective: Identify vulnerable services

```bash
# Comprehensive vulnerability scan
nmap -sV --script vuln 192.168.1.10

# Specific vulnerability checks
nmap --script "vuln and safe" target.com

# Web server vulnerabilities
nmap -p 80,443 --script http-vuln-* target.com
```

**Scenario 3: Stealth Reconnaissance**
Objective: Scan without detection

```bash
# SYN scan with decoys
nmap -sS -D RND:10 target.com

# Fragment packets
nmap -f target.com

# Randomize host order
nmap --randomize-hosts -iL targets.txt

# Slow timing
nmap -T1 -sS target.com
```

**Scenario 4: Web Application Enumeration**
Objective: Gather web app information

```bash
# Enumerate web technologies
nmap -p 80,443 --script http-enum,http-headers,http-methods target.com

# Discover hidden paths
nmap -p 80 --script http-enum --script-args http-enum.basepath=/admin/ target.com

# Check for common vulnerabilities
nmap -p 80,443 --script http-sql-injection,http-xssed target.com
```',
'[{"language":"bash","code":"nmap -sV --script vuln target.com"},{"language":"bash","code":"nmap -sS -D RND:10 -T1 target.com"}]'::jsonb, 3),

('Nmap', 'advanced', 'Advanced Techniques',
'**Custom NSE Scripts:**
```lua
-- nmap-custom.nse
description = [[
Custom script for specialized scanning
]]

author = "Your Name"

categories = {"discovery", "safe"}

portrule = function(host, port)
    return port.number == 80 and port.state == "open"
end

action = function(host, port)
    return "Custom check completed"
end
```

**Firewall/IDS Evasion:**
```bash
# Fragment packets
nmap -f target.com

# MTU specification
nmap --mtu 24 target.com

# Decoy scanning
nmap -D decoy1,decoy2,ME target.com

# Source port manipulation
nmap --source-port 53 target.com

# Randomize target order
nmap --randomize-hosts target1 target2 target3

# Add random data
nmap --data-length 25 target.com
```

**Advanced Port Scanning:**
```bash
# FIN scan (bypasses some firewalls)
nmap -sF target.com

# NULL scan
nmap -sN target.com

# Xmas scan
nmap -sX target.com

# ACK scan (firewall mapping)
nmap -sA target.com

# Window scan
nmap -sW target.com
```

**Scanning Optimization:**
```bash
# Parallel scanning
nmap --min-parallelism 100 --max-parallelism 256 target.com

# Timing control
nmap --min-rtt-timeout 100ms --max-rtt-timeout 1000ms target.com

# Host timeout
nmap --host-timeout 30m target.com
```

**Integration with Other Tools:**
```bash
# Export to Metasploit
nmap -oX scan.xml target.com
msfconsole -r scan.xml

# Parse with grep
nmap -oG scan.grep target.com
grep "80/open" scan.grep
```',
'[{"language":"lua","code":"portrule = function(host, port)\\n    return port.number == 80\\nend"},{"language":"bash","code":"nmap -sS -D RND:10 --source-port 53 target.com"}]'::jsonb, 4),

('Nmap', 'troubleshooting', 'Troubleshooting Guide',
'**Problem: Permission Denied**
Error: "You requested a scan type which requires root privileges"

Solutions:
```bash
# Use sudo
sudo nmap -sS target.com

# Or use unprivileged scan
nmap -sT target.com (TCP connect)
```

**Problem: No Response**
Symptom: All ports show as filtered

Solutions:
- Check firewall rules
- Verify target is reachable: `ping target.com`
- Try different scan types: `-sT`, `-sA`, `-sF`
- Reduce timing: `-T2` or `-T1`
- Use different source port: `--source-port 53`

**Problem: Scan Too Slow**
Symptom: Scan takes hours to complete

Solutions:
```bash
# Increase timing
nmap -T4 target.com

# Reduce port range
nmap --top-ports 1000 target.com

# Increase parallelism
nmap --min-parallelism 100 target.com

# Skip host discovery
nmap -Pn -T4 target.com
```

**Problem: Inaccurate Results**
Symptom: Ports showing wrong state

Solutions:
- Retry with different scan type
- Disable ping: `nmap -Pn target.com`
- Increase retries: `nmap --max-retries 3 target.com`
- Use TCP connect scan: `nmap -sT target.com`

**Problem: Script Errors**
Error: "NSE script xxx.nse failed"

Solutions:
```bash
# Update script database
nmap --script-updatedb

# Check script syntax
nmap --script-help=scriptname

# Increase verbosity
nmap -d --script scriptname target.com

# Check script arguments
nmap --script-args-file args.txt target.com
```

**Common Errors:**
- "Failed to resolve": DNS issue, use IP address
- "Too many open files": Increase file descriptor limit
- "Timeout": Adjust --host-timeout value
- "Network unreachable": Check routing and connectivity',
'[{"language":"bash","code":"sudo nmap -sS target.com"},{"language":"bash","code":"nmap -T4 --max-retries 3 target.com"}]'::jsonb, 5);
