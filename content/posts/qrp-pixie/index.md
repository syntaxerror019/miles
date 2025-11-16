---
title: 'QRP Pixie Radio'
date: 2025-11-15T21:41:29-0500
tags: ['ham', 'radio', 'hardware']
image: 'finished-no-case.webp'
draft: false
---

---

When I saw this [Pixie QRP radio](https://a.co/d/5xA1YiJ) for 10 bucks online, I thought it would be a fun little project to try out to get into the world of HF. I wasn't expecting much from it, considering its price, but given that it would be some more soldering practice, I gave it a shot.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/qrp-pixie/kit.webp"/></img>                                                                    
    <br>    
</div> 

<br>

There were no documents included in the kit, so I had to do some research and reverse engineering to assemble it properly.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/qrp-pixie/image.png"/></img>     
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/qrp-pixie/schematic.png"/></img>                                                                    
    <br>    
</div> 

<br>

Once I had those two documents, I began the assembly process. First, I started with the resistors, which I used a multimeter on the ohm setting to verify the resistance of each component. I then matched each one to the paper and the corresponding number on the PCB silkscreen (R1, R2, ...) and pushed them through and soldered their legs. This part definitely wasn't my cleanest soldering, but it worked just fine.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/qrp-pixie/resistors.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/qrp-pixie/resistors-bottom.webp"/></img>                                                                     
    <br>    
</div> 

<br>

Next, I moved on to the capacitors and diodes. Just like the resistors, I matched them with the document and pushed them through the appropriate holes on the board. I also figured that by leaving the legs straight instead of bending them over before soldering makes everything much cleaner looking.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/capacitor-diode.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/ceramic.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/capacitor-diode-bottom.webp"/></img>                                                                     
    <br>    
</div> 

<br>

Then came the crystals- my kit came with two different options: 7.023MHz and 7.050MHz

These determine the TX frequency of the radio. The downside is that these make the device hard to tune and impossible to change your transmit frequency... Unless you follow [VK3YE's guide on fixing this problem](https://www.youtube.com/watch?v=roAc4c1a-a0)

Now, if you are in the U.S. you probably want to solder in the 7.050MHz crystal, as that is a valid option for Technician and General class operators to perform CW transmissions. The other crystal is mainly used in European countries, and requires a higher privilege license class.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/qrp-pixie/crystal-options.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/qrp-pixie/crystal-topview.webp"/></img>                                                                     
    <br>    
</div> 

<br>

I chose the 7.050 MHz crystal, but installed it in a way that allows it to be easily hot-swapped if needed.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/qrp-pixie/crystal-installed.webp"/></img>                                                                   
    <br>    
</div> 

<br>

Another slightly confusing step was installing the inductors. I was having some difficulty finding and identifying the inductors by color codes or with measurement and finding the appropriate place to install them on the board. In the picture below, I labeled them to make installing them easier.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/qrp-pixie/inductors-labeled.webp"/></img>                                                                   
    <br>    
</div> 

<br>

And to finish things up, I put all the other components on, like the audio jacks, power port, potentiometer, and buzzer. These were pretty self explanatory to install and took only a few minutes.

I also put on the 51 ohm, 1/2 watt dummy load resistor so I could test its TX functionality without accidentally transmitting across the globe.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/installed-dummy.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/dummy-bottom.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/qrp-pixie/others-installed.webp"/></img>                                                                     
    <br>    
</div> 

<br>

The last step was to add the acrylic case to protect everything. I personally think a metal shielded box would be a better fit, as this kit is definitely sensitive to interference from other electronics, power noise, AM broadcasts and other stuff. Nonetheless, I assembled the acrylic because it looks cool.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/qrp-pixie/finished-no-case.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 49%; height: auto;" src="/posts/qrp-pixie/finished-case.webp"/></img>                                                                     
    <br>    
</div> 

<br>