---
title: 'Robotics & Engineering - Week of 11/10/25'
date: 2025-11-13T18:09:48-0500
tags: ['robotics-blog']
image: 'header.gif'
draft: false
---

---

This week was extremely CAD heavy for me, with a mix of projects that I ended up working on both during shop time, after school during robotics, and at home as well. 



But on a more interesting topic, Jonas and I got the steering working on the Ford Think automatically. In the previous year, his brother installed a large motor and chain to steer the wheels electrically. This was only done in a quick test, so we wanted to make sure it would still work for us.

Originally we tried a standard 5A, 12V power supply, but it just couldn't deliver the amperage for the big chunker. We then stole the ROV power supply which can deliver 3x as much current. This worked great!

<br>

<video style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" controls>
    <source  src="/posts/11-10-25/steering.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<br>

Also while I was working in Fusion 360, I gave some thought to a PCB that I have been putting off designing for a few weeks now. This board is for the Ford Think dashboard. The original dashboards (which are now very expensive) were smashed a few years ago when the golf carts were vandalized. For the past few weeks, I have been slowly picking away at a new design for the dashboard (mostly in terms of electronics) for monitoring the batteries, along with an RFID system used to authenticate and ID the driver.

Although started a while ago, I finished up the dashboard face plate. The simple design has a space for the TFT display to sit, along with two labeled holes for the Enable and Mode switches. It also includes a rectangular cutout designed to house a neopixel strip. They will provide basic status indication and they glow through the plastic at the front for a clean look that is only noticeable when turned ON.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/11-10-25/gc1.png"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/11-10-25/gc2.png"/></img>    
    <br>    
</div> 

<br>

The PCB for this setup is not done yet, and is still pretty messy. This is version one which I have already assembled and tested on a breadboard. The functionality is simple:

* 10k & 150k ohm voltage divider: Reading battery voltage.
* 128x160 TFT display: Live updates and notifications to the driver.
* RFID Scanner: Used to authenticate and identify the driver (will be useful when autonomous mostly)
* Relay & External Outputs: To enable/ disable driving functionality programmatically.
* UART Ports: For future communication in a decentralized modular system.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: auto;" src="/posts/11-10-25/schematic.png"/></img>    
    <br>    
</div> 

<br>

After this, I figured I would crank out a few more CAD related projects while I was sitting down. 

In my parent's car, the handle that releases the rear seats to fold down has been broken. We usually use a stick to push on a little contact where the lever would be present normally. It only broke because the spring in it is extremely strong and it the plastic was very old and brittle. I took the assembly off the seat and looked at it closely. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/11-10-25/porsche.jpg"/></img>    
    <br>    
</div> 

<br>

I then made a sketch with dimensions on paper first of the exact handle. Once done with that, I transferred things over to Fusion 360, where I optimized the design slightly to reduce filament usage etc. The handle itself is designed in a way that makes it difficult to replicate digitally. I ended up watching a few tutorials on how to use tools, but I learned quite a bit in the process! 

<div style="display:flex; justify-content:center; gap:20px;">
    <div style="
    width:40%; 
    height:500px; 
    background-image:url('/posts/11-10-25/cayenne1.png');
    background-size:200%;   /* zoom */
    background-position:center; 
    background-repeat:no-repeat;">
</div>
    <div style="
    width:60%; 
    height:500px; 
    background-image:url('/posts/11-10-25/cayenne2.png');
    background-size:170%;   /* zoom */
    background-position:center; 
    background-repeat:no-repeat;">
</div>
</div>


Now, the only thing I have left to do is print it out in PETG and make sure my tolerances are correct for my Ender 3!