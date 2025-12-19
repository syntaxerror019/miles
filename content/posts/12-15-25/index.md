---
title: 'Robotics & Engineering - Week of 12/15/25'
date: 2025-12-18T19:12:53-0500
tags: ['robotics-blog']
image: '4.webp'
draft: false
---

---

This week was not the most productive. I was out on Tuesday due to a lingering cold, and a good portion of the students and teachers were out with the Flu this whole week.

Nonetheless, there was some progress made on the Golf Cart.

On Monday, I wasn't feeling well, so I spent most of the time doing my "zen task" of annotating more frames for the YOLO model.

Between Jonas and I, we got through the entire dataset we took, which was about 800 photos. Ultimately, we only ended up using about 60% of the photos included, as their were many near duplicates and poor quality photographs.

On Wednesday, the shop received a new USB webcam which can be seen in the image below (ignore the cannon looking attachment to the right of it)

![new webcam](/posts/12-15-25/2.webp)

This camera is much better. It has a significantly wider FOV (more fisheye like) which allows it to see much more side-to-side when driving. This is important, as we found if people were standing next to their cars, the golf cart could easily run over their toes without noticing. 

Jonas and I took it for a quick test drive with the new camera. Even though the YOLO model wasn't trained with images originating from that camera, it performed pretty well. We did notice that using a higher video resolution really helped the model differentiate between "car" and "stop sign" when looking at Jonas. The only problem is that the FPS seriously suffered. It would drop to about 4, which is much too slow for our application sadly.

<video src="https://cdn.mileshilliard.com/ford-think-neighbor.mp4" width="1080" height="720" controls></video>

That was pretty discouraging. It was the first time getting sideways in the golf cart, so I have that excuse. It oversteers too well. Additionally, the wheels continued to spin on the snow way longer after lifting off the accelerator which I wasn't expecting. 

I just need more practice.

On Thursday, Mr. Christy found an industrial grade camera tube that was donated to us by Toyota Research Labs. Jonas wasted no time installing it directly to the golf cart's roof. It does look a little bit concerning, however a closer inspection makes it clear that its simply a webcam sitting inside and nothing more. 

![error loading](/posts/12-15-25/3.webp)

The hope is that this will make it functional in the rain and snow... and if we ever want to drive it through the Mystic River.

![error loading](/posts/12-15-25/1.webp)