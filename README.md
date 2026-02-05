# MediaWiki Academic Graphviz Support 🎓🎨

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Last Updated](https://img.shields.io/github/last-commit/chenweichiang/MediaWiki-Academic-Graphviz?label=Last%20Updated&color=orange)](https://github.com/chenweichiang/MediaWiki-Academic-Graphviz/commits/main)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/chenweichiang/MediaWiki-Academic-Graphviz/graphs/commit-activity)

[繁體中文](#繁體中文) | [English](#english)

---

## 繁體中文

這是一個專為 **MediaWiki** 設計的學術級圖表解決方案，旨在提供高品質、符合出版標準的 **Graphviz** 與 **Mermaid** 渲染能力。

### ✨ 核心特點
- **SVG 高清向量輸出**：預設採用 SVG 格式，確保圖表在任何縮放比例下均保持不失真，且支援文字搜尋與選取。
- **Noto CJK 學術字型整合**：預先配置 Google Noto Sans CJK 系列字型，完美支援中日韓文字，提供符合學術論文與專業設計美感的排版。
- **學術級渲染引擎**：支援 `sfdp` 等現代佈局引擎，適合處理複雜的研究數據網路。
- **一鍵自動化安裝**：提供專為 Docker 容器與 Linux 環境設計的安裝腳本，自動完成字型、庫與引擎的補完。

### 📊 技術細節與相容性
- **基於組件**：
    - **MediaWiki Diagrams Extension**: v0.15.3 (由 Sam Wilson 開發)。
    - **Graphviz 引擎**: v2.42.4+ (相容所有支援 DOT 語法之版本)。
    - **字型庫**: Google Noto Sans CJK (OFL 授權)。
- **支援環境**:
    - **作業系統**: Linux (Debian 12/13, Ubuntu 22.04/24.04 優先)。
    - **MediaWiki 版本範圍**: `1.40.0` 至 `1.47.x`。
    - **部署方式**: Docker 容器或實體 Linux 伺服器且具備 `apt` 套件管理。

### 🚀 安裝步驟

#### 1. 下載並部署擴展
將此倉庫複製到您的 MediaWiki `extensions/` 目錄下：
```bash
git clone https://github.com/chenweichiang/MediaWiki-Academic-Graphviz.git extensions/Diagrams
```

#### 2. 執行系統環境補完
進入您的 MediaWiki 容器（或伺服器主機），執行 `install.sh` 以安裝字型與渲染引擎。
> [!IMPORTANT]
> 此腳本適用於基於 **Debian/Ubuntu** 的系統（如官方 MediaWiki Docker 鏡像）。
```bash
# 若使用 Docker
docker exec -it <container_name> bash /var/www/html/extensions/Diagrams/install.sh
```

#### 3. 配置 LocalSettings.php
將以下代碼加入您的 `LocalSettings.php` 文件：
```php
# 學術級圖表強化 (Graphviz + Mermaid)
wfLoadExtension( 'Diagrams' );
$wgDiagramsLocalCommands = [ 'dot' => '/usr/bin/dot' ];
```

---

## English

An academic-grade diagramming solution for **MediaWiki**, designed to provide high-quality, publication-standard rendering for **Graphviz** and **Mermaid**.

### ✨ Key Features
- **High-Definition SVG Output**: Defaults to SVG format for crisp, resolution-independent diagrams with searchable and selectable text.
- **Academic CJK Font Integration**: Pre-configured with Google's **Noto Sans CJK** suite for perfect multi-language support and professional typesetting.
- **Elite Layout Engines**: Supports modern engines like `sfdp` for complex research data visualizations.
- **One-Click Automation**: Includes a streamlined `install.sh` for Docker containers/Linux to automate font and engine installation.

### 📊 Technical Specifications
- **Core Components**:
    - **MediaWiki Diagrams Extension**: v0.15.3 (Originally developed by Sam Wilson).
    - **Graphviz Engine**: v2.42.4+ (Compatible with all DOT-supported versions).
    - **Typography**: Google Noto Sans CJK (OFL Licensed).
- **Environment Support**:
    - **Operating System**: Linux (Debian 12/13, Ubuntu 22.04/24.04 recommended).
    - **MediaWiki Versions**: `1.40.0` to `1.47.x`.
    - **Deployment**: Docker containers or native Linux environments with `apt` package manager.

### 🚀 Installation

#### 1. Deployment
Clone this repository into your MediaWiki `extensions/` directory:
```bash
git clone https://github.com/chenweichiang/MediaWiki-Academic-Graphviz.git extensions/Diagrams
```

#### 2. Environment Setup
Run `install.sh` inside your MediaWiki container (or on your host) to install dependencies:
```bash
# For Docker users
docker exec -it <container_name> bash /var/www/html/extensions/Diagrams/install.sh
```

#### 3. Configuration
Add the following to your `LocalSettings.php`:
```php
# Academic-Grade Diagram Support
wfLoadExtension( 'Diagrams' );
$wgDiagramsLocalCommands = [ 'dot' => '/usr/bin/dot' ];
```

---

### 🎨 Usage Example (Graphviz)

```html
<graphviz>
digraph G {
  node [fontname="Noto Sans CJK TC", fontsize=11];
  "Academic Research" -> "Knowledge Management";
}
</graphviz>
```

### ⚖️ License
This project includes a patched version of the **MediaWiki Diagrams Extension** by Sam Wilson, licensed under **GPL-3.0**. The patches and configuration scripts provided here are also released under **GPL-3.0**.

---

### 📖 How to Cite / 如何引用

如果您在學術研究或專案中使用了此工具，請參考以下方式進行引用：

If you use this toolkit in your academic research or projects, please cite it as follows:

**APA Style:**
> Chiang, C.-W. (2026). MediaWiki Academic Graphviz: A high-quality diagramming toolkit for research and design education. GitHub. https://github.com/chenweichiang/MediaWiki-Academic-Graphviz

**BibTeX:**
```bibtex
@software{Chiang_MediaWiki_Academic_Graphviz_2026,
  author = {Chiang, Chen-Wei},
  title = {MediaWiki Academic Graphviz: A high-quality diagramming toolkit for research and design education},
  url = {https://github.com/chenweichiang/MediaWiki-Academic-Graphviz},
  year = {2026}
}
```

---
*Maintained by Chen-Wei Chiang | Interaction Lab (Interaction Design, NTUB).*
