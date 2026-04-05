# EXZELLY — Private Dev Repository (v1.3)

AI Spreadsheet & Workspace Assistant powered by **Gemma 4 E2B** (Local, Private, 128K Context).

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

## 🚀 LATEST FEATURES

### 1. 🧬 Soul & Skill System
- **Soul (`soul.md`)**: Defines Exzelly's native Indian business expertise and multimodal capabilities.
- **Skills (`skill.md`)**: A persistent learning layer. After a task is approved, Exzelly asks to save the logic as a "Skill" for future use.

### 2. 📁 Multi-File & Multimodal Support
- **Files**: Native support for **PDF, DOCX, and TXT**. Content is automatically injected into the 128K context.
- **Audio**: Can process meeting recordings and voice notes directly. Transcribes and extracts action items into the spreadsheet.
- **Office Integration**: Generate professional **Word outlines** and **PowerPoint slides** from cell data.

### 3. 🧠 128K Context Window (Managed)
- **Massive Memory**: Can read and cross-reference thousands of spreadsheet rows with long-form text documents in one prompt.
- **AdapKV Logic**: Intelligent "Heavy-Hitter" identification ensures headers and key labels are never pruned from context, even in massive workbooks.
- **CPU Optimized**: Uses physical core detection and memory-mapped files (mmap) for high-performance inference on standard Windows laptops.

### 4. 🔒 Standalone EXE Build
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
