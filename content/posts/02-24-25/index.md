---
title: 'Robotics & Engineering - Week of 02/24/25'
date: 2025-02-28T13:37:00-0500
tags: ['robotics-blog']
image: 'phone2.webp'
draft: false
---

---

This week I locked in and spent a good chunk of time identifying the reasoning behind the mysterious crashing phenomenon we have been experiencing for over a year and a half in the ROV. 

<br>

## Raspberry Pi 5 Problems

In the past, the main control computer (RPi 5) was experiencing power interruption issues due to the massive current draw of the 8 thrusters. Because of the low dropout voltage in the 5 volt regulator, we found that adding some capacitange along these output lines helped smooth out any wild ripples. I ended up soldering 6 supercapacitors together to make a bank capable of handling 12v. Using this cap-bank seemed to be enough to fix that power issue.

Now, however, there is a new problem. The Pi 5 will now shut off randomly, but the other Raspberry Pis running on the same 5v output from the regulator experience no issue or interruption. I noticed it happened mainly in the water and after it had been undergoing testing for a while. This lead me to think that an excess temperature in the tube could put the Pi 5 in a state of thermal shutdown. After doing some tests, I found that the ambient temperature in the tube reaches about 37C with all electronics idle, and can reach upwards of 40C when the Pi 5 is doing computation. The CPU never reported temperatures above 70C, even under extreme computational load. 

Now, although I don't exactly know if this is the problem, I do beleive it is not helping the cause when it comes to the mysterious shutdown of the Pi. I plan on doing more research and experimenting on this lead next week.

On top of these issues, last week, the movement system seemed to be non-functional. This, I later found out, was due to a bad optocoupler that I ended up replacing before our pool testing of the week. After doing some diagnostics, finding a burnt wire, replacing the wire, and finding an overheating 5v regulator, I traced the issue to one of the 3 SMD optocoupler packages.

The LM7805 regulator in charge of providing isolated, logic level signals to the optocouplers for the ESCs was getting very unusually warm. Too hot too touch in fact. I checked the output pins of the regulator, and discovered that the output and ground pins were shorted together somewhere. By reverse engineering the PCB and looking at the PCB layout on my computer, I followed the traces and determined that one of the 3 optocouplers was shorted. I then called it quits for the day, and left the hard work for my future self.

The next day, I realized I was now future self. I desoldered each optocoupler one by one, checking to see if it was the cause of the short. Of course, with my luck, it ended up being the last one I removed. For people reading, I assume you know why this is a pain. Working with SMD by hand can be difficult. (Not always though)

Ultimately, I ended up replacing the faulty one, and it all worked perfectly. I also replaced the 5V regulator as I concluded that it was likely damaged after the insane heat it was producing.

<br>

<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/02-24-25/chip.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/02-24-25/reg.webp">
    </img>
</div>
<sub>The SOP packaged SMD optocoupler (left). The new 5v regulator (right).</sub>
<br><br>

On a more positive note, we got the ROV in the pool for some final hydrodynamic testing. This will finally conclude Tim's rather long science fair project involving hydrodynamics and the ROV. 😅

<br>

## Light Strip

As if I haven't already bitten off more than I can chew, Jonas and I have also been working on some LED lighting in the classroom section of the shop. Our thinking was that the colors could be time-based. That way we know how long we have until the period is over, and when the bell rings (which is practically impossible to hear from in there) signaling that its time to leave. 

We wanted the whole thing to be made out of parts that Mr. Christy was throwing out. Old LED strips (with a few burnt out pixels), a brand of microcontroller (likely before Arduino came around) that lacks support, a very old ethernet shield for getting the time, and an adafruit perf-board hat too. Its a very less-than-ideal setup, but to think that its making use of old electronics otherwise considered trash is the whole point of the project really.

<br>

<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/02-24-25/sidewow.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/02-24-25/topomg.webp">
    </img>
</div>
<sub>Stack of shields (left). Layed out boards (right).</sub>
<br><br>

Although it isn't done, the board sucessfully uses ethernet to get the time via an API endpoint. The working part of the LEDs isn't all there yet either. I think I forgot the pull resistors on the FETs so thats a next-week job for future me...

<br>

## Random (Urban?) Exploration

There is this mechanical room off the robotics shop that happened to have it's door open. I couldn't pass up the opportunity to take a peek inside.

Inside is, well, a machine room. It has some really ginormous transformers that I would assume run the whole school. There was this other big generator looking thing too which I am not sure if is functional anymore (I would definetely be able to hear it fire up if it worked) and there was a wild organized chaotic mess of wires that I assume are for telephone, or perhaps the intercom system. I can't imagine having to fix anything burried that mess though!

<div style="display: flex;">
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 33%;" 
        src="/posts/02-24-25/uh.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 33%;" 
        src="/posts/02-24-25/phone1.webp">
    </img>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 33%;" 
        src="/posts/02-24-25/phone2.webp">
    </img>
</div>
<sub>Giant engine, with cool battery array on the floor (left). A mess of phone lines (center & right).</sub>
<br><br>