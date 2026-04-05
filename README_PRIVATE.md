# EXZELLY — Private Dev Repository (v1.4)

AI Spreadsheet & Workspace Assistant powered by **Gemma 4 E2B** (Local, Private, 128K Context).

---

## 🔒 PROPRIETARY STATUS
**Exzelly is Closed Source and Proprietary.**
- **Owner**: Dr. Ayush Yadav (ProxyAyush).
- **License**: See `LICENSE` in the public repository for terms.
- **Access**: Development access is restricted to the owner and authorized agents.

---

## 🖥️ INTERFACE MOCKUP (Excel Sidebar)

```text
+-------------------------------------------------+
|  EXZELLY                                     X  |
+-------------------------------------------------+
|  [ Chat ] [ Transform ] [ Charts ] [ Analyse ]  |
+-------------------------------------------------+
|                                                 |
|  AI: I've processed your "March_Sales.pdf".     |
|      I found 24 new entries. Should I add       |
|      them to the active sheet?                  |
|                                                 |
|  User: Yes, and convert USD to INR.             |
|                                                 |
+-------------------------------------------------+
|  PREVIEW PENDING CHANGES                        |
|  [ Cell ] [ Before ] [ After ]                  |
|  [ B12  ] [ $120.0 ] [ ₹9,960 ]                 |
|  [ B13  ] [ $45.0  ] [ ₹3,735 ]                 |
+-------------------------------------------------+
|  [ ✓ APPROVE ]             [ ↩ UNDO LAST ]      |
+-------------------------------------------------+
|  [ 🎤 Hold to Speak ] [ 📎 Attach File ]        |
|  +-------------------------------------------+  |
|  | Type your instruction here...             |  |
|  +-------------------------------------------+  |
|  [ SEND ]                                       |
+-------------------------------------------------+
|  Status: Exzelly is Listening... | RAM: 2.8 GB  |
+-------------------------------------------------+
```

---

## 🚀 LATEST FEATURES (v1.4)

### 1. 🧬 Soul & Skill System
- **Soul (`soul.md`)**: Defines Exzelly's native Indian business expertise and multimodal capabilities.
- **Skills (`skill.md`)**: A persistent learning layer. After a task is approved, Exzelly asks to save the logic as a "Skill" for future use.

### 2. 📁 Multi-File & Multimodal Support (Robust OCR Pipeline)
- **Files**: Native support for **PDF, DOCX, and TXT**. Content is automatically injected into the 128K context.
- **Vision & Image Data**: Incorporates `PyMuPDF` and `pytesseract` to compress heavy image data within PDFs into highly-dense OCR text. This prevents "information loss" while keeping context token counts exceptionally low.
- **Audio**: Can process meeting recordings and voice notes directly. Transcribes and extracts action items into the spreadsheet.
- **Office Integration**: Generate professional **Word outlines** and **PowerPoint slides** from cell data.

### 3. 🧠 128K Context & AutoCompact (Claude Code Inspired)
- **Massive Memory**: Can read and cross-reference thousands of spreadsheet rows with long-form text documents in one prompt.
- **Context Monitoring**: The server constantly estimates your token footprint. If it breaches 100K tokens, it alerts you.
- **AutoCompact**: Inspired by leaked internal AI logic, Exzelly performs "AutoCompaction." It uses the LLM to summarize older conversation history into dense, highly factual representations while preserving the 4 most recent turns.
- **MEMORY.md**: A permanent, 150-char-per-line anchor. Critical facts, rules, and findings are written here and are *never* compacted, preventing "context rot" over long sessions.
- **Session Management**: Automatically generates short, clever names (e.g., "Invoice Cleanup", "Q3 Analysis") and saves histories to the `sessions/` folder.

### 4. 🤖 Agent Mode & Orchestration
- **Agentic Loop**: A multi-turn reasoning system where Exzelly can "Think" before acting.
- **Tool-Calling**: The AI has access to the local machine via specific tools (`shell_exec`, `list_files`, `read_file`).
- **Orchestration Rules (`EXZELLY_RULES.md`)**: Forces the agent into a "Coordinator Mode": Plan -> Research -> Implement -> Verify, strictly limiting "lazy delegation."

### 5. 🔒 Standalone EXE Build
- **`Exzelly.exe`**: Built using PyInstaller. Bundles the server, tray app, and soul/skill files into a single, clean executable.
- **No Python Required**: End-users do not need to install Python; the installer handles the local environment.

---

## 📂 REPOSITORY STRUCTURE
```
Exzelly_Private/
├── .github/workflows/
│   └── sync-model.yml          # Downloads model & builds EXE for Public Release
├── server/
│   └── server.py               # AI Core (128K Context, Multimodal, AdapKV)
├── macros/
│   └── excel_vba.bas           # Excel Macro for Sidebar & Approve/Undo
├── exzelly_tray.py             # Windows Tray Application
├── soul.md                     # System Prompt / Personality
├── skill.md                    # Skills Logic / Blueprint
├── requirements.txt            # Python Dependencies (v1.3)
└── scripts/
    ├── build_exe.bat           # Local PyInstaller build script
    └── bootstrap.sh            # Dev setup script
```

---

## 🔑 GITHUB ACCESS (PAT TOKEN GUIDE)

To allow the `sync-model.yml` action to push the compiled EXE and model files to your public repository, you must set up a **Personal Access Token (PAT)**.

### 1. Generate the Token
1. Go to your GitHub **Settings** -> **Developer settings** -> **Personal access tokens** -> **Tokens (classic)**.
2. Click **Generate new token (classic)**.
3. Give it a Note (e.g., `Exzelly_Sync_Token`).
4. Select the **`repo`** checkbox (full control of private/public repositories).
5. Click **Generate token** and **COPY IT** immediately.

### 2. Set the Secret in Private Repo
1. Go to your **`Exzelly_Private`** repository on GitHub.
2. Click **Settings** -> **Secrets and variables** -> **Actions**.
3. Click **New repository secret**.
4. Name: **`PUBLIC_REPO_TOKEN`**.
5. Secret: Paste your token here.
6. Click **Add secret**.

### 3. Run the Sync
Go to the **Actions** tab in your private repo, select **"Sync Model to Release"**, and click **Run workflow**.

---

*Documentation by Gemini CLI for Exzelly Project.*
