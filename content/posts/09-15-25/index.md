---
title: 'Robotics & Engineering - Week of 09/15/25'
date: 2025-09-18T20:19:02-0400
tags: ['robotics-blog','machine-shop','hardware','batteries']
image: 'tools.webp'
draft: false
---

---

This week started off a little bit differently. Rather than diving straight into the perpetual golf cart project, I was in need of a brass bushing for a 911 Distributor rebuild. Existing ones cost over $150, so with a little help from Tim, I was able to make my own free of cost.

By cutting down some brass stock and turning it on the lathe, we created the bushing with tolerances of around 1/1000th of an inch. Plenty precise for what I need it for.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-15-25/cut.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-15-25/brass.webp"/></img>              
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 33%; height: auto;" src="/posts/09-15-25/tools.webp"/></img>                                                                    
    <br>    
</div> 

<br>

After this quick break, I devoted myself to the golf cart again.

The first big thing was the arrival of the LiFePo batteries along with their charger and BMS. All 25 cells arrived, with a storage voltage of 3.18v balanced perfectly. I'm going to really try to make sure all cells stay perfectly balanced this time!

Jonas, Andrew, and Tim helped me unpack the batteries and lay them out.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 35%; height: auto;" src="/posts/09-15-25/new.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-15-25/stack.webp"/></img>                                                                              
    <br>    
</div> 

<br>

Afterwards, we wasted no time and got straight into preparing the batteries for our setup. After some research on these prismatic cells, we concluded that there is no awesome way to connect the cells together. We bought cells without any contacts attached to the top. These cells are more generic and are typically purchased by big companies that weld their own connectors on. 

Unfortunately, we don't have those fancy tools, so we decided to *carefully* drill ~3mm deep into the cell terminals. Then, we simply tapped the holes which will allow us to screw copper bus-bars into the batteries to make a 24s1p battery pack!

Before drilling or tapping, I marked all the batteries to ensure we drill in the same location every time.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-15-25/marked.webp"/></img>                                                                
    <br>    
</div> 

<br>

([More about terminal types](https://lythbattery.com/how-to-choose-the-lithium-ion-battery-terminals/))

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="/posts/09-15-25/drill.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 30%; height: auto;" src="/posts/09-15-25/tap.webp"/></img>   
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 39%; height: auto;" src="/posts/09-15-25/terminal-types.webp"/></img>                                                                              
    <br>    
</div> 

<br>

After two days of tapping, everything was complete. We are now waiting on some copper stock to create bus bars. Seems like a next week task.

In the extra time I had, I did a complete overhaul to the Sunk Robotics website. Currently, as of this post, our domain name ([sunkrobotics.com](https://sunkrobotics.com/)) is being held ransom. 

Until we pay the necessary fees, all hosting, development, and testing will be done from [sunkrobotics.vercel.app](https://sunkrobotics.vercel.app/).


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/09-15-25/old-site.webp"/></img>    
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 48%; height: auto;" src="/posts/09-15-25/new-site.webp"/></img>                                                                              
    <br>    
</div> 

<br>

Source code is all publicly available on my GitHub Account!

And to finish off the week, we got a sample batch of GPUs that we are inheriting from a robotics company.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/09-15-25/gpu.webp"/></img>                                                                             
    <br>    
</div> 

<br>