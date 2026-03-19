---
title: 'Robotics & Engineering - Week of 03/16/26'
date: 2026-03-18T18:38:51-0400
tags: ['robotics-blog']
image: 'yooo.webp'
draft: false
---

---

This week was extremely short for me. I was only in shop for two days.

Monday I was welcomed with some errors on my PC complaining about BitLocker which had apparently encrypted my entire hard drive and refused to let me use it without some magic key.

I spent a solid period attempting to bypass this restriction with some advice from Andrew, but I realized I could obtain the magic key it wanted from my Microsoft account. After logging in, I found where it had created a special token to be used that could decrypt my hard drive.

I copied that and it unlocked everything just fine. Needless to say, I completely uninstalled BitLocker after that...

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-16-26/error.webp"/></img>        
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-16-26/uhoh.webp"/></img>                                                                          
    <br>    
</div> 

<br>

After that fiasco, it was time for gym, so I didn't get a whole lot more done until seventh period.

With my remaining time, I hooked up one of the old battery cells from the golf cart to the power supply to charge it fully. This way, I can discharge it in a controlled manner in order to measure the internal resistance of it, capacity of it, and a general reading on how ruined it is. I only had it on the charger for some 45 minutes before school ended, and I disconnected it, planning to reconnect it on Tuesday. Turns out I was absent Tuesday.
<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/03-16-26/charge.webp"/></img>                                                                        
    <br>    
</div> 

<br>

Jumping to Wednesday, I wanted to confirm that we would need to replace the two cells that we checked last week that gave bum readings under load. It isn't easy to take the whole electrical system apart on the golf cart after all. I charged the battery fully using the intended series charger (for the first time in months) and it actually handled it just fine. Our most recent replacement cell (cell 16) was still about 1/10th of a volt lower than the rest, which is fine. I will leave everything set up over the weekend so the BMS automatically balances things out naturally.

After having it charge fully (more or less), I realized the only way to test it out was to give it another test drive.

I called Jonas over and we did some "experimenting" which included "load testing" where we just drove fast and measured cell voltage and IR.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/03-16-26/yooo.webp"/></img>                                                                        
    <br>    
</div> 

<br>

Definetely my favorite part of the week! Until Jonas got behind the wheel for a fraction of a second and somehow made the whole BMS shut off. We then had to push it back to shop... Turns out one of the cells just dropped a little too far and the BMS went into SOS mode. Putting it on the charger brought things back to life however, so no harm done. 

This does confirm my theory that there are still a few lemon cells in the pack.

While I was waiting for the cart to charge again, I decided to work on the black-box UI for the BMS. I decided to transition away from having a laptop set up all the time on the golf cart, and put in a Raspberry Pi 4, freshly imaged with Raspbian OS.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-16-26/rpi.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto;" src="/posts/03-16-26/ui.webp"/></img>                                                                        
    <br>    
</div> 

<br>

The Pi's job is to keep a persistent "black box" style log of everything BMS related. This will make going back to pinpoint future BMS or battrey related faults much easier and more efficient!

The UI now looks pretty awesome, and the RPi hosts its own WiFi AP. This means it can be tapped into with any device from anywhere nearby (no internet required) and can be monitored! A good web ui really brings things together.

And before I left shop on Wednesday, I had Mr. Christy order 6 more of the prismatic cells... JIC