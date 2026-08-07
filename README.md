# System Monitoring and Alerting Script

## Overview
This is a simple Bash script that monitors the system's health by checking:

- Disk Usage
- Memory Usage
- Top 5 CPU-consuming processes
- Top 5 Memory-consuming processes

If disk or memory usage exceeds 80%, the script displays a warning and logs it into an `alerts.log` file.

---

## Features

- Monitors root (`/`) disk usage
- Monitors memory usage
- Displays top 5 CPU-consuming processes
- Displays top 5 memory-consuming processes
- Logs alerts with timestamps
- Easy to run on any Linux system

---

## Requirements

- Linux (Ubuntu recommended)
- Bash shell
- Standard Linux utilities:
  - df
  - free
  - awk
  - sed
  - ps

No additional packages are required.

---

## Project Structure

```
System_monitoring_alerting_script/
│── System_monitoring_alerting_script
│── README.md
│── alerts.log (created automatically)
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/mvp7279/System_monitoring_alerting_script.git
```

Go to the project directory:

```bash
cd System_monitoring_alerting_script
```

Give execute permission:

```bash
chmod +x System_monitoring_alerting_script
```

---

## Usage

Run the script:

```bash
./System_monitoring_alerting_script
```

Or

```bash
bash System_monitoring_alerting_script
```

---

## Sample Output

```
========================================
      SYSTEM MONITORING SCRIPT
========================================

Disk Usage
----------
Current Disk Usage: 45%
✅ Disk usage is normal.

Memory Usage
------------
Current Memory Usage: 58%
✅ Memory usage is normal.

Top 5 CPU Consuming Processes
-----------------------------
...

Top 5 Memory Consuming Processes
--------------------------------
...

========================================
      SYSTEM CHECK COMPLETED
========================================
```

---

## Alert Logging

If disk or memory usage exceeds 80%, an entry is added to:

```
alerts.log
```

Example:

```
2026-08-05 10:15:32 WARNING: Disk usage is 92%
2026-08-05 10:15:32 WARNING: Memory usage is 88%
```

---


