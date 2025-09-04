---
title: 'Robotics & Engineering - Week of 09/01/25'
date: 2025-09-04T17:55:22-0400
tags: ['robotics-blog']
image: 'gcout.webp'
draft: false
---

---

First blog of the new school year!

Being the first few days back in the shop, there were a few chores and tasks that had to be completed before anything else. Over the summer, <a href="https://mvthsengineering.com/">Mr. Christy</a> purchased a whole new assortment of parts and chips that needed to be sorted. Once this was finished, I jumped right back into things- right where we left off.

The golf cart has a new charger that I was able to install this week, reducing charging time drastically. For comparison, with the original charger, it would take over 8 days to charge entirely. With the new one, it can be done over-night in about 8 hours. The only disappointing thing is several of the batteries are severely sulfated due to under-charging from past years. If we want to use the cart for any real testing or use, we will either need to replace all six lead acid batteries (very expensive) or we would need to upgrade to LiFePO4 batteries (expensive but better). Lithium Iron Phosphate batteries (LiFePO4) batteries are similar to Lithium Ion or Lithium Polymer (Li-Ion) (LiPo) however they are significantly less dangerous and can also have higher C (discharge) ratings for big loads like the Golf Cart electric motor.

Until then, I'm working with what we have.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/09-01-25/anderson.webp"/></img>                                                             
    <br>    
</div> 

<br>

The next step to making the golf cart autonomous is to get the whole power system set up. Currently, the electronics run at 72V. The cart does in fact have 12v systems, like the wipers, lights, etc. The only problem (that I am aware of) is that the power regulator that drops 72v to 12v is broken currently. Jonas and I worked at getting the 12v system ready by extracting and testing a different buck module from one of the other carts.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="/posts/09-01-25/jns.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="/posts/09-01-25/gcind.webp"/></img>      
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="/posts/09-01-25/module.webp"/></img>                                                                  
    <br>    
</div> 

<br>

Once we get the 12v system working, it will be a lot more manageable and usable for the sensors like the LiDAR and camera systems we have plans on using. It will also allow us to install more car-centric parts and additions, as they will be directly 12v compatible with the golf cart.

