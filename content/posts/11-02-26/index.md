---
title: 'Robotics & Engineering - Week of 11/02/26'
date: 2026-11-05T23:32:50-0500
tags: ['robotics-blog']
image: 'map2.webp'
draft: false
---

---

This week in shop I was very excited to finally make some major progress with the LiDAR localization system for the golf cart.

Previously, I was using the ouster-sdk for python which included the ouster-cli command interface. This all worked fine, but I really didn't want to make a whole software stack for localization and vehicular autonomy as I figured that would be a big time sink. Rather than re-inventing the wheel, I opted to learn ROS2 which I figured would be a much more suitable path to get this car working in a timely fashion.

This proved harder than I initially thought, as even installing ROS2 isn't straightforward.

For those of you who aren't familiar, ROS 2 (Robot Operating System 2) is an open-source framework that helps different parts of a robot communicate and work together, such as cameras, LiDAR sensors, motors, and navigation systems. Think of it as the software backbone of a robot: instead of programming everything yourself, ROS 2 provides tools and communication systems that let separate programs (called nodes) share data and coordinate tasks.

The good news is a lot of hardware (including our OS0 lidars) have libraries available in ROS2 which makes using them "easy" and "straightforward" (for people who know what they are doing, otherwise it takes a bit more effort...)

I started by just getting the recorded .pcap file from a while ago loaded and rendering in RViz2 which is just a 3d visualizer for ROS2 that can show data like TF Frames, point clouds, maps, etc. Its perfect for lidar data which is why I opted to use it!

<br>

 <div style="display:flex">  
    <br>
        <center>
            <video width="70%" controls>
                <source src="/posts/11-02-26/lidar_web.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </center>
    <br>    
</div> 

<br>

After this, I ran regular SLAM (Simultaneous Localization And Mapping) which lets me generate persistent 3d point cloud maps like these. These are super useful as they act as the reference for the golf cart so it has something to base live lidar readings off of. Without this map, the car couldn't localize or position itself in space.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/11-02-26/map3.webp"/></img>                                                                
    <br>    
</div> 

<br>

Although it is hard to tell in this picture, the map was full of useless points scattered hundreds of meters outside of the actual rendered map. These threw off all of my calculations and made it impossible to know if it was localizing properly when the scale of the map was 10km x 10km.... I wrote a simple filter script that would let it clean up the extraneous values. This left me with a nice map that I rendered with a much nicer HTML library. 

The Red X shows the end of the recoridng, the green shows the start. The dotted line is the recorded path of the car as I drove to collect sample data. (Keep in mind this map was about 2 weeks old at the time of writing this post)

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 60%; height: auto;" src="/posts/11-02-26/map2.webp"/></img>                                                                
    <br>    
</div> 

<br>

After this, I made some edits to the software that allowed the live point cloud to also be visualized in the Rviz2 window. I learned that Rviz2 is extremely powerful. The following video shows the car succesfully localizing on the map that I recorded. 

The map is about 2 weeks old, which means some things have changes (different car positions, trees don't have leaves, traffic cones in different locations etc.) but even with all the variance, SLAM had zero problems localizing the car on the map regardless of where I was! It was very reliable and didn't have any miscalculations while driving, even when I was going fast.

<br>

<div style="position: relative; width: 100%; aspect-ratio: 16 / 9; max-height: 80vh;">
    <iframe
        src="https://www.youtube.com/embed/-vEjE1yRPbo?si=_oOW1iDBLOKfacg6"
        title="YouTube video player"
        style="width: 100%; height: 100%; border: 0;"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen>
    </iframe>
</div>

<br>
Now that the car reliably localizes itself, I will need to work on the following:

* Synchronizing the camera & lidar data so it is fed to ROS2 at the same time.
* Add rotary encoder for steering again (so the car can programatically control steering position)
* Add better serial interface for the ESP32 master controller.
* Wire in the linear actuator for the brake pedal (just connect the motor driver)

If I can get these done soon, then the car will be able to follow an autonomous waypoint mission relying only on the lidar!!!