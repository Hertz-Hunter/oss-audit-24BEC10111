# Open Source Software Audit: Python

**Student Name:** Pratyush Kumar 
**Registration Number:** 24BEC10111 
**Chosen Software:** Python


## Project Overview

This repository contains five Bash shell scripts demonstrating practical Linux automation skills as part of the Open Source Software Capstone Project. The software audited in this project is **Python** - an open-source, high-level programming language distributed under the **Python Software Foundation (PSF) License**.

Python was chosen for its ubiquity in Linux environments, its massive FOSS ecosystem, and its role as the backbone of modern data science, web development, and automation.


## Project Structure

```
oss-audit-24BCG10110/
├── script1.sh       # System Identity Report
├── script2.sh       # FOSS Package Inspector
├── script3.sh       # Disk and Permission Auditor
├── script4.sh       # Log File Analyzer
├── script5.sh       # Open Source Manifesto Generator
└── README.md
```

## Script Descriptions

### 1. script1.sh — System Identity Report
Introduces the Linux system environment by displaying key system information including the OS distribution, kernel version, currently logged-in user, system uptime, current date and time, and general FOSS licensing information. Acts as a system "identity card."

### 2. script2.sh — FOSS Package Inspector
Checks whether Python3 is installed on the system using Debian/Ubuntu package management ("dpkg"). Retrieves the installed version, package description, and outputs a brief philosophical note about Python's purpose and open-source nature.

### 3. script3.sh — Disk and Permission Auditor
Iterates through critical system directories (e.g., "/etc, /var/log") and the Python library directory. For each location, it reports the directory size, ownership details, and permission strings — useful for understanding how Python integrates into the Linux filesystem.

### 4. script4.sh — Log File Analyzer
Scans a specified system log file line-by-line for a given keyword (defaults to 'error'). Counts the total number of matching lines and prints the last 5 occurrences, helping identify issues in system or application logs.

### 5. script5.sh — Open Source Manifesto Generator
Interactively prompts the user with three questions about their views on open-source software. Based on their responses, it generates a personalised manifesto and saves it as a ".txt" file — a creative reflection on FOSS philosophy.

## Step-by-Step Instructions to Run the Scripts

### Step 1 — Clone the Repository

```bash
git clone https://github.com/Mr-DaRkAgeNt/oss-audit-24BCG10110.git
cd oss-audit-24BCG10110
```

### Step 2 — Grant Execution Permissions

Before running any script, you must make it executable:

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Step 3 — Execute Each Script

**Script 1 — System Identity Report:**
```bash
./script1.sh
```

**Script 2 — FOSS Package Inspector:**
```bash
./script2.sh
```

**Script 3 — Disk and Permission Auditor:**
```bash
./script3.sh
```

**Script 4 — Log File Analyzer:**
```bash
./script4.sh /var/log/syslog error
```


**Script 5 — Open Source Manifesto Generator:**
```bash
./script5.sh
```



## Conclusion

This project provided hands-on experience with Linux shell scripting while exploring the real-world footprint of an open-source software project. By auditing Python - from its installation and filesystem locations to its licensing philosophy and community governance - this work bridges theoretical knowledge of FOSS principles with practical Linux skills.
The five scripts collectively demonstrate core Bash concepts: system inspection, package management queries, filesystem permission analysis, log parsing, and interactive user input. Together, they reflect how open-source tools like Python are deeply applied into the system of Linux environments, and why understanding them matters for any serious developer or system administrator.

Open Source Software Project- Vityarthi.  
Student: Pratyush Kumar  
Reg. No: 24BEC10111
