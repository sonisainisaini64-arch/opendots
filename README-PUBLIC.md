
## Update 2026-10-26 — Slack fixes included in this copy
- Slack identity accepts tenant 'unknown' (upstream adapter does not send a team ID with message events), user allowlist still enforced.
- Learning selector uses the configured Slack Dot for channel runs (channel agentId is the channel name, not a Dot UUID).
- Groq schema fixes for page tools and computer tools, 300s turn timeout, free-voice endpoint, and team ask_dot / read_dot_chats tools are all included.
- Note: team Dot instructions and Company HQ pages are data, not code — a fresh install creates its own Dots. If you set up a Main Dot, add this rule to its instructions: when asked to get work from another Dot, it must call ask_dot in the same turn and deliver the result, never reply with only a handoff note.
