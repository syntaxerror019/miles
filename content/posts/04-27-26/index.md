---
title: 'Robotics & Engineering - Week of 04/27/26'
date: 2026-04-30T20:56:10-0400
tags: ['robotics-blog']
image: 'breadboard.webp'
draft: false
---

---

This week was spent mostly with tweezers and a soldering iron trying to place tiny components onto a tiny circuit board. 

My custom made STM32BOBBY boards finally came back from JLCPCB and so did the components I ordered for it from DigiKey.

I opened things up and the parts looked way smaller than I expected them to be. I could easily fit ten or fifteen of these dudes on my pinky without a problem. 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/04-27-26/image.png"/></img>                                                                           
    <br>    
</div> 

<br>

In my case, I designed the board to handle almost exclusively 0603 size components, and as you can see, are basically nonexistent. With the help of some tweezers, a bright light, and a microscope for the STM32 chip, I was able to lay out all the components onto one PCB. The solder paste made the board look extremely messy, but it did help the components stick to the board a bit better before I put the whole thing in the oven for a final cure.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 80%; height: auto;" src="/posts/04-27-26/hand.webp"/></img>                                                                           
    <br>    
</div> 

<br>

As you can see above, I put way too much solder paste on some of the components. This led to a few electrical problems that were extremely hard to find down the road...

Nonetheless, I baked it in our modified PCB toaster oven and it didn't look half bad at first glance.

Upon further inspection however, you can see that many components had too much paste left over resulting in large solder balls everywhere. Similarly, some components moved about while in the oven which caused them to strike some interesting poses. Take a look at the capacitor near the crystal oscillator chip... It managed to solder itself to the crystal.

The board did end up needing some rework with solder wick and a soldering iron. I ended up reseatting the crystal too, as I thought there was some problem with the soldering underneath it, however I don't think this was actually an issue.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/04-27-26/pins1.webp"/></img>        
                <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/04-27-26/pins2.webp"/></img>                                                                           
    <br>    
</div> 

<br>

After I got it to where I thought it looked pretty good, I have it over to Alachie to take a look at it and try to flash some firmware on it. Immediately I noticed there was a problem. The top and bottom of the pads on the .1" headers were electrically isolated from each other from top to bottom. This made things a bit harder, as I had to do some tricky soldering to get the header pins soldered to both sides of the board. 

Even after figuring this out, we were unable to get any code uploaded to it. The board would not respond no matter how hard we sent encouraging signals to its debugger pins.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/04-27-26/aura.webp"/></img>                                                                               
    <br>    
</div> 

<br>

Hopefully next week, we will have this sorted out and working flawlessly!