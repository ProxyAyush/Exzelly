# EXZELLY — Your Personal AI Spreadsheet Assistant (v1.3)

Exzelly is a **fully local, private AI assistant** embedded directly inside Microsoft Excel. It helps you analyze, transform, and understand your spreadsheet data using plain English—all on your own computer. **No internet required. No data leaves your machine.**

---

## 🖥️ INTERFACE MOCKUP

```text
+-------------------------------------------------+
|  EXZELLY                                     X  |
+-------------------------------------------------+
|  [ Chat ] [ Transform ] [ Charts ] [ Analyse ]  |
+-------------------------------------------------+
|                                                 |
|  AI: I've processed your "Sales_Invoice.pdf".   |
|      I found 5 new entries with GST calculation.|
|      Should I add them to the sheet?            |
|                                                 |
|  User: Yes, and generate a sales chart.         |
|                                                 |
+-------------------------------------------------+
|  PREVIEW PENDING CHANGES                        |
|  [ Cell ] [ Current ] [ Proposed ]              |
|  [ A15  ] [         ] [ Reliance Ind.]          |
|  [ B15  ] [         ] [ ₹45,200.00   ]          |
+-------------------------------------------------+
|  [ ✓ APPROVE ]             [ ↩ UNDO LAST ]      |
+-------------------------------------------------+
|  [ 🎤 Hold to Speak ] [ 📎 Attach File ]        |
|  +-------------------------------------------+  |
|  | Type your instruction here...             |  |
|  +-------------------------------------------+  |
|  [ SEND ]                                       |
+-------------------------------------------------+
|  Status: Exzelly is Ready    | RAM: 2.8 GB      |
+-------------------------------------------------+
```

---

## 🌟 KEY FEATURES

- **Native Excel Sidebar**: No external apps to switch between. Talk to your cells directly.
- **Corporate File Support (Robust OCR)**: Attach **PDF, Word (DOCX), Text, or Image** files. Exzelly's dense OCR pipeline extracts both text and visual layouts, preventing information loss while keeping your AI fast.
- **Multimodal Audio**: Upload voice notes or meeting recordings to extract data and action items.
- **Indian Business Ready**: Native understanding of **GST, INR, Lakhs/Crores**, and Indian date formats.
- **128K Context & AutoCompact**: Exzelly monitors its massive 128,000-token memory. If it approaches the limit, it automatically performs a smart compaction (summarizing history while protecting key facts in a permanent `MEMORY.md`), preventing "context rot."
- **Smart Session Management**: Chats are automatically given short, clever titles and saved so you can resume your workflows later.
- **Skill System**: Exzelly learns from you. Save complex tasks as persistent "Skills" for one-click future execution.
- **Approve/Undo Safety**: No change is permanent until you click **Approve**. One-click **Undo** for peace of mind.

---

## 🚀 ONE-CLICK INSTALLATION

1. **Download the Installer**: 
   Click on the **[Latest Release](https://github.com/ProxyAyush/Exzelly/releases/latest)** and download `Install_Exzelly.bat`.
   
2. **Run the Script**: 
   Double-click the `.bat` file. Select an installation folder. The installer will automatically download the AI model and the standalone `Exzelly.exe`.

3. **Open Excel**:
   Go to the **Developer tab** -> **Visual Basic** -> **File** -> **Import File...** and select `excel_vba.bas` from your installation folder.

4. **Start Exzelly**:
   Run the `Exzelly_ShowPanel` macro to open your sidebar.

---

## 🛡️ PRIVACY & TRUST

Exzelly is built on **Gemma 4 E2B** (Google DeepMind) and runs locally via **llama.cpp**. 
- **Zero Cloud**: Your data is never uploaded to any server.
- **Open Model**: Uses the Apache 2.0 licensed Gemma 4 model.
- **Security**: Runs as a standalone process on your machine.

---

*For detailed technical documentation, please refer to the private development repository.*
