# EXZELLY — Your Personal AI Spreadsheet Assistant (v1.4)

Exzelly is a **fully local, private, and proprietary AI assistant** embedded directly inside Microsoft Excel. It helps you analyze, transform, and understand your spreadsheet data using plain English—all on your own computer.

---

## ⚡ QUICK START (ONE-CLICK INSTALL)

Installing Exzelly is designed to be effortless for professionals. 

1.  **Download**: Get the [**Latest Exzelly Installer (.bat)**](https://github.com/ProxyAyush/Exzelly/releases/latest/download/Install_Exzelly.bat).
2.  **Run**: Double-click the file. It will automatically download the AI engine, the standalone app, and the Excel macro.
3.  **Setup**: Open Excel, go to the **Developer tab**, click **Import File**, and select `excel_vba.bas` from your installation folder.
4.  **Activate**: Click the **Exzelly** button in your sidebar and start talking to your data.

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

## 🌟 CORE FEATURES & CAPABILITIES

### 1. Native Excel Sidebar
Exzelly lives where you work. No more switching between browser tabs or external AI apps. The modeless sidebar stays open on the right, allowing you to click cells and type instructions simultaneously.

### 2. Robust Multi-File & OCR Pipeline
Exzelly isn't limited to cell data. You can "feed" it corporate documents to provide context:
- **Supported Formats**: PDF, Word (DOCX), Text, and Images (JPG/PNG).
- **Dense OCR**: Our custom pipeline extracts text and visual data from complex invoices, bank statements, and printed reports with zero information loss.
- **Workflow**: Attach a PDF invoice -> Ask "Extract all line items and add them to this sheet" -> Exzelly maps the data automatically.

### 3. Agent Mode: Autonomous Research
Inspired by advanced industry architectures, **Agent Mode** allows Exzelly to perform multi-step tasks:
- **Tool-Calling**: It can search your local folders, read files, and execute terminal commands to find the data you need.
- **Example**: *"Find the latest purchase order in my Downloads folder, check if we've already paid it in this sheet, and if not, highlight it in red."*

### 4. Indian Business Expertise
Exzelly is natively tuned for the Indian professional context:
- **GST & Taxation**: Automatically calculates CGST/SGST/IGST and TDS.
- **Currency**: Native support for **INR (₹)** and the **Lakhs/Crores** numbering system.
- **Regional Formats**: Understands Indian date formats (DD/MM/YYYY) and mixed English/Hindi data.

### 5. 128K Context & AutoCompact
Exzelly uses the massive **128,000-token window** of Gemma 4 E2B. 
- **AutoCompact**: If your conversation grows too long, Exzelly automatically compresses older turns into dense factual summaries while protecting your most recent context.
- **Permanent Memory**: Critical facts and user-defined rules are stored in a permanent `MEMORY.md` anchor that never gets deleted.

---

## 💼 CORPORATE USE CASES

### Use Case A: Automated Financial Reporting
**The Scenario**: You have 12 monthly CSV sales reports and a target PDF budget from your headquarters.
**The Workflow**:
1.  Attach the Budget PDF to Exzelly.
2.  Select your sales data.
3.  Ask: *"Compare these sales to the budget targets in the PDF. Identify which regions underperformed by more than 10% and suggest a Word document outline for the management report."*
4.  **Result**: Exzelly highlights the gaps in Excel and generates a professional report structure in the chat.

### Use Case B: Inventory & SKU Management
**The Scenario**: A supplier sends a screenshot of their current stock list.
**The Workflow**:
1.  Upload the screenshot (PNG).
2.  Ask: *"Read this image and update Column C (Current Stock) for all matching SKUs in my sheet. If a SKU is missing, add it to the bottom."*
3.  **Result**: Exzelly's OCR reads the image, matches the SKUs, and proposes the updates.

### Use Case C: Learning Your Workflow (The Skill System)
**The Scenario**: You spend 20 minutes every Monday morning cleaning up non-standard bank exports.
**The Workflow**:
1.  Clean the data once with Exzelly's help.
2.  Click **Approve**.
3.  Exzelly asks: *"Should I save this as a Skill?"* -> Click **Yes**.
4.  Next Monday, just click the **"Bank Cleanup" Skill**, and Exzelly repeats the entire logic instantly.

---

## 🛡️ PRIVACY, SECURITY & TRUST

Exzelly is built for the era of data sovereignty.
- **100% Local**: No internet required. Your sensitive business data never leaves your computer.
- **No Telemetry**: We do not track your usage, prompts, or data.
- **Open Model Integrity**: Powered by **Gemma 4 E2B** (Google DeepMind), a state-of-the-art open-weights model.
- **Closed Source Proprietary Build**: A highly optimized, professional-grade binary developed by Dr. Ayush Yadav.

---

*Copyright (c) 2026 Dr. Ayush Yadav. Proprietary and Confidential.*
