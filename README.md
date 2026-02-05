# MediaWiki Academic Graphviz Support 🎓🎨

[繁體中文](#繁體中文) | [English](#english)

---

## 繁體中文

這是一個專為 **MediaWiki** 設計的學術級圖表解決方案，旨在提供高品質、符合出版標準的 **Graphviz** 與 **Mermaid** 渲染能力。

### ✨ 核心特點
- **SVG 高清向量輸出**：預設採用 SVG 格式，確保圖表在任何縮放比例下均保持不失真，且支援文字搜尋與選取。
- **Noto CJK 學術字型整合**：預先配置 Google Noto Sans CJK 系列字型，完美支援中日韓文字，提供符合學術論文與專業設計美感的排版。
- **學術級渲染引擎**：支援 `sfdp` 等現代佈局引擎，適合處理複雜的研究數據網路。
- **一鍵自動化安裝**：提供專為 Docker 容器與 Linux 環境設計的安裝腳本，自動完成字型、庫與引擎的補完。

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
*Maintained by Interaction Lab (Interaction Design, NTUB).*
