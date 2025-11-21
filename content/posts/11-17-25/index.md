---
title: 'Robotics & Engineering - Week of 11/17/25'
date: 2025-11-21T07:46:47-0500
tags: ['robotics-blog']
image: 'pcbtop.jpg'
draft: false
---

---

This week I spent a good portion of time milling out and working on the PCB for the Ford Think. The PCB has a TFT display for the control and battery information, along with an RFID tag scanner for authentication (to prevent unwanted sophomore operation...)

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/11-17-25/tft.jpg"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/11-17-25/nfc.jpg"/></img>    
    <br>    
</div> 

<br>

The board came out nicely, but it had a few minor issues including the fact that the board was milled over an existing hole in the PCB board, which messed up a few of the traces that needed some post-manufacturing work with some wire and precise soldering.

I then transferred everything from my working breadboard example to the PCB and soldered it all up.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/11-17-25/breadboard.jpg"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/11-17-25/pcbtop.jpg"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/11-17-25/pcbbottom.jpg"/></img>    
    <br>    
</div> 

<br>

Not very beautiful, and turns out, not very functional. I tested the board and the display worked fine, however, the RFID module was not connecting to the Arduino. I checked all connections with a multimeter and they all checked out, so I need to do some more digging to find the source of the problem.

Because I wanted a break from working on the PCB, I decided to pot the relay which is in charge of enabling and disabling the carts programmatically.

With the help of Tim, we made a metal enclosure that the relay to sit in while we filled it full of hot glue to make it more robust and a little more weatherproof.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/11-17-25/pot.jpg"/></img>    
</div> 

<br>