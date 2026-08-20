#!/bin/bash
cd "$(dirname "$0")"
echo "Serving on http://localhost:8000 — press Ctrl+C to stop."
python3 -m http.server 8000
