---
title: 'Robotics & Engineering - Week of 06/02/25'
date: 2025-06-05T17:49:05-0400
tags: ['robotics-blog']
image: 'update.webp'
draft: false
---

---

I had less shop-time this week than normal. On Tuesday, my entire Spanish class had to take the AAPL proficiency test, which ended up eating all of my fifth period and over half of my sixth period that would normally have been spent in shop working. On Monday, we were scheduled to take the exam during sixth period, after our health class, but it ultimately ended up getting canceled half-way through. Both these days I only had enough time to do my cleaning chore and put things away. 

Wednesday however, I was able to resolve my computer issues that I have been expereicning for a few weeks now, including the part where it doesn't work. After some troubleshooting I got Windows 11 running smoothly (for Fusion 360's lack of support on Windows 10) and dual-booted with Ubuntu. Afterwards, I had a few networking issues which I resolved by re-doing DHCP configuration manually, but everything worked out fine.

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/06-02-25/update.webp"/></img>                                                                     
    <br>    
</div> 

In terms of golf-cart progress, Mr. Christy and I sorted out which balancer to use and we ended up buying three, one for every pair of batteries onboard. They arrived on Thursday, and Jonas and I got to work connecting them up. We can't do a full test yet, because we still need the new battery. Jonas will be picking that up from the local auto-parts store this weekend. In order to connect the balancers, we need to ensure all 5 (soon to be 6) batteries are fully charged and within .2 volts of each other. To ensure all are charged evenly, I will be using a PSU at CC to charge them individually, rather than in series. This ensures a full charge on all. 

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 10%; height: 20%;" src="/posts/06-02-25/balance.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: 20%;" src="/posts/06-02-25/leadacid.webp"/></img>                                                                  
    <br>    
</div> 

Also, I finished wiring everything up for my speaker. As a recap, the original issue with it was that it had been left sitting for about 7 years without being charged. When I only recently started charging it, I noticed the battery life would last about 5 minutes off a full charge. I took it all apart at school, and the battery was all swollen up (pictures in last week's post). I then found a similarly-sized battery to replace it with. It is over 3 times the capacity, so it really shows how technology has changed over time. After soldering it to the PCB inside, I noticed it wouldn't function properly. It would turn on for a few seconds and then immediatly turn itself off. After a little more investigation I discovered a third wire used to report temperature signals from the battery to the main control board. After soldering that extra wire, it worked first try!

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/06-02-25/jambox.webp"/></img>                                                                     
    <br>    
</div> 