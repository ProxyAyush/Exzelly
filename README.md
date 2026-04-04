# Exzelly 🤖

**AI inside your spreadsheet.** Chat with your data, transform cells with plain English, analyse sheets — all running locally on your computer. Nothing leaves your machine.

Powered by [Gemma 4 E2B](https://ai.google.dev/gemma) (Google DeepMind, Apache 2.0 license).

---

## Install on Windows

**[⬇ Download Install_Exzelly.bat](https://github.com/ProxyAyush/gemma-sheets/releases/download/v1.0/Install_Exzelly.bat)**

Double-click it. That's it.

The installer will:
1. Ask where to install Exzelly
2. Set up a private Python environment (no system changes, no admin needed)
3. Download the Gemma 4 AI model (~2.7 GB, one-time)
4. Create a desktop shortcut
5. Start Exzelly in your system tray

**Requirements:** Windows 10 or 11, 8 GB RAM, internet for first install only.

---

## What it does

**Chat** — a GemmaChat sheet appears in your workbook. Ask anything about your data.

**Transform** — select any cells, press `Alt+F8 → GemmaSheets_Transform`, describe what you want:
- *"Translate all text to Hindi"*
- *"Fix spelling mistakes"*
- *"Add an 18% GST column"*
- *"Categorise these as Food / Tech / Health"*
- *"Convert dates to DD/MM/YYYY"*

**Analyse** — `Alt+F8 → GemmaSheets_AskAboutSheet` — summarise, find patterns, ask questions.

---

## System tray

Right-click the Exzelly icon in the bottom-right corner of your screen:

| Option | What it does |
|--------|-------------|
| ▶ Start Exzelly AI | Loads the model (~3 GB RAM) |
| ■ Stop & Free RAM | Unloads model, frees memory |
| ✕ Quit Exzelly | Exits completely |

Stop it when you're done for the day to free up RAM.

---

## Privacy

Everything runs on your machine. Your spreadsheet data never leaves your computer. No account, no subscription, no API keys needed.

---

## Supported platforms

| Platform | Status |
|----------|--------|
| Excel (Windows) | ✅ Full support |
| LibreOffice Calc | ✅ Full support |
| Google Sheets | ✅ Via Gemini API (free key needed) |
| Mac | 🔜 Coming soon |

---

## License

- Exzelly code: MIT
- Gemma 4 model: [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) — free for personal and commercial use
