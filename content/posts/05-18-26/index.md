---
title: 'Robotics & Engineering - Week of 05/18/26'
date: 2026-05-21T16:43:11-0400
tags: ['robotics-blog']
image: 'hud.webp'
draft: false
---

---

This week was very exciting, as we got the golf cart put back together and working! Although the batteries still don't seem like they are at 100%, they were good enough for us to drive around for a good long while!

As you can see in the photo below, the charger is charging the batteries properly (unlike how it had various results leading to various states of charge amongst cells). I also installed a small switch on the charger that allows me to adjust whether the charger outputs its standard 10 amps, or instead 5 amps. This is done by splitting the two paralleled charger boards internally electrically. Charging slower I found really does help the BMS keep up and keep other cells in check in terms of delta voltage.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-18-26/chg.webp"/></img>                                                                           
    <br>    
</div> 

<br>

Monday was the day where things really came together and Jonas and I were able to reinstall the seat to the frame. Tuesday and Wednesday were late-start days where Juniors and Seniors came to school at 11:20 AM rather than 7:20 AM. This was a nice treat, but did mean that our classes were significantly shorter which showed in our lack of productivity...

We were able to drive the vehicle around a bunch which was a nice way to ensure things were working properly!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-18-26/front.webp"/></img>                                                                           
    <br>    
</div> 

<br>

After reinstalling both front body panels, it really began to look more like a vehicle!

On Wednesday, I had time after school in shop, so I finished up version 2.0 of the STM32BOBBY breakout board for BOB ROV for Sunk Robotics. This new version was important as it made some necessary changes to the board. This includes test points (TPs) on the layer which makes debugging much easier. I also changed the board dimensions to fit into a breadboard more easily. I also made the vias all one consistent dimension which allowed things to be more compact and more neat. There were also a few other cosmetic changes.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-18-26/pcb.webp"/></img>                                                                           
    <br>    
</div> 

<br>

It even looked pretty good on JLCPCB's site!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-18-26/jlc.webp"/></img>                                                                           
    <br>    
</div> 

<br>

Finally, on Thursday, I got the HUD system for the dashboard of the golf cart working properly. The setup is much cleaner now, with a nicer UI and the Pi in a kiosk mode meaning the screen automatically boots up with power. The only thing that wasn't ideal was the fact that the UART cable to the BMS for telemetry was draped across the interior. This was an easy fix with the help of Jonas who was able to route the cable underneath the golf cart with the front end plugged to the RPi and the end leading to the BMS's UART cable connection.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/05-18-26/usb.webp"/></img>                                                                           
    <br>    
</div> 

<br>

The only thing I noticed that isn't great on the vehicle is that the cells' delta voltage drifted apart way too much when charging at 10 amps. I think I might put the Lab PSU onto the low cells (the newest ones we recently installed) to bring everything back to a level playing ground. That is for next week!