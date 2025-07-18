
---

### 🐍 `logweave/weaver.py`
```python
import os
import sys
from parser import parse_logs
from correlation import stitch_events
from exporter import export_merged

def main(folder):
    all_events = []
    for fname in os.listdir(folder):
        if fname.endswith(".log"):
            path = os.path.join(folder, fname)
            all_events += parse_logs(path)

    merged = stitch_events(all_events)
    export_merged(merged, "merged_timeline.json")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python weaver.py <log_folder>")
    else:
        main(sys.argv[1])
