# iSH_home_bridge
Workaround script for iSH when the Files bridge breaks — backup /root, remount, restore, and sync $HOME to On My iPhone/iSH.
---

# iSH Home Bridge

**Workaround script for iSH when the Files bridge breaks — backup `/root`, remount, restore, and sync `$HOME` to `On My iPhone/iSH`.**

## What it does

This simple shell script:
1. Backs up your current `/root` safely to your Files storage.
2. Mounts the `On My iPhone` Files location as a new live `$HOME` bridge.
3. Restores your old files into a clean `iSH` subfolder.
4. Keeps your shell home synced with the Files app drop zone.

## When to use it

Use this if:
- iSH’s automatic Files bridge (`/mnt`) is broken or empty.
- You want a manual way to keep your `$HOME` accessible through the Files app.

## How to run

1. Copy the script to your iSH container.
2. Make it executable:
   ```bash
   chmod +x ish_home_bridge.sh
