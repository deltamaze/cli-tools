Clone this Repo to `C:\git\cli-tools` then to add `C:\git\cli-tools` to your system's PATH environment variable. Here's how to do it on Windows 11:

## Method 1: Through Settings (GUI)

1. Press **Win + I** to open Settings
2. Search for "environment variables" or go to **System → About → Advanced system settings**
3. Click **Environment Variables** button
4. Under "User variables" (for just you) or "System variables" (for all users), find and select **Path**
5. Click **Edit**
6. Click **New**
7. Type `C:\git\cli-tools`
8. Click **OK** on all dialogs

#
## After Adding

- **Close and reopen** any terminal windows (CMD, PowerShell, etc.) for the change to take effect
- Test it by running `openssl version` from any directory

## Quick Tip

You can verify it worked by running:
```powershell
$env:Path -split ';' | Select-String "CliTools"
```

That's it! Once `C:\CliTools` is in your PATH, Windows will automatically search that folder when you type any command.