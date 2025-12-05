---
title: 'Robotics & Engineering - Week of 12/01/25'
date: 2025-12-04T15:26:22-0500
tags: ['robotics-blog']
image: 'train_batch0.jpg'
draft: false
---

---

This week during my time in shop, I began a new task on the Ford Think... AI.

Jonas has been focused on the LiDAR aspect of the autonomous navigation system, and I have been focused on the camera system

The idea of doing a combination of both LiDAR and camera's as inputs to our final AI system we think has significant advantages over simply using cameras as the inputs, like Tesla does on their vehicles.

Not only are computer vision systems that can do real-time object detection and range finding extremeley expensive and complex, but they are also difficult to interface and utilize in a closed-loop system (e.g. our autonomous car)

With combined sensor fusion, we are able to create a more effective, safe, and likely easier way for the vehicle to autonomously navigate and avoid threats in real-time.

To begin with a super simple base, I decided to train my own YOLO (You Only Look Once) model (YOLO model "weights" really), a standardized computer vision program. The idea is to use the camera feeds to identify things like people, crosswalks, bicycles, and signs (stop, slow, speed limit, etc.) This can all be accomplished with a well trained and tuned YOLO model.

On Monday, I got the main dashboard fully installed and wired up. It almost works great!

<br>

 <div style="display:flex">  
    <br>
        <video width="44%" controls>
            <source src="/posts/12-01-25/vid.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 55%; height: auto;" src="/posts/12-01-25/dash.webp"/></img>    
    <br>    
</div> 

<br>

On Tuesday, I did some fine tuning (voltage reference was completely wrong on the dashboard) and ultimately got the voltage readings to be within +/- 0.05 volts, which is fine for me. The only issue is that the reading doesn't seem to change even under load, which contradicts what the multimeter says.

Originally I thought this was because of the fact that it averages several readings, but after doing some investigating, the code takes samples over the course of a few hundred milliseconds, which should have no significant effect on the reading. Nonetheless, I removed it to no avail. This is still an ongoing problem I will have to look into down the road. For now, we are stuck with the multimeter.

On Wednesday, Jonas and I decided to begin working on the AI. But it is hard to train when you have nothing to train on! We needed real photos of the environment the golf cart would be autonomously navigating. So we set out with a USB webcam duct taped to the roof, plugged into a laptop and drove around and ultimately collected over 1000 photos of various positions and scenarios the golf cart would likely be put into.

Here's just a sneak peek at a few of the samples we took.

This sample contains photos of people, signs, and vehicles.

<br>

<div style="display: flex; flex-wrap: wrap; justify-content: center;">
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/1.jpg"/></div>
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/2.jpg"/></div>
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/3.jpg"/></div>
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/5.jpg"/></div>
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/6.jpg"/></div>
    <div style="width: 30%; margin: 1%;"><img onclick="window.location.href=this.src;" style="width: 100%; height: auto;" src="/posts/12-01-25/7.jpg"/></div>
</div>

<br>

The photos are of terrible quality. This is by no means our final setup nor our final trained model for this. I really just wanted to make a proof of concept and get an idea to see how precise we can be with our messy YOLO setup. It will give us a bar to see what we need to improve upon.

In order to train the model, we needed to annotate the photos manually by dragging boxes over the regions containing the thing we want to identify.

We basically have to do the work for it, and then it learns by example, and gets really good at identifying just those things.

The parameters fed into the model to train are as follows, and are represented in the following image: 

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/12-01-25/image.png"/></img>    
    <br>    
</div> 

<br>

So, I spent the rest of my Wednesday annotating a few hundred frames, and on Thursday, Jonas and I both worked on annotation for our time in shop. 

Thursday, I also trained our first model, but this is where issues began to show up. 

When Jonas and I were both annotating, we had different indexes set for our identifications. For example, "car" on my annotations were all index 0, while for Jonas, they were index 1. This throws the model off, as it associates cars with both index 1 and 0, which realistically means it is training on index 0 (cars) and whatever index 1 is (likely stop sign, people, etc). This leads to a mistrained model that won't perform well at all.

The results of the brief training can be seen in visualizations below:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: auto;" src="/posts/12-01-25/train_batch0.jpg"/></img>  
    <br> 
</div> 


<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 90%; height: auto;" src="/posts/12-01-25/labels.jpg"/></img>  
    <br> 
</div> 


<br>

Next week will focus on testing this model, and (more realistically) have a lot of retraining going on!