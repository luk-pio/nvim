# Notion MCP Setup Guide

This guide explains how to set up and configure the Notion MCP (Model Context Protocol) server to integrate your Notion workspace with AI assistants like Claude.

## What is Notion MCP?

Notion MCP is a server that provides AI tools with secure access to your Notion workspace, allowing you to:
- Search and read Notion pages and databases
- Create and update content
- Query your knowledge base during AI conversations

## Installation

The official Notion MCP server has been installed in this repository:

```bash
npm install @notionhq/notion-mcp-server
```

## Setup Options

You have two main options for connecting to Notion:

### Option 1: Official Notion MCP Server (Recommended for Full Control)

This option uses your own Notion integration token for direct API access.

#### Step 1: Create a Notion Integration

1. Go to https://www.notion.so/my-integrations
2. Click **"+ New integration"**
3. Give your integration a name (e.g., "Claude AI Assistant")
4. Select the workspace you want to connect
5. Configure capabilities:
   - **Read content**: Required for reading pages/databases
   - **Update content**: Optional, needed for creating/editing
   - **Insert content**: Optional, needed for adding content
6. Click **"Submit"** to create the integration
7. Copy the **Internal Integration Token** (starts with `ntn_`)

#### Step 2: Grant Page Access

Your integration needs explicit access to pages and databases:

**Option A: Grant access to specific pages**
1. Open a Notion page you want to share
2. Click the **⋯** (three dots) menu in the top right
3. Scroll down and click **"Connections"**
4. Search for your integration name and select it

**Option B: Grant workspace-wide access**
1. Go to https://www.notion.so/my-integrations
2. Click on your integration
3. Go to the **"Access"** tab
4. Select pages or grant broader access

#### Step 3: Configure Claude Desktop

Add this configuration to your Claude Desktop config file:

**macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
**Windows**: `%APPDATA%/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "notion": {
      "command": "npx",
      "args": ["-y", "@notionhq/notion-mcp-server"],
      "env": {
        "NOTION_TOKEN": "ntn_YOUR_TOKEN_HERE"
      }
    }
  }
}
```

Replace `ntn_YOUR_TOKEN_HERE` with your actual integration token.

#### Step 4: Restart Claude Desktop

Close and restart Claude Desktop. The Notion MCP server should now be available.

### Option 2: Notion's Hosted MCP Server (OAuth-based)

This option uses Notion's hosted service with OAuth authentication (no manual token management).

#### Configure Claude Desktop

Add this to your Claude Desktop config:

```json
{
  "mcpServers": {
    "notion-hosted": {
      "command": "npx",
      "args": ["-y", "mcp-remote", "https://mcp.notion.com/mcp"]
    }
  }
}
```

This will guide you through an OAuth flow when you first use it.

## Usage with Claude Code CLI

If you're using Claude Code CLI, you can configure MCP servers in:

**macOS/Linux**: `~/.config/claude-code/mcp_config.json`

Use the same configuration format as shown above.

## Testing the Connection

Once configured, you can test the connection by asking Claude:
- "What pages do I have in Notion?"
- "Search my Notion for [topic]"
- "Create a new page in Notion about [topic]"

## Available Capabilities

The Notion MCP server provides these tools:
- **search_notion**: Search across your Notion workspace
- **get_page**: Retrieve a specific page by ID
- **create_page**: Create new pages
- **update_page**: Modify existing pages
- **get_database**: Query databases
- **query_database**: Run filtered queries on databases

## Security Notes

- **Keep your integration token secure**: Never commit it to version control
- **Use environment variables**: Store tokens in secure locations
- **Limit permissions**: Only grant the minimum required capabilities
- **Review page access**: Regularly audit which pages your integration can access

## Troubleshooting

### Integration token not working
- Verify the token is correct (starts with `ntn_`)
- Check that pages have granted access to your integration
- Ensure the integration has the required capabilities enabled

### MCP server not appearing in Claude
- Restart Claude Desktop completely
- Check the config file path is correct
- Verify JSON syntax is valid (use a JSON validator)
- Check Claude Desktop logs for errors

### Permission errors
- Make sure you've connected pages to your integration
- Verify your integration has the required capabilities (read/write)

## Resources

- [Official Notion MCP Documentation](https://developers.notion.com/docs/mcp)
- [Notion MCP Server GitHub](https://github.com/makenotion/notion-mcp-server)
- [Model Context Protocol Specification](https://github.com/modelcontextprotocol/servers)
- [Notion API Documentation](https://developers.notion.com/)

## Next Steps

1. Create your Notion integration at https://www.notion.so/my-integrations
2. Copy your integration token
3. Add the configuration to Claude Desktop
4. Grant page access to your integration
5. Restart Claude and start using Notion with AI!
