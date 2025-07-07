---
title: 'DIY RC-Car Electronics'
date: 2025-07-01T07:25:53-0500
tags: ['diy', 'hardware']
image: 'car.webp'
draft: false
---

---

I inherited a LaTraxx (Traxxas) Prerunner RC Car from a friend as a gift to fix. The car would power on and the receiver would connect, allowing the steering servo to move, however the car would not roll. It had been sitting in their basement for years unused, causing the NiMH battery to be extremely discharged. After charging and discharging it repeatedly, I was able to regain sufficient capacity and it worked fine, however I ended up replacing it altogether later on.

To fix the main issue, I needed to find out why the car wasn't driving even after receiving commands from the 2.4Ghz receiver (which it was, as I ended up scoping the lines)

I came to the conclusion that the "ESC" (not a real ESC technically) was blown. This part ([Traxxas 3045R](https://www.amazon.com/Traxxas-3045R-Electronic-Control-Waterproof/dp/B00QYZKOWO)) is in charge to converting the 2s voltages from the battery down to ~6 volts for the servo. It also interpreted the servo PWM signals from the receiver, and converted them to the appropriate logic for the motor driver to spin the driving motor. All this is impressively packaged into a small little device, but I found it not repairable due to the fact that it was fully potted in some kind of epoxy from the manufacturer.

The price of these ESC ranges, but I found them no lower than 70 USD from the manufacturer's site. I was still determined to get the car working, so I decided to make my own.

<br>

<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/rc-car/carthumb.webp">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/rc-car/esc.webp">
    </img>
</div>
<sub>RC Car (left). New ESC (right)</sub>
<br><br>

The whole thing is centered around an Arduino Nano, which is the "brains" of the car. It receives the PWM from the 2.4Ghz Receiver and maps them to different PWM signals for the BTS7960 motor driver. 

Then, I included a few linear regulators on the board to power the Arduino and the Servo independently with their appropriate voltages.

The whole thing was soldered onto a perf board according to the schematic shown.

<br>
<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/rc-car/schematic.webp">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/rc-car/pcb.webp">
    </img>
</div>
<sub>Full Schematic (left). Finished product (right)</sub>
<br><br>

Then, I had to flash firmware to the micro-controller on board.

I wrote custom code to interpret my signals, which I measured and included, but made easy enough to modify. If you are making this yourself, you will need to measure and include these values. Skim the code for comments in regard to this.

This project is open source and can be found on GitHub: [https://github.com/syntaxerror019/RC-CAR](https://github.com/syntaxerror019/RC-CAR)

While I was making this, I noticed the battery was kind of not great. It would only run for 10 minutes outdoors which was not long enough for me.

By cutting up old FPV drone batteries and extracting the cells, I soldered my own 2s battery pack. 

**I added a LiPo voltage monitoring feature for the new battery too**

<br>
<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 30%;" 
        src="/posts/rc-car/code.webp">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 30%;" 
        src="/posts/rc-car/battery.webp">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 30%;" 
        src="/posts/rc-car/car.webp">
    </img>
</div>
<sub>Firmware (left). New Lithium Battery (center). Car overview (right).</sub>
<br><br>

### Final product:

<br>
<div style="display: flex;">
    <iframe 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%; aspect-ratio: 16/9; border: none;" 
        src="https://www.youtube.com/embed/rpNEpQOBJ1I?autoplay=1&loop=1&playlist=rpNEpQOBJ1I" 
        allow="autoplay" 
        allowfullscreen>
    </iframe>
    <iframe 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%; aspect-ratio: 16/9; border: none;" 
        src="https://www.youtube.com/embed/gDkL-OJdZws?autoplay=1&loop=1&playlist=gDkL-OJdZws" 
        allow="autoplay" 
        allowfullscreen>
    </iframe>
</div>
<br><br>
