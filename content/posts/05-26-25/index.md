---
title: 'Robotics & Engineering - Week of 05/26/25'
date: 2025-05-29T18:08:43-0400
tags: ['robotics-blog']
image: 'sumobot.webp'
draft: false
---

---

This week involved an assortment of work on various projects. With the seniors gone, the entire school felt a lot quieter. Luckily, I inherited one of the best spec. PCs in the shop from one of the seniors which will be great for when I get to working on the golf-cart's AI autonomy system! I'm working on dual-booting it with Linux + Windows 11.

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/05-26-25/sumobot.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-26-25/newpc.webp"/></img>                                                                  
    <br>    
</div> 

I also printed and installed the new dashboard panel for the golf cart which will display statistics regarding battery level, range, voltage, and alerts. It will also have low battery alarms and an LED status-bar indicator reminding the driver of how much battery is left. As of right now, we have no way to indicate this, and the batteries have been damaged because of this.

I am also developing a new charging and battery management system that will be used for the 6 lead-acid battery array used on the vehicle. This is because one of the 6 batteries was severely undercharged and has been damaged beyond repair. I did however attempt to bring it back through vigorous de-sulfation methods. It did not work, because one of the 4 cells inside was damaged and bulging.

All 6 batteries are currently being charged in series, which, over time, will cause each battery to become unbalanced, which can lead to harmful overcharging and undercharging on each. The charger onboard charged the array at only 2 amps, and doing some simple math, the vehicle would take over 8 days to fully charge. The new system will consist of a 5000W 20 amp charger, along with an equalizer for every battery that will keep everything in check and regulated, prolonging the lifespan of the expensive batteries.

While working on the golf cart, Jonas and I also worked on attaching an industrial back-up alarm to it. These are commonly found on large trucks like flatbeds or tow-trucks and come on when in reverse. Turns out they are significantly louder than we anticipated, so Jonas added some muffling to it using foam, which was the most feasible way to lower the volume. 

To run the back-up alarm, we need a way to detect when the golf cart is in reverse. To do so, we did some testing on the output serial coming from the golf cart control board. This will trigger a microcontroller to beep the alarm, and can be configured to perform more actions later on for this project.

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 23%; height: auto;" src="/posts/05-26-25/panel.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 23%; height: auto;" src="/posts/05-26-25/battery.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 23%; height: auto;" src="/posts/05-26-25/backupbeeper.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 23%; height: auto;" src="/posts/05-26-25/arduino.webp"/></img>                                                                  
    <br>    
</div> 

Also, I began the deconstruction and hopefully repair of my bluetooth speaker that is over 12 years old. It's sound quality is comparable to today's hardware too. The issue is regarding the battery. Off of a full charge, it lasts about 10 minutes, which is almost unusable in most cases. To combat this, I apart the device and looked inside to try to replace the battery.

The speaker is called a JAMBOX, produced by JAWBONE, and it is extremely well designed, engineered, and packaged. Everything is compact and fits together like a bit of a puzzle. It was a bit interesting taking it apart, as its less straight-forward than most other devices hardware-wise! 

Once inside, I immediately noticed that there was a small Li-Ion battery that was extremely puffed up. I found a similar sized battery and replaced it. After soldering it to the main board, I tested it but found a strange issue. When I powered it up with the new, fully charged battery, it would start up for a few seconds, and then quickly shut down like the battery was dead or it was experiencing an issue. Strangely enough, plugging it in via USB made it stay on, however when plugged in, I was unable to get it into pairing mode. I'll have to look at this more next week, but until then I can only speculate.

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 38%; height: auto;" src="/posts/05-26-25/bluetoothpuffedbattery.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 57%; height: auto;" src="/posts/05-26-25/bluetooth.webp"/></img>                                                                
    <br>    
</div> 