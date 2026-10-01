---
title: Robotics & Engineering - Week of 09/21 - It is remote controlled!
date: 2026-09-24T22:46:00-0400
tags:
  - robotics-blog
image: playback.jpg
draft: false
---

***

This week in shop, I was very productive. 

I spent time working on both the ROV and the golf cart, which both had a lot done to them, especially on Thursday which is our new afterschool club day.

In terms of the golf cart, the control system has been revamped... Instead of using a Metro Mini microcontroller, we are using an ESP32 which is capable of better hardware control. This means we can more accurately read the rotary encoder (with dedicated interrupt pins) and the PPM signal for the radio receiver simultaneously without interference. Additionally, we have significantly more processing power if/when we need it for more complex systems than basic PID loops like the one used on the steering. I also removed the old analog joystick that was previously used to control steering as I found that it would slam rail-to-rail really quickly and saturate the voltage rendering it almost completely useless at 3.3v. This made itself clear when I tried to slowly turn the wheel left, and it immediately full throttled. There is no in between for speeds, which is why I ditched it.

The new radio controller is a major upgrade and will allow a much easier way to interface the entire design. I can use the sticks to override commands the AI sends if I ever need to, and I can also manually control the vehicle basically rendering it as a scaled-up RC car!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-21-26/bb.webp"/></img><br>    
</div> 

<br>

Additionally, I did some adjusting on the YOLO model and got much more promising results in terms of object tracking. By changing the model size and using fewer images trained on the entire school campus and more images focused on the most regularly driven areas, the AI is actually significantly more reliable and efficient at object detection and tracking.

The following demo was not possible last week. If Jonas was in any other position that wasn't perfectly straight with his arms by his side facing the vehicle, the model had difficulty staying focused on him. Now, we can see that this problem has been really reduced.

<br>

 <div style="display:flex">  
    <br>
    <center>
        <video style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" controls>
        <source src="/posts/09-21-26/dance.mp4" type="video/mp4">
        Your browser does not support the video tag.
        </video>      
        </center>                                                                   
    <br>    
</div> 

<br>

I also worked on the ROV's board design and recruited Benji by basically just forcing him to figure out why my BOM file wasn't matching what JLCPCB wanted. He eventually figured out it needed to be in a specific format and was kind enough to fix it for me. Additionally, there were some issues with my "pick n place" file which tells JLCPCB where each component should be placed on the board and its orientation.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-21-26/pcb.webp"/></img>                                                                     
    <br>    
</div> 

<br>

And finally, to wrap the week up, I'll leave you with some awesome videos of the golf cart doing its thing(s)

<br>

 <div style="display:flex">  
    <br>
               <iframe 
    width="360" 
    height="640" 
    src="https://www.youtube.com/embed/Feyx_44e6zw" 
    title="YouTube video player" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
</iframe>                                                       
    <br>    
                   <iframe 
    width="360" 
    height="640" 
    src="https://www.youtube.com/embed/o9TFnc-Cx6Q" 
    title="YouTube video player" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
</iframe>                                                       
    <br>    
                   <iframe 
    width="360" 
    height="640" 
    src="https://www.youtube.com/embed/_aoN1_cjRlo" 
    title="YouTube video player" 
    frameborder="0" 
    mute
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
</iframe>                                                       
    <br>    
</div> 

<br>
