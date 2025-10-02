---
title: 'Robotics & Engineering - Week of 09/29/25'
date: 2025-10-01T22:33:58-0400
tags: ['robotics-blog']
image: 'working.webp'
draft: false
---

---

This week was convoluted, considering that we had Thursday off from school. During school, I worked on the battery system, specifically setting up and configuring the BMS system for it to safely charge and balance all cells.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/09-29-25/bms.webp"/></img>                                                                     
    <br>    
</div> 

<br>

In order to interface with the BMS (can be found on [XiaoXingBMS here](https://xiaoxiangbms.com/product/jiabaida-8-24s-jbd-sp24s004-smart-bms-support-uart485can-communication-40a-200a-24v-76v-lifepo4-lfp-external-bluetooth-xiaoxiang-app-available/)) you apparently need a [special UART tool](https://xiaoxiangbms.com/product/uart-tools-v1-6-smart-bms-communication-module-connect-to-pc-setting-and-monitoring-battery/) that they sell.

To me, it looks like a regular USB-UART Serial cable, but after using the [Adafruit USB to TTL Serial cable](https://www.adafruit.com/product/954) I found that I couldn't establish communication with it to extract any valuable information from it.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/09-29-25/uart.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 57%; height: auto;" src="/posts/09-29-25/image.png"/></img>                                                                     
    <br>    
</div> 

<br>

So, we are now waiting for the special adapter box to arrive in the mail- Likely it will take a few weeks, as it is coming directly from China with standard shipping. In the mean-time, I investigated the protocol the UART uses and the data I can potentially extract from it.

The good news is that it is very highly configurable and it provides plenty of stats in real time! There is an official JBD software that I downloaded to mess around with while waiting, and although some pages are in Chinese, I have faith that this will be very useful down the road...

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 75%; height: auto;" src="/posts/09-29-25/image-1.png"/></img>                                                                     
    <br>    
</div> 

<br>

On another note, I worked a ton on my Grandma's spring monitor project. I will be soon publishing a series of posts describing the project of OpenSpring in its entirety. The whole project stemmed when her spring ran dry over the drought in Northern Vermont. 

The idea is that there is a pressure transducer in her spring that communicates back to her wirelessly so she will know how much water is present at all times.

This is the device that will sit on the spring year round and record data from the pressure transducer:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/09-29-25/bottom.png"/></img>                                                                     
    <br>    
</div> 

<br>

And this week, I spent most time working on the top-side (display and parser). The case I ended up re-printing.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-29-25/fail.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-29-25/ok.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-29-25/working.webp"/></img>                                                                     
    <br>    
</div> 

<br>