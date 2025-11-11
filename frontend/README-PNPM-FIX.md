# PNPM Permissions Fix

## Problem
The error `spawnSync pnpm EACCES` occurs because the pnpm binary doesn't have execute permissions.

## Solution
Run the following commands to fix the permissions:

```bash
# Option 1: Fix permissions if pnpm exists
sudo chmod +x /usr/local/bin/pnpm

# Option 2: Find and fix pnpm wherever it is
PNPM_PATH=$(which pnpm)
sudo chmod +x "$PNPM_PATH"

# Option 3: Reinstall pnpm globally
npm install -g pnpm

# Option 4: Use the provided fix script
chmod +x fix-pnpm.sh
./fix-pnpm.sh
```

## Test
After fixing permissions, test with:
```bash
pnpm --version
pnpm install
```

## Alternative
If pnpm continues to have issues, you can use npm instead by modifying the build scripts or using npx:
```bash
npx pnpm install
npx pnpm build
```