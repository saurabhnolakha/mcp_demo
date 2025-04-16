#!/bin/bash

# Initialize uv
uv init

# Add mcp[cli]
uv add "mcp[cli]"

# Run the Python script
python3 mcp_client.py