---
title: 'Robotics & Engineering - Week of 10/13/25'
date: 2025-10-16T20:02:24-0400
tags: ['robotics-blog']
image: 'installed.webp'
draft: false
---

---

The golf cart works! 

This week, on Wednesday, I was able to successfully get the battery wired up and secured and I was able to give it a quick test drive!!

Overall, the golf cart feels a lot more punchy compared to the previous lead acid batteries. This is due to a natural phenomenon known as voltage sag, which is particularly dramatic in lead acid batteries. A simplified view is presented in the graph below. 

An example of when this sag occurs, is when starting a regular car. The electric starter motor can draw upwards of 150 amps when turning over the engine and because of this, the battery voltage drops from around 12.7v to as low as 5v temporarily. The same effect was made present under the ~70 amp (continuous) load the golf cart's electric motor would put on the batteries, which is why the voltage dropped so much during operation.


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/10-13-25/image.webp"/></img>     
    <br>    
</div> 

<br>

On Tuesday, metal fab gave us back the frame for the golf cart, which was perfectly cut to the new length we needed. Previously, the dimensions were about half an inch too large to fit in the golf cart, but this cut eliminates that problem! Hopefully the welding joint will not be a weak-point in the battery. It shouldn't matter significantly because there is little strain put on the frame other than downward force and lateral motion when taking corners.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/welded_frame.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/weld.webp"/></img>     
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/re-assemble.webp"/></img>  
    <br>    
</div> 

<br>

The Graphics Design shop was also experiencing some trouble with their large printer. They called on us to take a look at it and see if there was any way to make it work without spending the $10,000 for an entire new printer. With Jonas and Andrew also helping, we got the printer to connect with the laptop via ethernet which was a big step overall, however the original issue persisted. After about 4 lines of printing, the printer would stop and the computer status would change to "Not Connected." We will continue to look into the problem next week hopefully.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/10-13-25/printer.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 39%; height: auto;" src="/posts/10-13-25/pcb.webp"/></img>     
    <br>    
</div> 

<br>

On Wednesday, we got the entire battery transported from its assembly location to the golf cart with the help of a cart. Although the battery weighs significantly less than 6 lead acid car batteries, it sure isn't light! Each cell is about 3 lbs, and we have 24 of them. Excluding the steel frame, the batteries weigh over 72 lbs.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/working.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/electrocution.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/cart.webp"/></img>     
    <br>    
</div> 

<br>

On Thursday, I installed the charger on the golf cart with the help of Jonas. Before I fully charge it up and call it a done-deal, I am waiting for the <a href="https://xiaoxiangbms.com/product/uart-tools-v1-6-smart-bms-communication-module-connect-to-pc-setting-and-monitoring-battery/">XiaoXiang BMS UART adapter</a> to arrive in the mail. Once I have this, I will be able to program the BMS with cell regulations and cutoffs, along with voltage/temperature alerts and emergency disconnects to prevent damage to the batteries, golf cart, or people operating it. 

Once the module arrives, I will program the BMS with the appropriate upper and lower bounds (voltage and temperature wise) to ensure the BMS keeps everything in check.

Moreover, I also did a little bit of cable management to help clean things up and prevent potential issues down the road. Knowing that the entire system is not going to be in the most gentle environment, I tried to make it pretty rugged.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/installed.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/before.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/10-13-25/after.webp"/></img>     
    <br>    
</div> 

<br>

Finally, (big reveal) everything worked out and I gave it a successful test drive!!! 🎉🎉🎉

<br>
<div style="display:flex; justify-content: center;">  
    <video width="50%" controls muted style="margin: 0 auto;">
        <source src="/posts/10-13-25/demo.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div>
<br>

Now, to make it autonomous.