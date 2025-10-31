---
title: 'Robotics & Engineering - Week of 10/27/25'
date: 2025-10-30T21:37:02-0400
tags: ['robotics-blog']
image: 'done.webp'
draft: false
---

---

There were significant things done to the Golf Cart (which I think I should start calling a car because its bigger than a golf cart really) this week which is super promising for its future.

With the help of Jonas, the brake lights, horn, wiper, and washer fluid pump all work properly! Some of these steps were really insightful as I finally got a grasp on the standards used by Ford when wiring the vehicle up. Luckily enough, the brake lights and switches were all connected and needed no additional work other than providing the 72 to 12 volt converter which was installed last week. The horn and wipers however needed to be controlled externally via a switch. The switch simply grounds the relays for the horn and wipers respectively meaning the switch only has a small current flowing through it which is perfect for our setup.

The wipers were not the original intention when wiring everything up. I had originally reverse engineered the system to turn the headlights on, but when I shorted the wires together to turn the lights on, the wipers started going! That's why I look stumped in the third video...

The following are videos demonstrating each of these elements in action.

<br>

 <div style="display:flex">  
    <br>
    <iframe
        src="https://www.youtube.com/embed/pe6rxEzTKGM?feature=share&rel=0&mute=1"
        frameborder="0"
        style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: 500px;"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        title="YouTube Short">
    </iframe>
        <iframe
        src="https://www.youtube.com/embed/uZvyrpQnej0?feature=share&rel=0&mute=0"
        frameborder="0"
        style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: 500px;"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        title="YouTube Short">
    </iframe>
            <iframe
        src="https://www.youtube.com/embed/unTqKsfrItM?feature=share&rel=0&mute=1"
        frameborder="0"
        style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: 500px;"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        title="YouTube Short">
    </iframe>
    <br>    
</div> 

<br>

After all the fun we had working with the 12v system, we came back to reality to face our biggest problem yet. The batteries had been swelling up (marginally) during use, particularly when fully charged. According to my research, the prismatic cells can inflate anywhere from 0.5-1mm per cell. With 24 of these prismatic cells in place, that nearly an inch of expansion! Luckily, the cells didn't swell nearly that much, but they did swell just enough to make it impossible to remove the batteries by hand.

The main reason we wanted to remove the batteries was to attempt to install a barrier between each cell to prevent unwanted shorts due to excessive rubbing/touching during driving. Another (significant) problem was that the 24th battery's sheathing had rubbed away just enough that it was making contact with the metal frame of the golf cart, which was in turn electrifying the entire setup. Not ideal.

This tiny pinhole scratch in the case was the cause for all the trouble:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: auto;" src="/posts/10-27-25/hole.webp"/></img>      
    <br>    
</div> 

<br>

The majority of the time that was not spent working on the 12v system was spent driving around to try to drain the batteries. "Unfortunately" the cells are a major upgrade compared to the old lead acid batteries, which means it took several hours of sustained driving to drain the batteries.

After bringing the batteries down to a safe voltage, they were noticeably less puffed up, and with the help of some force and tape, we were able to yank them out vertically.

The solution we came up with was to put a thin plastic insulator between each cell to minimize vibrations and rubbing between cells. We decided to use a thin plastic sheet used to store papers in binders. By cutting 23 of these to the appropriate size, we hope to mitigate this problem altogether (or as best as possible).

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/10-27-25/plastic.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/10-27-25/cutting.webp"/></img>      
    <br>    
</div> 

<br>

With all the plastic cut to size, we really hope to get everything installed completely by the end of next week. This will (hopefully) conclude the journey with the battery, meaning we can spent more time focusing on the important things like autonomy and installing a wheelie bar (joking).