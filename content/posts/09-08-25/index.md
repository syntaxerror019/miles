---
title: 'Robotics & Engineering - Week of 09/08/25'
date: 2025-09-11T21:47:57-0400
tags: ['robotics-blog']
image: 'battery.webp'
draft: false
---

---

In shop this week, I spent a good amount of time helping my friends with their own projects. I spent time helping Tim get his blog website completely overhauled. Ultimately Andrew and I convinced him to use Hugo which is far superior in every way to Wordpress. 

There was some trouble figuring out how to deploy his site to vercel (we never got it fully deployed) so for this week at least, he will continue to put his blog posts on his old website at <a href="https://timmyhunt.greenlifestylelabs.com">https://timmyhunt.greenlifestylelabs.com</a>. I'll help him finish it all up next week.

On top of this, I was helping Andrew with a funny digital project that counts the number of ~~days~~ hours without an accident. Ultimately, we will cut out the sign and make it fit the seven-segment display. It will use an RTC to keep time and will include a large button to reset the counter to zero when a fatal mistake occurs in the shop. My guess is that it will never even reach the second digit...

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-08-25/ands.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 35%; height: auto;" src="/posts/09-08-25/sign.webp"/></img>                                                                    
    <br>    
</div> 

<br>

In terms of the Golf Cart, we pulled the trigger on some new LiFePO4 battery cells. Instead of buying ready-to-use 12v batteries for ~$300 USD, we decided to purchase the individual 3.2v cells for a fraction of the price, and make our own 72v battery array. Not only will this be cheaper, but it will be significantly more modular. This keeps repair cost minimal too. If one cell were to go bad, we would not have to replace the entire battery which could cost over 300 dollars each. Those commercial batteries typically contain 4 of the cells within it to get around 12v.

Along with this purchase, we bought a new battery charger rated for 10A which is decent. The estimated charge time from 0% to 100% should be around 10 hours which is pretty reasonable considering that the original lead acid charger for the golf cart would take an estimated 8 days to fully charge! 

To protect the cells and ensure the remain in balance (lack of this is what killed the expensive gel lead acid batteries in the first place) we also threw in a super-duper beefy BMS module rated for 24s. This is ridiculous to me. I'm much more used to the 4s battery chargers and BMS systems for drones and hobby-grade RC cars. 24s is rather insane.

The other benefit to these batteries, aside from being over 6x cheaper, is that they utilize much newer, denser, and more efficient technology. This means we will have an additional 30% battery capacity in the golf cart, and the electric motor will be able to receive more juice effectively giving it better response and torque. These batteries are rated for 200A continuous discharge! If the golf cart is drawing 100A constantly while driving, we should theoretically be able to drive for about one hour. Realistically this will be less, as the batteries are not to be run completely flat. "Dead" for these cells is 3.2v per cell rather than 0v. Ensuring that the batteries never get below this level will prolong there life, and its the job of the BMS to handle this.

This is what we hope to make:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 80%; height: auto;" src="/posts/09-08-25/example.webp"/></img>                                                                     
    <br>    
</div> 

<br>

And lastly, the shop was trying to get rid of filament from 3D printers we no longer had. Most of it had a diameter of 3mm which is more than our standard 1.75mm printers can handle.

Instead of throwing it out, I decided to create a shop ebay page to make some money. Most, if not all of the filament shown is brand new, still in package with the silica gel. It has been stored in a cool and dry environment its entire life. If you would like to purchase one or more of these specialty filaments for your own printers, we have over 50% off on these spools. Feel free to contact me for more information, or if you are local, check Facebook Marketplace to see for yourself!

As of now, this is what is listed and available:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/1.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/2.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/3.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/4.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/5.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/6.webp"/></img> 
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 14%; height: auto;" src="/posts/09-08-25/7.webp"/></img>  
    <br>    
</div> 

<br>