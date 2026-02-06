---
title: 'Robotics & Engineering - Week of 02/02/26'
date: 2026-02-06T07:21:13-0500
tags: ['robotics-blog']
image: 'burn.jpg'
draft: false
---

---

This week felt very similar to the last few. One step forward, two steps back. 

Although we received the new and improved [https://www.amazon.com/dp/B0DL349YSV/ref=twister_B0GFD4MFG5?_encoding=UTF8&th=1](Daly Smart BMS) rated for 300A and automatic active cell balancing, we still managed to mess things up. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/02-02-26/bms.png"/></img>                                                                          
    <br>    
</div> 

<br>

To begin the week, Jonas and I reinstalled the new battery (replacing the one that was damaged last week) which required more physical labor than expected. Originally, we thought we could push the new battery in, but the minor swelling from the other cells made it extremely difficult to fit them. 

We then got a bit more proactive and tried standing on them, and ultimately settled on hammering them from a piece of wood.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/02-02-26/push1.jpg"/></img>     
                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/02-02-26/push2.jpg"/></img>                                                                          
    <br>    
</div> 

<br>

Then, I connected things up to the BMS, including all 24 balance leads to each and every cell. This took 3 days to fully complete.

<br>

 <div style="display:flex">  
    <br>
            <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/02-02-26/balance.jpg"/></img>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/02-02-26/battery.jpg"/></img>     
                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/02-02-26/installed.jpg"/></img>                                                                          
    <br>    
</div> 

<br>

On Wednesday, we were about to check to see if everything was working. But then, something terrible happened...

An unexpected short that somehow was made from both +86v and -86v from both terminals of the battery was made via the conductive frame of the golf cart. Upon powering up the BMS, the MOS opened causing thousands of amps to be dumped through it. The BMS survived, but one of the cells lit up in a firey ball of flames and sparks that nearly burned both Jonas and I. 

This severely damaged one of the batteries visibly, and possibly the other 23 but I really hope not. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/02-02-26/burn.jpg"/></img>                                                                             
    <br>    
</div> 

<br>

I had ordered two more of these cells a few weeks prior in case something like this were to happen, so next week, we will hopefully be able to drill, tap, and install the new battery in the golf cart and fix any short circuits!