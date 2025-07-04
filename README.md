# iSH Home Bridge

**Workaround script for iSH when the built-in Files bridge (`/mnt`) breaks.**

---

## What it does

- Backs up your current `/root` safely to **On My iPhone**.
- Mounts **On My iPhone** as a live `$HOME` bridge inside iSH.
- Restores your old files into a clean `iSH` subfolder.
- Keeps your shell home synced and accessible from the Files app.

---

## When to use this

Use this script if:
- The default `/mnt` Files bridge is broken, empty, or missing.
- You want to manually link your `$HOME` to Files storage.
- You want your iSH home organized inside `On My iPhone/iSH` for easy file drops.

---

## How to use

1. Copy `ish_home_bridge.sh` into your iSH container.

2. Make it executable:

    ```sh
    chmod +x ish_home_bridge.sh
    ```

3. Run it:

    ```sh
    sh ish_home_bridge.sh
    ```

4. Follow the instructions:
   - When the Files picker appears, select **'On My iPhone'**.
   - Let the script back up your `/root`, remount, and restore it into `On My iPhone/iSH`.

---

## Notes

- This is a **one-time manual workaround**, only needed if `/mnt` is broken.
- Your backup is saved in Files — safe even if iSH closes.
- MIT licensed — use at your own risk.

---

**Workaround script for iSH when the Files bridge breaks — backup `/root`, remount, restore, and sync `$HOME` to `On My iPhone/iSH`.**
