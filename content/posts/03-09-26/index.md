---
title: 'Robotics & Engineering - Week of 03/09/26'
date: 2026-03-12T19:59:28-0400
tags: ['robotics-blog']
image: 'hammering.webp'
draft: false
---

---

On Monday, I realized that I was over half-way charging all the batteries. As I was charging, I realized that the current was tapering off faster on these final cells (meaning they were charging faster) which either meant they were already almost full from the start, or they were damaged. 

I was really hoping they were simply almost full, which would have made this week a nice walk in the park, but turns out I couldn't have been further from wrong.

On Tuesday, I finished charging all the cells by the end of seventh period. This wasn't easy, as I had five lab bench power supplies all wired up at the same time. Although the bench power supplies worked out fine in the end, I did discover that their voltage dial/ readout isn't accurate. The display is as much as 200mv off on the lower end which is pretty significant. 

Additionally, I realized that these models of power supplies use relays to switch an internal transformer. Although this is usually beneficial as older power supplies were able to be more efficient and reliable at various voltages, it has a major drawback in my use case. I discovered that one of the switches is right at around 3.6 volts... right where I was charging the batteries. Occasionally, the power supply would switch over to a "better suited" winding ratio on the internal transformer automatically, and the voltage would easily rise 300mv+. This proved to be tricky to ensure I didn't end up overcharging any of the cells. 

Nonetheless, all cells were charged and balanced at last. At this point, I didn't have a whole lot of time left in the school-day to try them out or wire things up for the next steps. Instead, I connected the BMS and left them overnight in hopes that they would finish balancing and reach a final equilibrium. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/charging.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/compare.webp"/></img>                                                                          
    <br>    
</div> 

<br>

On Wednesday, the Biotech Engineering shop in our school had an urgent issue with their fish feeder, which was designed years ago by previous robotics students. It is basically an automated fish food dispenser that spits food into the fish's pool at a certain time every day. Apparently, the display had been showing, "ERROR" for the past few days and wasn't functioning. Jonas and I headed up there to see if we could beat some sense back into it. After tearing the whole thing apart, we discovered that one of the rotary encoder wires had come out of the JST connector. A simple re-crimp did the trick. We tested it before leaving, and it worked flawlessly!

Once back in shop, I decided it would be appropriate to get the golf cart all back together to do its first real road test in months. After the tedious process of reassembling all the bits and pieces (including battery terinals, balance leads, screws, covers, and front seats) we powered it on. 

It was at this point that I realized how beneficial a logger of some sort would be. I decided to devote the next period and a half of shop to making a little black-box logger that would run on a laptop and read the BMS information live via UART and record it all. I may have gone a little above, as I decided to go with a full-fledged, bootstrap-based frontend to make monitoring and graphing all stats very easy.

After this, we got back into the golf cart to drive. It made it out of the driveway, and we had very high hopes, but I quickly realized that one of cell's voltages was sagging extremely far compared to the rest. Under the lightest loads, all other cells held around 3.4v but one (cell 16) dropped down to about 2.5v instantly. I knew this one was compromised. At this point, I had made it all the way into the parking lot. I decided to try to turn around and slowly limp the vehicle back to the shop, but it was slightly uphill, and once the cell dropped below 2.5v under load, the BMS shut everything down. We had to push it back to the shop.

Although this isn't a good thing, it made me happy to know exactly what the problem was, rather than just endlessly chasing possible issues. 

On Thursday, I employed Jonas to yank the bad battery out (which is also no easy feat, as they are wedged in their under something like 300 pounds of force.) while I soldered one of his projects he was working on. Once he did that, I drilled and tapped our last spare battery as a replacement to the old one.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/speaker.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/install.webp"/></img>                                                                          
    <br>    
</div> 

<br>

Then came the equally tricky task of fitting everything back together. The batteries are all separated by a thin layer of plastic we put in to help insulate the system in hopes of mitigating potential friction-shorts between cells internally. The trick to getting the batteries in is to use more force. Maybe not the best way, but there aren't many other options.

Once installed, I put the bus bars all back down and tightened things down for the lowest resistance contacts. Lets hope that on Friday, we will be able to do another test drive! Wish us luck, and stay tuned for the next post!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/hammering.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-09-26/wire.webp"/></img>                                                                          
    <br>    
</div> 

<br>