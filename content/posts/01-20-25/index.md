---
title: 'Robotics & Engineering - Week of 01/20/25'
date: 2025-01-23T16:37:13-0500
tags: ['robotics-blog', 'software', 'hardware']
image: 'rov.jpg'
draft: false
---

---

This week, I worked on the ROV for the robotics team as I had already completed the lightbox project as shown in the previous post. The robot has been experiencing some reliability issues, and they have something to do with the Raspberry Pi 5 we have onboard. The Pi would suddenly "crash" (meaning a loss of connection over ssh; ethernet port lights turned off; only red power light was illuminated) without warning. I tried swapping cables, to no avail. I also tried disconnecting wires on the GPIO pins (subsequently disabling parts of the ROV's functionality) which also didn't have much affect. Finally, I swapped the bootable USB media onto a new Pi 5 and swapped the I2C interface bus from the old to the new Pi in hopes of remedying the issue. This seemed to work temporarily, but it ended up crashing again anyways.

I believe the issue lies deeper, and I am only scratching the surface, as none of the changes I made made a noticeable or consistent difference in how or when it crashed.

Although the Pi 5, which is used to interface the PWM controller (for ESCs, etc.) still crashes, both the front facing camera (running on a Pi 4) and the downwards facing camera (running on a Pi Zero) operate without trouble. This implies that the onboard ethernet switch is still functioning and there is no trouble in terms of communication from the surface to the robot. The issue somewhere between the switch and the Pi 5 itself.

The power distribution board (PDB) is a bit of a mess at the moment due to the hacks I have made. This is because I have been fixing power stability issues, including dropout on the 5v regulator due to massive current draw spikes from the 8 thrusters. Soon, I plan on redoing the PCB altogether which will include a redesign, and a location to house the 5 super-capacitors used to smooth out the ginormous power fluctuations.

<br>
<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/01-20-25/electronics.jpg">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/01-20-25/index.jpg">
    </img>
    <br>
</div>
<br>

Nonetheless Tim, Jonas, and I ended up getting the robot in the pool and functioning decently. The ROV performed great the majority of the time, but Jonas (the pilot) found that at some random intervals, he would lose motor control over the ROV. Because we were put on a time crunch, we ended up ignoring the problem (which occurred three times over the course of ~1 hour) and used the classic "unplug it, wait 10 seconds, and plug it back in" as a temporary solution.

The ROV was used in Tim's science fair project where collected data on fluid dynamics. His plan is to test (and calculate) the fluid dynamics of the ROV with and without his optimizations (including rounding the ROV front, covering up sharp & flat sides, etc.) and do a project on it. He needed the data the same day, so we were scrambling a bit to get the ROV working.

To my surprise, I found the ROV working reliably the next day. There had been no modifications or adjustments since the last run, and nobody had touched it. Although I am glad the ROV is working now, I really do not like the fact that I can't identify the cause of the problem. Things that "fix" themselves often break themselves too. In engineering, this is the opposite of what you want, especially when you aren't aware of the factors contributing the the problem at hand.

<br>
<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 60%;" 
        src="/posts/01-20-25/rov.jpg">
    </img>
    <br>
</div>
<br>