---
title: 'Robotics & Engineering - Week of 03/02/26'
date: 2026-03-05T23:34:31-0500
tags: ['robotics-blog']
image: ''
draft: false
---

---

This week I decided to get some professional advice for the Golf Cart. Luckily, Mr. Christy has a friend and master of all electronics engineering and alumn from MIT.

He graciously came over to the shop on Wednesday to look at the battery system on the Golf Cart and helped me get a better grasp on what could be happening with the cells and lack balancing. 

I learned that by charging each cell individually up to their 100% SOC (3.65v) separately, this would make the job for the BMS much easier. Additionally, this would make identifying potential lemon cells (cells with high IR or smaller capacity than the rest). 

We have no LFP chargers in our shop however, so I decided to use our lab bench PSUs with a CC/CV set to the appropriate settings to push charge into the cells. 

Initially, I started with the stock banana-to-alligator clip wires that comes with the power supplies, but I quickly realized that they couldn't supply the power I needed to charge the batteries.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thin-psu.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thin-battery.webp">
    </img>
</div>
<sub>Voltage drop between the PSU and the battery was significant.</sub>

<br>

This high voltage drop means that the resistance of the wires was the limiting factor of how fast the batteries could charge. I calculated about 0.6W being wasted as heat through the wires.

To combat this, I decided to make my own super thick alligator clip charging cables.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thick-psu.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thick-battery.webp">
    </img>
</div>
<sub>Voltage drop between the PSU and the battery was much better now!</sub>

<br>

With the before and after, you could clearly see the difference in current consumption, indicating the batteries were in fact charging faster. I calculated the wire resistance to be only a few milliohms which has a way smaller power loss across it.

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thin.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-thick.webp">
    </img>
</div>
<sub>Left shows the lesser current charge, right shows the new cables charging.</sub>

<br>

The picture below shows the old thin wires that couldn't handle the load, and the second photo. shows 3 batteries charging all at once. I will hopefully get all the cells charged by next week!!

<br>

<div style="display: flex;">
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/thin-wires.webp">
    </img>
    <br>
    <img 
        onclick="window.location.href=this.src;" 
        style="display: block; margin-left: auto; margin-right: auto; width: 45%;" 
        src="/posts/03-02-26/charge-overall.webp">
    </img>
</div>

<br>