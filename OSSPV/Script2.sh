#!/bin/bash
#Script 2: FOSS Package Inspector

Package="Firefox"

# 1. Define common Firefox binary/package names to look for
FIREFOX_BIN=""
for bin in firefox firefox-esr firefox-developer-edition; do
    if command -v "$bin" &> /dev/null; then
        FIREFOX_BIN="$bin"
        break # Stop at the first one found
    fi
done

# 2. Check if we found an installation
if [ -z "$FIREFOX_BIN" ]; then
    echo "Firefox is not installed on this system."
    exit 1
fi

# 3. Find and print the version
# The --version flag usually outputs something like "Mozilla Firefox 120.0"
VERSION=$("$FIREFOX_BIN" --version)
echo "Installed Version: $VERSION"
echo "Package/Binary:    $FIREFOX_BIN"
echo "------------------------------------------------------"

# 4. Use a case statement to describe its purpose based on the name
case "$FIREFOX_BIN" in
    firefox)
        echo "Purpose: The standard, fast, and privacy-focused open-source web browser by Mozilla. It receives rapid updates with the newest features."
        ;;
    firefox-esr)
        echo "Purpose: Firefox Extended Support Release (ESR). Geared toward enterprise environments and users who prioritize long-term stability and security updates over bleeding-edge features."
        ;;
    firefox-developer-edition)
        echo "Purpose: Firefox Developer Edition. Tailored specifically for web developers, featuring experimental tools, beta features, and custom developer themes."
        ;;
    *)
        echo "Purpose: A variant of the Mozilla Firefox web browser."
        ;;
esac
