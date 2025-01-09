---
    title: 'Robotics & Engineering - Week of 1/6/25'
    date: 2025-01-06T13:03:04-04:00
    tags: ['robotics-blog']
    image: 'base_assembled.jpg'
    draft: false
---

---

While in robotics this week, I continued my work on the lightbox project. This week involved a lot of CAD and 3D printing for me, and ended up taking a bit more time than expected. Generally speaking, I am ahead of schedule so I don't have to worry too much. 

The light box is composed of two main parts that get 3D printed and screwed together. There is the base which is the outer shell and holds the button and power jack. It is also home to the PCB I made last week, fitting the design perectly. 

The second part is an "insert" that goes into the first piece. It's role is to hold the acrylic and the LED NeoPixels, and it screws into the built-in screw holes modeled in the design. This allows for a snug fit for all components!

<div style="display:   flex">                                                                                                                          
<br>
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%;" src="/posts/1-6-25/base.png"/></img> 
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%;" src="/posts/1-6-25/insert.png"/></img> 
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%;" src="/posts/1-6-25/full.png"/></img>                                                                         
 <br>    
 </div>   

Unfortunately, during the first attempt at printing the parts, the model unstuck from the bed (due to poor adhesion) and made a bit of a spaghetti mess over-night.

<div style="display: flex;">                     <br>                                                                                                                            <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%;" src="/posts/1-6-25/lol.jpg"/></img>  
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%;" src="/posts/1-6-25/un-lol.jpg"/></img>                                                                         
 <br>    
 </div>   
<br>
<br>
<div style="display: flex;">                     <br>                                                                                                                            <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%;" src="/posts/1-6-25/power.jpg"/></img>  
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%;" src="/posts/1-6-25/switch.jpg"/></img>                                                                         
 <br>    
 </div>   
 <br>

And for next week, I will be designing and laser engraving a rectangular section of acrylic that will serve as the transparent exit sign itself.

In terms of software, the ATTINY84 has a custom written C++ script that reads inputs from a button (including press, long press, and double press).