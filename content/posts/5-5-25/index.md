---
    title: 'Robotics & Engineering - Week of 5/5/25'
    date: 2025-05-05T13:03:04-04:00
    tags: ['robotics-blog']
    image: 'overall.webp'
    draft: false
---

---

This week, I continued working on the Sumo Bot project. I re-printed the frame and milled another PCB, then soldered all the components together. We will be making two robots for the competition. Likely, the bot will be ready to test and debug early next week.

<div style="display:   flex">  
<br>
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/wheel.png"/></img>                                                                      
 <br>    
 </div>  

Although in the process of printing, I noticed that one of the Fusion 3s wasn't working. <a href="https://willvictor82.wordpress.com/">Will</a> graciously fixed the jammed extruder on the printer, but it was still having unexpected difficulty when homing the Y axis. The stepper motors would lock up and it would miss steps causing it to become stuck and off-axis.

<div style="display:   flex">                                                                                                                          
<br>
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/will.webp"/></img>   
 <br>    
 </div>  

 I originally thought it was tension in the gantry system, which I beleive was a bit too taught, making the slippage of the steppers more obvious. I then realized that the filament guide was re-installed incorrectly, making it imposisble for the extruder to reach all 4 corners of printer's bed area. In order to fix this, I needed to take the extruder apart again.

 <div style="display:   flex">  
<br>
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/extruder1.webp"/></img>  
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/extruder.webp"/></img>                                                                      
 <br>    
 </div>  

 In order to fix tensioning issues, I needed to take apart the extruder pulley system that would allow me to access the gantry system. This involved loosening an allen screw on the pulley one of the X/Y stepper motors, and allowed me to pull the whole thing off the shaft of the stepper motor. Unfortunately, in the process, I slightly overlapped the gantry cable/string which now tangles after a few revolutions. Although I stayed until 6pm on Wednesday, I didn't quite finish fixing it.

  <div style="display:   flex">  
<br>
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/stepper.webp"/></img>  
<img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 45%; height: auto; " src="/posts/5-5-25/overall.webp"/></img>                                                                      
 <br>    
 </div> 

I will continue to work on this next week and hopefully will finish it quickly! Then, I can get back on track.