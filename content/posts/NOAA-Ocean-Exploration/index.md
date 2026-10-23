---
    title: 'AI Meets the Deep: Our Journey to 3rd Place in the 2024 Exploration Challenge'
    date: 2024-08-28T13:03:04-04:00
    tags: ['NOAA', 'AI', 'Software', 'Robotics']
    image: 'index.webp'
    draft: false
---

With the annual MATE ROV competition all finished up, Sunk Robotics placed 3rd worldwide in terms of robotics, and 9th overall including the marketing and advertising campaigns. A good run indeed. Our robot performed well, although reliability is our priority for next year’s attempt.  

<br><br>

---

<br><br>

# A New Competition

Although MATE ROV offers its well-known underwater competition, there are other events they host as well. This year, [Matty Harris](https://www.mattyharris.net/) and I undertook a secondary challenge, known as the 2024 Ocean Exploration Video Challenge (OER) where teams must create custom Artificial Intelligence models that can be used to identify underwater species from a provided video. In our case, we had to identify brittle stars from a minute long video.

![][image1]

You can find the official (copy) PDF from MATE [here](http://mileshilliard.com/2024%20OER%20MATE%20ROV%20Computer%20Coding%20Challenge%20Updated.pdf).

<br><br>

---

<br><br>

# Collecting Data

We started out by looking for datasets that could potentially be used to give our AI model some sense of what it's looking for. We stumbled upon a few, but most were in a format not usable by us. Eventually, we found a dataset under the [National Library of Medicine](https://pmc.ncbi.nlm.nih.gov/), and [this was what we needed](https://pmc.ncbi.nlm.nih.gov/articles/PMC8617961/). Although the information was in a mosaic format, we were able to convert them into annotated images by hand labeling them using a custom-written python program.  

![][image2]  
Brittle star sample before annotation from NLM database.

<br><br>

---

<br><br>

# Annotating a Thousand Frames

Without any annotated images for the AI model to learn from, the neural network was really just a dumb box. The dataset from NLM only provided masked images, which was not enough to get the model working with. Because we chose the YOLO v8 framework for our model, we needed to annotate each brittle star in each frame with a bounding box. To our surprise, we found that a single annotated frame fed into the training of the model was sufficient enough to generate accurate results.

![][image3]

The above image was directly taken from the AI model’s output. Although the results were far from perfect, it was a good starting point. By carefully drawing a couple more boxes on a couple more brittle stars on a couple frames, the results were looking very promising.

![][image4]

With only 3 trained frames, it had significantly improved its ability to differentiate between the target brittle stars, and everything else.

<br><br>

---

<br><br>

# Running the Video

Because we began this whole project very late for multiple reasons, we had to work fast and keep the ball rolling. At this point we only had a few hours until we had to submit the model, the annotated video, and the CSV file with bounding box data. With the model looking pretty consistent, we decided to perform the ultimate test by letting the model run over every frame in the provided video, generating a fully annotated output video. The model took just over an hour to complete each frame in the video. 

The finished video is available down below, and published on YouTube:

[![2024 OER Video Challenge Annotated Video - Sunk Robotics](https://img.youtube.com/vi/iUWyqRLHfcU/0.jpg)](https://www.youtube.com/watch?v=iUWyqRLHfcU)
[Watch the video on YouTube](https://www.youtube.com/watch?v=iUWyqRLHfcU)

<br><br>

---

<br><br>

# Documentation

One of the requirements for the challenge was to create detailed documentation on how the model worked and a brief explanation on how to set it up and run it on another machine.

You may read our [finalized documentation](https://docs.google.com/document/d/1CurT1g7UfPA-whKrHQFi0chBCpEQW0y4dI95NXdAG8c/edit?usp=sharing) if you care to learn more about the project, and some more details on the technical side of things.

<br><br>

---

<br><br>

# Wrapping up

Overall, it was great working with Matty, and I think we both learned so much. We weren’t expecting to place well (or even at all), considering that we had such limited time and resources to finish the project. I know I can speak for both of us here, because placing 3rd nationally was a great feeling. 

Feel free to checkout some of the additional resources on this project. I have made copies of important documents as perma-links as well

[MATE ROV Additional Challenges](https://materovcompetition.org/additional-challenges) \- [https://materovcompetition.org/additional-challenges](https://materovcompetition.org/additional-challenges)  
[MATE ROV Additional Challenges](http://mileshilliard.com/files/materovcompetition.pdf) (PDF)  
[MATE ROV OER Challenge](https://20693798.fs1.hubspotusercontent-na1.net/hubfs/20693798/2024%20OER%20MATE%20ROV%20Computer%20Coding%20Challenge%20Updated.pdf) (PDF)  
[MATE ROV OER Challenge](http://mileshilliard.com/files/2024%20OER%20MATE%20ROV%20Computer%20Coding%20Challenge%20Updated.pdf) (copy) (PDF)  
[Automated Quantification of Brittle Stars in Seabed Imagery Using Computer Vision Techniques](https://pmc.ncbi.nlm.nih.gov/articles/PMC8617961/)

### Special thanks to [Matty Harris](https://www.mattyharris.net/) for making this project possible\!

[image1]: image1.webp
[image2]: image2.webp
[image3]: image3.webp
[image4]: image4.webp