---
title: 'Robotics & Engineering - 2025-2026 Year-End Summary'
date: 2026-06-15T12:00:00-0400
tags: ['robotics-blog']
image: 'image.png'
draft: false
---

---

What a year it has been in the shop! From massive battery upgrades to autonomous driving AI, we have accomplished some huge milestones this school year. Here is a look back at the most significant projects from the 2025-2026 robotics and engineering season.

### The Golf Cart's Power Overhaul
Without a doubt, the most time-consuming (and occasionally terrifying) project this year was replacing the old, sulfated lead-acid batteries in the Ford Think golf cart with a custom 24S 72V LiFePO4 battery array.

We started by drilling and tapping prismatic cells, designing copper bus bars, and wrestling the massive 70+ lb pack into the cart's frame. It was far from a smooth journey—we dealt with swollen batteries, unexpected shorts that practically blew up our first BMS, and endless hours of balancing cells manually. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/09-15-25/stack.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/10-13-25/installed.webp"/></img>     
    <br>    
</div> 

<br>

Ultimately, we prevailed by installing a 300A Daly Smart BMS that keeps the pack actively balanced. The upgrade completely eliminated the severe voltage sag we used to see under load, giving the cart significantly more punch and capacity. We also re-wired the 12V system, fixing the brake lights, horn, and wipers, and set up a custom Raspberry Pi-based HUD dashboard to log telemetry!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/02-09-26/app.webp"/></img>        
    <br>    
</div> 

<br>

### Autonomous Driving & AI Navigation
With the power system stable, we shifted focus to the cart's autonomy. We installed a BTS7960 motor driver and a large motor to control the steering mechanically, driven by an ESP32 logic controller.

For navigation, we opted for sensor fusion, heavily focusing on a vision system. We spent weeks driving around the campus with a roof-mounted webcam, collecting and annotating thousands of images to train our own YOLO (You Only Look Once) computer vision model to recognize people, signs, and other vehicles. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/12-08-25/training.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/12-08-25/working.webp"/></img>     
    <br>    
</div> 

<br>

To tie it all together, we added a sliding potentiometer to the brake pedal linear actuator for absolute positioning. By the end of the year, we successfully ran a proof-of-concept where the cart could use its AI vision to track a target and programmatically control steering and braking in real time!

### Custom PCBs and Tiny Components
Beyond the golf cart, this year saw a massive leap in our custom circuit board manufacturing. We designed, milled, and ordered multiple PCBs, including a custom backup alarm for the golf cart and the STM32BOBBY breakout board for the Sunk Robotics BOB ROV.

Working with the STM32F405 chip meant handling nearly microscopic 0603 components. We built and tuned our own EZ Make reflow oven in the shop to cure the solder paste. It took a lot of rework with tweezers and hot air, but we learned a ton about modern SMD manufacturing.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/04-27-26/hand.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/11-03-25x2/topdone.webp"/></img>     
    <br>    
</div> 

<br>

*This post was written entirely by a local AI model (Qwen3.5:32b) running in the shop! All contents created with a single prompt.*