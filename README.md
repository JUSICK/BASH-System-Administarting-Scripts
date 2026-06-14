``` bash
bash bin/check_inputs.sh <arguments to check for>
```
<img width="1912" height="198" alt="Screenshot 2026-06-14 161020" src="https://github.com/user-attachments/assets/43ba9b06-59d9-46b4-a7cd-e6b56d393eb5" />

``` bash
bash bin/create_task.sh <project name> <priority> <output dir>
```
<img width="1908" height="92" alt="Screenshot 2026-06-14 161112" src="https://github.com/user-attachments/assets/21241dc1-13cc-4ef3-92b2-7a1ff16acbf4" />
<img width="1921" height="279" alt="Screenshot 2026-06-14 161122" src="https://github.com/user-attachments/assets/0fe0d2c7-f074-4551-9b9c-4c5337d4a737" />

``` bash
bash bin/grep_filters.sh <log path>
```
<img width="1908" height="92" alt="Screenshot 2026-06-14 161112" src="https://github.com/user-attachments/assets/21241dc1-13cc-4ef3-92b2-7a1ff16acbf4" />

``` bash
bash bin/security_log_filter.sh <security log path>
```
<img width="1890" height="184" alt="Screenshot 2026-06-14 162108" src="https://github.com/user-attachments/assets/32df83c5-f13b-44c1-9ed4-a6ec0ed95982" />

### 3 SUSPICIOUS lines at security.log : 
<img width="1917" height="411" alt="image" src="https://github.com/user-attachments/assets/50215a51-2466-455b-802b-ee61c783a210" />

``` bash
bash bin/validate_lines.sh 
```
<img width="1941" height="144" alt="Screenshot 2026-06-14 162139" src="https://github.com/user-attachments/assets/c0d1376b-c80b-4f53-b146-1524ac24e99e" />

### Validates 'dir=input/records.txt' directory specified inside the script.
<img width="1845" height="432" alt="Screenshot 2026-06-14 162239" src="https://github.com/user-attachments/assets/2b985c55-0a15-47ea-a704-c456aed28aa7" />

``` bash
bash bin/validate_lines.sh 
```
<img width="1941" height="144" alt="Screenshot 2026-06-14 162139" src="https://github.com/user-attachments/assets/c0d1376b-c80b-4f53-b146-1524ac24e99e" />

### Installation & Execution
Clone the repository:
   ```bash
   git clone https://github.com/JUSICK/BASH-System-Administarting-Scripts.git
   cd BASH-System-Administarting-Scripts
   ```
### Scripts
| # | Script Name | Core Functionality | Primary Commands/Utilities Used |
|---|---|---|---|
| 1 | `script_name_1.sh` | [e.g., Automates user account creation and group assignment] | `useradd`, `chown`, `awk` |
| 2 | `script_name_2.sh` | [e.g., Monitors disk utilization and alerts via logs] | `df`, `grep`, `logger` |
| 3 | `script_name_3.sh` | [e.g., Parses system authentication logs for anomalies] | `sed`, `sort`, `uniq` |
| 4 | `script_name_4.sh` | [e.g., Automates incremental backups of specified directories] | `tar`, `rsync`, `find` |
| 5 | `script_name_5.sh` | [e.g., Manages and audits system service states] | `systemctl`, `stat` |




