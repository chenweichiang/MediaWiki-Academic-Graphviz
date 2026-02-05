#!/bin/bash
# ==============================================================================
# MediaWiki Academic Graphviz Support - Installation Script
# This script installs system dependencies (fonts, engines) for high-tier academic rendering.
# ==============================================================================

set -e

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}🎓 Starting Academic Graphviz & Font Installation...${NC}"

# 1. Update package list
echo "📦 Updating package lists..."
apt-get update

# 2. Install Graphviz and Rendering Engines
echo "🛠️ Installing Graphviz, librsvg, and Ghostscript..."
apt-get install -y graphviz librsvg2-common ghostscript

# 3. Install Academic & CJK Fonts
# fonts-noto-cjk: High-quality CJK fonts (Sans/Serif)
# fonts-wqy-microhei: Backup CJK font
# fonts-noto-color-emoji: Emoji support for research notes
echo "🎨 Installing professional academic fonts (Noto CJK)..."
apt-get install -y fonts-noto-cjk fonts-noto-color-emoji fonts-wqy-microhei

# 4. Refresh Font Cache
echo "🔄 Refreshing font cache..."
fc-cache -fv

# 5. Verify Installation
echo "✅ Verification:"
dot -V
fc-list | grep "Noto Sans CJK" | head -n 3

echo -e "${GREEN}🌟 Installation Complete!${NC}"
echo "----------------------------------------------------------------"
echo "Next Steps:"
echo "1. Ensure 'Diagrams' folder is in your MediaWiki extensions directory."
echo "2. Add the following to your LocalSettings.php:"
echo ""
echo "   wfLoadExtension( 'Diagrams' );"
echo "   \$wgDiagramsLocalCommands = [ 'dot' => '/usr/bin/dot' ];"
echo "----------------------------------------------------------------"
