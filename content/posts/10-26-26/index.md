---
title: 'Robotics & Engineering - Week of 10/26/26'
date: 2026-10-29T21:16:10-0400
tags: ['robotics-blog', 'slam', 'golf cart']
image: 'final_3d_lidar_map_of_school.webp'
draft: false
---

---

This week was almost entirely golf cart. I started out by installing the Python SDK for the Ouster LiDARs, and once I got all the libraries compiled, visualizing the sensor data was actually pretty easy. From there I moved on to the much bigger task: processing the 40 GB `.pcap` file that Jonas and I recorded with Ouster Studio the week before while driving around campus for about 30 minutes.

I ran the recording through a few conversions to get it into a point-cloud format and then into something the SLAM pipeline could actually use:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/10-26-26/converting_lidar_pcap_recording_to_3d_format.webp"/></img>                                                                           
    <br>    
</div> 

<br>

The result was a surprisingly decent map of the school. For a recording that started as a 40 GB file from a drive around campus, I was pretty happy with how it came out.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 70%; height: auto;" src="/posts/10-26-26/final_3d_lidar_map_of_school.webp"/></img>                                                                           
    <br>    
</div> 

<br>

Here are a couple of zoomed-in views of the map:

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 46%; height: auto;" src="/posts/10-26-26/final_map_3d_lidar_of_school_zoomedin.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 46%; height: auto;" src="/posts/10-26-26/final_map_3d_lidar_of_school_zoomedin2.webp"/></img>                                                                           
    <br>    
</div> 

<br>

I also grabbed some live mapping footage while testing everything out:

<br>

 <div style="display:flex; justify-content:center;">  
    <video style="width:min(100%, 860px); height:auto;" controls muted playsinline>
        <source src="/posts/10-26-26/slam_map_of_school_live_mapping.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div> 

<br>

 <div style="display:flex; justify-content:center;">  
    <video style="width:min(100%, 420px); height:auto;" controls muted playsinline>
        <source src="/posts/10-26-26/slam_live_mapping_of_school2.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div> 

<br>

The map itself turned out well, but localization was a different story. When I tried to localize with the car, it would get stuck in one area of the map and be convinced it was in that location, even when the car was somewhere completely different. My best guess is that the LiDAR was consistently seeing the roof of the car in every scan, which made the recording less than ideal for localization. That is something I want to revisit and figure out.

Later in the week, I switched over to getting the throttle fully programmatic. Jonas and I desoldered the DAC chip that Roman had put on the golf cart's "brain" PCB years ago because it had gone faulty. Instead, we soldered a wire directly to the DAC's output pin on the PCB. This let us inject a voltage straight onto that line to simulate the throttle control.

I first got it working using an Arduino's PWM output with a resistor and capacitor to make a simple RC filter for a decent analog voltage. That worked, but I later found an SPI DAC chip lying around, so I swapped over to that instead. I wired the SPI DAC to a separate Arduino board and tied it in parallel with the brain PCB's serial connection. This means the main brain board can still set direction and enable the motor driver, but my board intercepts serial commands like `$ACCEL=xyz` and converts them into a 0-5V DAC output that gets injected onto the throttle wire.

I connected the serial cable to the ESP32 that handles steering control and RC radio PPM interpretation, and had it open another hardware serial port to communicate with the throttle board. With a few tweaks, I set up another channel on the FPV radio for throttle control. It worked very well, and here is the cart driving around with no pedals or steering input:

<br>

 <div style="display:flex; justify-content:center;">  
    <video style="width:min(100%, 420px); height:auto;" controls muted playsinline>
        <source src="/posts/10-26-26/driving_golf_cart_with_remote_control_no_pedals_or_steering.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div> 

<br>

And here it is from outside, driving around with nobody inside:

<br>

<div style="display:flex; justify-content:center;">  
    <iframe width="315" height="560"
    src="https://www.youtube.com/embed/dRKOh26qZsw"
    title="Golf cart remote control"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    allowfullscreen></iframe>
</div>

<br>

There are still some things I want to change. Adding expo on the radio would be nice, and I also want to ramp up the throttle so it is less jerky and abrupt with its movements.

On the ROV side, here is the new dome. More on that soon.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 50%; height: auto;" src="/posts/10-26-26/new_rov_dome.webp"/></img>                                                                           
    <br>    
</div> 
