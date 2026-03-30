# The Open Source Audit: Git Capstone Project

**Student Name:** Dakshal Srivastava
**Registration Number:** 24BSA10115
**Slot:** D11
**Chosen Software:** Git

## Script Overview
This repository contains five shell scripts written for the OSS NGMC Course Capstone. All scripts align with the project rubric and include line-by-line comments for transparency.

1. `script1_system_identity.sh` - Displays the system distro, kernel, logged-in user, and uptime using system variables.
2. `script2_package_inspector.sh` - Checks for `git` installation and dynamically generates a philosophy note using conditional branches and case statements.
3. `script3_disk_auditor.sh` - Iterates logically through necessary system paths (`/etc`, `/var/log`, `/home`) utilizing a for-loop and outputs strict ownership rules and sizes via `awk`.
4. `script4_log_analyzer.sh` - Consumes a generated mock log file seamlessly block-by-block with a while read loop, hunting for occurrences of predefined keywords (`commit`).
5. `script5_manifesto_generator.sh` - A fully interactive CLI prompt generating a customized text-based manifesto about open source beliefs.

## How to execute these scripts on Linux
1. Clone this repository locally or transfer the files.
2. Grant absolute executable permissions to all scripts by running:
   `chmod +x *.sh`
3. Execute them sequentially:
   - `./script1_system_identity.sh`
   - `./script2_package_inspector.sh`
   - `./script3_disk_auditor.sh`
   - Try Script 4 with arguments: `./script4_log_analyzer.sh dummy.log commit`
   - `./script5_manifesto_generator.sh`

## Internal Dependencies
- `bash` (Unix shell)
- `dpkg` / `rpm` (Package Managers)
- `cat`, `awk`, `chmod`, `date`, `whoami`, `uname`, `grep` (Core GNU utils)
