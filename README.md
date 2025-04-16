# MCP Test Application

This repository contains a Model Context Protocol (MCP) test application that demonstrates how to set up and use MCP for building AI assistant applications.

### Reference - https://dev.to/composiodev/how-to-build-mcp-servers-and-clients-from-scratch-4o2f


## Files Overview

### setup_and_run.sh

A bash script that automates the initialization and setup process:
1. Initializes the uv environment manager
2. Installs the MCP CLI package
3. Runs the MCP client application

Usage:
```bash
chmod +x setup_and_run.sh
./setup_and_run.sh
```

### calculator.py

This file defines an MCP server that exposes mathematical operations as tools:

1. **Server Setup**: 
   - Initializes the FastMCP server with a greeting message
   - Imports the required mathematical libraries

2. **Tool Definitions**:
   - Basic arithmetic operations: add, subtract, multiply, divide
   - Advanced mathematical functions: power, square root, cube root, factorial
   - Trigonometric functions: sin, cos, tan
   - Other utilities: log, remainder

3. **Resource Definitions**:
   - Defines a dynamic greeting resource that returns personalized greetings

4. **Server Execution**:
   - Runs the MCP server with stdio transport when executed directly

### mcp_client.py

This file implements the client application that connects to the MCP server:

1. **Client Setup**:
   - Imports necessary libraries including MCP client libraries (mcp, asyncio, dotenv)
   - Establishes a connection to the calculator.py MCP server using stdio transport
   - Configures connection parameters including timeout settings

2. **Session Management**:
   - Creates and initializes an MCP client session with the server
   - Uses async context managers to handle connection lifecycle
   - Implements proper resource cleanup

3. **Tool Discovery and Processing**:
   - Retrieves available tools from the server using session.list_tools()
   - Parses tool metadata including names, descriptions, and parameter schemas
   - Formats each tool's parameters and descriptions into a readable format

4. **Error Handling**:
   - Implements comprehensive exception handling at multiple levels
   - Catches and logs errors during tool processing
   - Uses try/except blocks to gracefully handle connection issues
   - Provides detailed error messages and stack traces for debugging

5. **Execution Flow**:
   - Uses asyncio for asynchronous execution
   - Employs a main async function that's executed when the script runs directly
   - Provides step-by-step logging of the connection and processing stages

## How to Use

1. Run the setup script to initialize the environment:
   ```
   ./setup_and_run.sh
   ```

2. The client will automatically connect to the calculator server and list available tools

3. You can modify the server or client code to implement your own MCP applications

## Requirements

- Python 3.9+
- uv package manager
- MCP CLI package
- Required Python packages:
  - mcp
  - python-dotenv
  - asyncio
  - google-generativeai (optional)
