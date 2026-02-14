---
title: 'Robotics & Engineering - Week of 02/09/26'
date: 2026-02-12T19:38:07-0500
tags: ['robotics-blog']
image: 'app.webp'
draft: false
---

---

Finally, a week without damage!

This week was a commitment to get the broken battery out, new battery in, and BMS balancing everything safely.

Although we have said this the past 3 weeks, this week we were determined to get things done without issues.

To start off the week, we had to identify what was making the BMS and batteries upset in the first place. To do this, I read voltage between the battery terminals (+/-) and the frame of the entire golf cart. I immediately noticed that the negative pole on the batteries were connected to the frame, which is bad. We already knew this, but I confirmed that the 80 volt battery system is *supposed* to be electrically isolated from everything. 

To trace the problem to its root, I started probing. Long story short, I traced things back to a small PCB I made not too long ago (in a recent blog post) responsible for generating a tone as our backup alarm. It had tied the inverter GND and logic level GND wires together resulting in an unwanted connection. I snipped this wire and the short went away, but I wasn't convinced that this was the problem. The wires used were way too thin to be carrying the damaging current that was clearly flowing when the old battery cell blew up last week.

I decided to disconnect the golf cart negative wire before proceeding. This is how the BMS was configured last week:


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: auto;" src="/posts/02-09-26/wired.webp"/></img>                                                                           
    <br>    
</div> 

<br>

By Tuesday, I had drilled and tapped yet another prismatic cell to be the replacement, and on Wednesday, Jonas and I got it hooked up (externally) to the rest of the cells in the battery

This was done because Jonas thought that maybe the frame was shorting to the external metal casing of the cell, which is possible. We ended up powering it up shortly after, and too our surprise, everything worked great!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/02-09-26/external.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/02-09-26/light.webp"/></img>                                                                           
    <br>    
</div> 

<br>

The green light on the BMS indicates that it is actively balancing the cells and everything is within spec!

Once we confirmed that everything worked externally, Jonas and I carefully re-installed the battery into the rack and attached the copper bus bars as well. Additionally, I reconnected the golf-cart negative wires (both motor negative and logic negative) to the BMS' P- terminal as mentioned on the datasheet. However, before powering it up again, I did a final check to ensure that there was no voltage difference between the metal frame and the batteries. Upon probing with the multimeter on VDC, we noticed that the voltage would quickly read ~30v and then drop rapidly to about 2v and then would kind of hang around 0.3-0.9v which makes no sense. 

I'm not sure if this is some sort of capacitive coupling or what, but I really want to figure it out before I reconnect the BMS for a final power-on test.

On the bright side however, I got the DALY BMS app on my phone and was able to configure, manage, and monitor all the cells in real time which is awesome!

The BMS shows each individual cell's voltage, along with how it is actively balancing them. An orange arrow pointing up next to a cell number means it is receiving charge, and a green arrow pointing down means that cell is delivering charge. Pretty fun to see it in action.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/02-09-26/wires.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 35%; height: auto;" src="/posts/02-09-26/app.webp"/></img>                                                                           
    <br>    
</div> 

<br>

So even though we are now one step closer to preparing the golf cart, there is still more to do so that we can ensure that our battery system is foolproof and won't need to be torn apart again in a few months for repair or modifications...