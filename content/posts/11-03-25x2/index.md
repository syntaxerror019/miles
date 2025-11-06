---
title: 'Robotics & Engineering - Week of 11/03/25'
date: 2025-11-06T15:19:47-0500
tags: ['robotics-blog']
image: 'topdone.webp'
draft: false
---

---

Although this was a short week, I finally returned to the backup alarm circuit and wiring for the Ford Think (golf cart) which had been previously abandoned.

Resuming where I left off, I found that the alarm was installed and there were power wires properly installed and routed, yet they remained unconnected. From past experience, upon applying power to the alarm, it will sound a (loud) continuous tone rather than the classic beeps we hear on trucks. In order to combat this, I figured using a simple 555 timer circuit would be appropriate, rather than setting up an entire MCU and programming it to simply output a square wave. 

I let Jonas build a prototype on the breadboard with a LED which worked out just fine. After that was confirmed to work, I helped him transition his work to a circuit schematic and eventually a PCB layout. 

Once that was done, I milled it out on the Bantam PCB mill, which worked flawlessly.

(Auto router had a stroke in the first one here)
<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 24%; height: auto;" src="/posts/11-03-25x2/footprint.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 25%; height: auto;" src="/posts/11-03-25x2/pcb.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 25%; height: auto;" src="/posts/11-03-25x2/topdone.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 25%; height: auto;" src="/posts/11-03-25x2/bottomdone.webp"/></img> 
    <br>    
</div> 

<br>

The soldering is OK, but its definitely not my cleanest work! I'm a little rusty with proto boards.

I also used a TIP120 NPN transistor in the design, but I realised that we don't have any on hand. The good news is that I have some at home, so I will bring in a few for the shop and for this project, while the order for new BJTs is coming in.

After the PCB was (nearly) completed, I crimped some JST connectors onto the backup alarm's power wires and Jonas ran some power cables underneath the car in order to power the board and also the alarm.

 <div style="display:flex">  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto; transform: rotate(90deg);" src="/posts/11-03-25x2/cable.webp"/></img>    
</div> 

And as an added bonus, on our day off, I relocated my ham radio antenna to my roof. Read more about that in [my previous post](/posts/new-antenna/)

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/new-antenna/pre-screwed.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 32%; height: auto;" src="/posts/new-antenna/wire2.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/new-antenna/finished.webp"/></img> 
    <br>    
</div> 

<br>