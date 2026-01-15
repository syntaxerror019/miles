---
title: 'Robotics & Engineering - Week of 01/12/26'
date: 2026-01-15T16:33:36-0500
tags: ['robotics-blog']
image: 'image.png'
draft: false
---

---

I spent this week working on various projects and side tasks.

On Monday, Mr. Christy needed someone to assemble the newly purchased DIY reflow oven kit ([EZ Make Oven](https://learn.adafruit.com/ez-make-oven/overview)).

We have had a small countertop convection oven in the shop ready to be used for this project for several years now, so these were the final components needed to get things up and running.

With the help of Jonas, we got the hardware setup complete in about one period. The Adafruit guides made this very easy. I then realized that I didn't want to work with MicroPython to try to load the software onto the provided PyPortal board. To combat this, I handed the project over to Andrew, who graciously did all the work for software for us. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/01-12-26/image.png"/></img>                                                                          
    <br>    
</div> 

<br>

This ended up being a bit of hassle. Apparently, MicroPython "sucks" and is difficult to get working on this board. I left him doing his thing and decided to continue working on my Golf Cart PCB. The new (correctly sized) ESP32s arrived in the mail, so I wasted no time getting it installed and immediately began doing some work with the software on it (in CPP).

After getting frustrated with how some libraries weren't compatible on this ESP, I decided to revisit yet another failed attempt of my backup alarm PCB. I used the scope to probe around on it, and although I forgot to take any pictures of the waveform, it was in fact generating a square wave. After some staring, I noticed that the frequency of the square wave generated was ~1khz. That means 1000hz or that the backup alarm would be beeping 1000 times every second. Well that's not right. I had done the math to have it be about 700ms off, and 300ms on. Basically as close to a 50% duty cycle of a 1hz waveform as I could get. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/esp-done.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/01-12-26/scope.png"/></img>                                                                          
    <br>    
</div> 

<br>

Clearly the math was wrong, and after inspecting the PCB a little more, I probed R1 and discovered that it was only a 100 ohm resistor even though it should have been a 1000 ohm resistor to get the required timing.

After quickly desoldering and resoldering with the correct value, I probed the base of the NPN to check waveforms, and everything checked out perfectly. I reinstalled the alarm and it sounds great!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/wrong-resistor.webp"/></img>                                                                         
    <br>    
</div> 

<br>

After this was finished, I decided to check in on Andrew and his code.

He somehow managed to get the software flashed onto the microchip and was calibrating the oven's temperature curve and overshoot variables. This was done by heating the oven up to 100 degrees Celsius, and then cutting off the heater to see how long it would take to get the temperature to begin dropping again.

After this short procedure was done, he flashed the chip with the full software and it looks good!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/oven-calibration.webp"/></img>       
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/oven-working.webp"/></img>                                                                         
    <br>    
</div> 

<br>

We ran some tests with the oven (no boards yet) and it seemed to do pretty well. The board has a pretty good PID system to keep the oven at the appropriate temperature, however it still isn't tuned great. After some tests, we found that the temperature curve overshoots then undershoots over and over again. 

You can see an example of this in the following timelapse.

<br>

<video style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" controls>
    <source src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/run1.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<br>

Now we just need to put in a PCB and see if it really can reflow the solder paste as intended!

To finish things off for the week, I discovered an unused projector. 

I created a very rudimentary mount out of scrap wood to hang it up above our row so that we can display nonsense at all times to the entirety of shop.

Below, you can see a photo of it, with Mr. L disapproval.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="https://cdn.mileshilliard.com/blog-cdn/1.15.26/new-projector.webp"/></img>                                                                         
    <br>    
</div> 

<br>