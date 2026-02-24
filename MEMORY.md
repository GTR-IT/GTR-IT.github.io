# MEMORY.md - Wilson's Long-Term Memory

## Identity
- Name: Wilson 🎾
- Email: wilson@gtr-it.com (Zoho Mail, accessed via browser/VNC)
- Mobile: +447438348050 (Lyca Mobile eSIM, 12-month plan £4.50/mo, on Steve's phone — used for 2FA and third-party account registration)
- Zoho Mail saved to bookmarks bar in OpenClaw browser

## About Steve
- Full name: Steven Peacock
- Personal email: sjpeacock@live.co.uk
- Works at Nimble Approach (tech consultancy)
- Runs home lab on Proxmox server called PEACOCK
- Container: CT 301, VLAN 6, 192.168.6.10
- Accesses Wilson's browser via VNC
- UK-based, Europe/London timezone

## Setup Notes
- Browser: OpenClaw-managed Chromium, accessible via VNC
- Email: wilson@gtr-it.com on Zoho Mail (set up 2026-02-22)
- Web search (Brave) not configured — needs API key

## Rules
- **Always ask Steve for explicit permission before sending any email.** No exceptions.

## Heartbeat
- Heartbeats run every 2 hours on local Llama 3.2 3B (not Sonnet) — already optimised
- If new unread email: message Steve on Telegram

## Google Account
- Account: wilsonpeacock1@gmail.com
- Credentials + TOTP in 1Password: "Google Account - Wilson AI" (Wilson (AI) vault)
- Account was suspended, Steve appealed and got it reactivated (2026-02-22)
- First login attempt (2026-02-23): blocked by Google unusual-activity detection
- Google forces SMS to phone ••47 (not the Lyca eSIM — different number)
- SMS rate-limited after too many attempts — retry after a few hours
- Plan: SMS code from Steve → trusted session → TOTP works for future logins

## Google Suite Access (confirmed working 2026-02-23)
- Gmail ✅ | Drive ✅ | Calendar ✅ | Docs ✅ | Sheets ✅ | Slides ✅ | Keep ✅
- Zoho Mail browser login: TOTP from 1Password ("Zoho Mail - Account"), browser trusted 180 days
- Bookmarks bar set up by Steve with all services + Email folder
- To create docs/sheets/slides and share: use docs.google.com/create URLs, Share → sjpeacock@live.co.uk

## Google Apps Script
- Can be used to programmatically build complex Google Docs
- To inject script: Extensions > Apps Script > use Monaco editor > base64-decode via atob() to set content
- Unicode special chars (–, ", ") garble via base64/JS — use plain ASCII or avoid in scripts
- Auth flow: Review permissions → Advanced → Go to project (unsafe) → Continue

## Google Keep
- Shopping list shared with me via wilsonpeacock22@gmail.com
- To delete all completed items at once: open note → ⋮ (More) → **"Delete checked items"**

## Weight & Diet Tracking
- Steve is a Slimming World member, also uses MyFitnessPal
- Gained ~1.5 stone back over the past year, now actively tracking
- Weight log: `weight-tracker.md`
- Starting weight (2026-02-23): 199.2 lbs / 14 st 3.2 lbs
- Target weight: 178 lbs / 12 st 10 lbs
- To lose: 21.2 lbs / 1 st 7.2 lbs
- Prefers stone & lbs format

## Token Usage Rules (agreed 2026-02-23)
- **Spawn sub-agents for heavy tasks** — long browser automation, document creation, research tasks
- Prefer JS `evaluate` over full ARIA snapshots where possible
- Prefer web_fetch over browser where possible
- Keep main sessions short — don't let one session become a marathon

## Key Dates
- First conversation: 2026-02-20
- Weight tracking started: 2026-02-23 (starting weight: 199.2 lbs / 14 st 3.2 lbs)
