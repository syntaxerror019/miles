---
title: 'Robotics & Engineering - Week of 10/19/26'
date: 2026-10-22T23:41:41-0400
tags: ['robotics-blog']
image: 'rov_and_me_in_pool.webp'
draft: false
---

---

This week I split my time between the ROV and the golf cart, and both of them finally decided to cooperate... mostly.

On the ROV side, one of the ESCs decided to let the magic smoke out. I soldered in a new one (no picture sadly) and that brought the motor back to life. On Thursday, Tim helped me get all the motors spinning in the correct directions, which was a big win. The PIDs still don't work though, so that is next on the list. I need to get those figured out sooner than later!

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/10-19-26/rov_and_me_in_pool.webp"/></img>  
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 40%; height: auto;" src="/posts/10-19-26/rov_in_pool_again.webp"/></img>                                                                           
    <br>    
</div> 

<br>

Of course, we had to take it to the pool to make sure everything still worked underwater. Here is a short of the ROV doing its thing in the water:

<br>

<div style="display:flex; justify-content: center;">  
    <iframe width="315" height="560"
src="https://www.youtube.com/embed/WigENhJ7JFo"
title="YouTube video player"
frameborder="0"
allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
allowfullscreen></iframe>
</div>
<br>

Once the ROV was back together, I moved over to the golf cart. Jonas and I started by setting up the Ouster OS0 LiDAR on our bench so we could test it out before mounting anything.

Getting it to talk to the computer was a lot more involved than either of us expected. After plenty of trial and error and research, we figured out how to create a local subnet with a different IP range for the LiDAR and then set the UDP transmit packet IP address. Once that was sorted, it finally started sending data.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 65%; height: auto;" src="/posts/10-19-26/lidar_demo.webp"/></img>                                                                           
    <br>    
</div> 

<br>

The point cloud looked great, and we were also able to overlay it with the camera feed, which is going to be really useful once we start fusing the two systems together.

<br>

 <div style="display:flex">  
    <br>
        <img onclick="window.location.href=this.src;" style="display: block; margin-left: auto; margin-right: auto; width: 65%; height: auto;" src="/posts/10-19-26/lidar_demo_with_camera_feed.webp"/></img>                                                                           
    <br>    
</div> 

<br>

After we confirmed everything worked on the bench, we temporarily taped the LiDAR to the top of the golf cart and drove around school as a demo. It held on surprisingly well for being mounted with tape!

<br>

 <div style="display:flex">  
    <br>
        <center>
            <video width="70%" controls>
                <source src="/posts/10-19-26/lidar_demo.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </center>
    <br>    
</div> 

<br>

Overall, a very productive week. The ROV is moving again and the golf cart can finally see in 3D. Now I just need to get those PIDs working so the ROV can actually hold a heading instead of doing whatever it wants.
