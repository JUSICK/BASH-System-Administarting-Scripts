## check_input.sh
``` bash
bash bin/check_inputs.sh <file path>
```
<img width="2209" height="166" alt="image" src="https://github.com/user-attachments/assets/08a5086f-61c2-401a-9457-21f4acc61909" />


## create_task.sh
``` bash
bash bin/create_task.sh <project name> <priority> <output dir>
```
<img width="1908" height="92" alt="Screenshot 2026-06-14 161112" src="https://github.com/user-attachments/assets/21241dc1-13cc-4ef3-92b2-7a1ff16acbf4" />

 - Result
<img width="1921" height="279" alt="Screenshot 2026-06-14 161122" src="https://github.com/user-attachments/assets/0fe0d2c7-f074-4551-9b9c-4c5337d4a737" />

## grep_filters.sh
``` bash
bash bin/grep_filters.sh <log path>
```
<img width="1908" height="92" alt="Screenshot 2026-06-14 161112" src="https://github.com/user-attachments/assets/21241dc1-13cc-4ef3-92b2-7a1ff16acbf4" />

## job_runner.sh
``` bash
bash bin/job_runner.sh <config>
```
<img width="2025" height="90" alt="image" src="https://github.com/user-attachments/assets/89501d11-d12b-4411-ada5-9fb1d185ff03" />

## security_log_filter.sh
``` bash
bash bin/security_log_filter.sh <security log path>
```
<img width="1890" height="184" alt="Screenshot 2026-06-14 162108" src="https://github.com/user-attachments/assets/32df83c5-f13b-44c1-9ed4-a6ec0ed95982" />

 - Found 3 SUSPICIOUS lines at security.log : 
<img width="1917" height="411" alt="image" src="https://github.com/user-attachments/assets/50215a51-2466-455b-802b-ee61c783a210" />

## validate_lines.sh
``` bash
bash bin/validate_lines.sh <file path>
```
<img width="2043" height="117" alt="image" src="https://github.com/user-attachments/assets/803e2803-27a7-4aea-be77-5da73c6a37a4" />

 - Validares users from records.txt
<img width="1800" height="357" alt="image" src="https://github.com/user-attachments/assets/0758dce7-52a4-4aa9-8e1d-247c3583153d" />

### Installation & Execution
Clone the repository:
   ```bash
   git clone https://github.com/JUSICK/BASH-System-Administarting-Scripts.git
   cd BASH-System-Administarting-Scripts
   ```
### Scripts
| # | Script Name | Core Functionality | Primary Commands/Utilities Used |
|---|---|---|---|
| 1 | `check_input.sh` | [e.g., Automates user account creation and group assignment] | `useradd`, `chown`, `awk` |
| 2 | `create_task.sh` | [e.g., Automates user account creation and group assignment] | `useradd`, `chown`, `awk` |
| 3 | `grep_filters.sh` | [e.g., Monitors disk utilization and alerts via logs] | `df`, `grep`, `logger` |
| 4 | `job_runner.sh` | [e.g., Parses system authentication logs for anomalies] | `sed`, `sort`, `uniq` |
| 5 | `security_log_filter.sh` | [e.g., Automates incremental backups of specified directories] | `tar`, `rsync`, `find` |
| 6 | `validate_lines.sh` | [e.g., Manages and audits system service states] | `systemctl`, `stat` |




