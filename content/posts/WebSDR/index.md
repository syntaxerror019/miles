---
title: 'OpenWebRX+ WebSDR'
date: 2025-03-26T19:43:42-0400
tags: ['ham', 'radio']
image: 'yay.webp'
draft: true
---

---

After messing around with public WebSDRs around the world, I thought it would be a fun project to set my own SDR up. I had an extra RPi 3 laying around (which I later replaced with a Pi 5) but I just needed some way to receive the RF signals.

A popular option that has high-praise was the RTL-SDR, so I purchased one. In terms of compatability, it works with both Windows and UN*X systems, so the Raspberry Pi should have no issues. 

I burned Raspberry Pi OS Lite 64-bit onto my SD card, and booted up the Pi. After SSH'ing into it, I followed the instructions found here (<a href="https://github.com/0xAF/openwebrxplus">https://github.com/0xAF/openwebrxplus</a>) to get the system up and running. 

I found that there were a few settings that I ended up changing that made the whole thing a whole lot better:
- The first one was the maximum client connections. Set this depending on your hardware. I found my RPi 3 could handle 2 clients comfortably, whereas 3 was a stretch.
- The next was the client timeout. Because I planned on making this a public SDR, available to anybody, I wanted to make sure people wouldn't abuse it. This timeout is important as it prevents people from connecting to the server, and tying it up for hours or even days. A generous time limit I found was an hour. You could go higher depending on your expected clients and generosity.
- The final important setting is about the general SDR information, including QTH (location), elevation, antenna type, hardware setup, etc. This makes finding your SDR a whole lot easier for other people.
