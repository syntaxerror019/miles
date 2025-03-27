---
title: 'Robotics & Engineering - Week of 03/17/25'
date: 2025-03-20T13:57:43-0400
tags: ['robotics-blog', 'hardware']
image: 'sensors.webp'
draft: false
---

---

The first 2 days of shop this week were spent replacing XT30 connectors on the ROV's power distribution board. There have been connection issues in the past, and I really didn't want this to factor into existing reliability issues.

On Wednesday, Jonas Wirz and I got the ROV into the pool, however, we had some free time before then and were very productive with it.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-17-25/duh.gif">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-17-25/urban.webp">
    </img>
</div>
<sub>Short-lived gated off area exploration (right).</sub>

<br>

Timothy Hunt suggested we insert a temperature and humidity sensor into the ROV for testing purposes. We put it in the tube while Jonas practiced the competition tasks. Due to a faulty seal, some water got into the tube. Our results with the sensor were a bit skewed.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; width: 70%;" 
        src="/posts/03-17-25/temp.webp">
    </img>
</div>

<br>

The ROV's power issue has been solved, and my software based solution seems to be working. A small bit of tweaking will make it more robust. Another issue presented itself as well. The I2C communication for the IMU at times will cut out. Due to a lack of proper handling, the code exits and the ROV shuts down. Some more investigation will help this.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; width: 70%;" 
        src="/posts/03-17-25/image.webp">
    </img>
</div>
<sub>Affected lines due to lack of IMU communication.</sub>
<br>

Most excitingly, <a href="https://www.vecnarobotics.com/">VECNA Robotics</a> donated nearly $200,000 worth of unused sensors to our shop. The shipment mainly consisted of LiDAR and camera systeming, but it had various other misc. parts and tools. 

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; width: 70%;" 
        src="/posts/03-17-25/sensors.webp">
    </img>
</div>
<sub>Thank you from all of us at MVTHS!</sub>
<br>

Ultimately, we plan on putting the LiDAR sensors on the autonomous golf-cart project:

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; width: 70%;" 
        src="/posts/03-17-25/offroad.gif">
    </img>
</div>
<sub>Can AI do <i>that?</i></sub>
<br>