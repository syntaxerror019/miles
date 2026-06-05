---
title: 'Robotics & Engineering - Week of 06/01/26'
date: 2026-06-04T21:48:15-0400
tags: ['robotics-blog']
image: 'zoom3.jpg'
draft: false
---

---

This post will be a summary of my past two weeks, as I didn't end up creating a post last week.

Overall, there was a lot of progress made on the golf cart's AI system and also the STM32 ROV board that I have been developing.

The version two of the STM32BOBBY boards arrived in the mail on Monday and I got straight to work placing the microscoping components on the board carefully. Before placing however, I utilized the solder paste stencil we ordered in combination. In short, this made applying a reasonable amount of solder paste 100 times easier and more effective. If you are ever working with QFP64 packaged chips or similar, applying the appropriate solder paste amount to the pads is nearly impossible by hand without a stencil!

Here is the stencil that came with the boards and me carefully placing the components:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 35%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/stencil.jpg"/></img>       
                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 35%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/working.jpg"/></img>                                                                           
    <br>    
</div> 

<br>

The biggest challenge was that some of the components were nearly microscoping. Here is a 1k ohm resistor in comparison to the tip of a ballpoint pen and my finger:


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/micro.jpg"/></img>                                                                             
    <br>    
</div> 

<br>

After placing all components and baking it in the reflow oven we made in shop a few months ago, everything was looking pretty good. Some of the solder paste didn't reflow, so I used the hot air gun to heat everything thoroughly in order to get the components to seat properly.

Afterwards, I placed the board under the microscope to ensure there were no obvious bridges or outstanding issues. For the most part, after the isoprpyl alcohol treatment, things were looking pretty good!


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 20%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/zoom1.jpg"/></img>    
                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 20%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/zoom2.jpg"/></img>    
                        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 20%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/zoom3.jpg"/></img>    
                                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 20%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/zoom4.jpg"/></img>                                                                             
    <br>    
</div> 

<br>

Finally, on Wednesday and Thursday, Jonas and I got some of the AI working pretty well considering that the golf cart has programatically controllable steering and braking at this point. Here is a demo of both of these elements being driven by a joystick.

<br>

 <div style="display:flex">  
    <br>
    <center>
        <video width="1080" height="720" controls>
        <source src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/demo.mp4" type="video/mp4">
        Your browser does not support the video tag.
        </video>      
        </center>                                                                   
    <br>    
</div> 

<br>

The brakes are controlled by a linear actuator directly attached to the brake pedal. Although they work, there is no absolute positioning. This makes it impossible for the code and AI to know how much or little the pedal is being depressed. To combat this, I whipped up a 3D print that Jonas attached to it that features a sliding potentiometer. This will provide (not terribly accurate) absolute positioning that will give us a starting point to develop further later.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/actuate.jpg"/></img>                                                                             
    <br>    
</div> 

<br>

With the YOLO model running and some custom code designed to run over Jonas, here are the results...

<br>

 <div style="display:flex">  
    <br>
    <center>
        <video width="480" height="720" controls>
        <source src="https://assets.mileshilliard.com/CDN/blog/videos/6-4-26/AI.mp4" type="video/mp4">
        Your browser does not support the video tag.
        </video>                
        </center>                                                         
    <br>    
</div> 

<br>

Although it isn't the most impressive demonstration, it is a super important proof of concept to me. Know we know that the computer can compute Jonas' position and send the appropriate commands to try and attack Jonas. Now, to make it an autonomous vehicle, we simply need to program the opposite, so it doesn't run him down! This AI stuff is easy!