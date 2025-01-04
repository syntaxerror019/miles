---
    title: 'GUI over SSH with X11'
    date: 2025-01-03T13:03:04-04:00
    tags: ['ssh', 'rpi', 'software']
    image: 'index.png'
    draft: false
---

---

SSH is awesome, but your options when trying to run a GUI application are a bit limited, especially on headless computers. Luckily there are a few ways to go about handling this problem, even if your computer has no monitor directly connected to it.

<br>

# SSH into the machine

First of all, you need to ssh into your machine to get everything set up.
Now you have a couple options. Some people may have a display (be it a full monitor, a TV screen, a touch display, etc) and others may have nothing it all. 

<br>

## If you have NO display
If you have no display connected to your device such as a headless RPI or a remote server, you can run the following command.

```bash
ssh -X user@ip_address
```

The `-X` flag tells the connection to forward all display requests to your own computer! This means if you try to run a GUI app on the device, the window will appear on your local machine.

If you want real-time viewing and can't run locally, use X11 forwarding (ssh -X). This setup is straightforward and preserves the interactivity of the application at hand.

<br>

## If you DO have a display
If you do in fact have a display connected to your device, you can force the GUI app to run on that display instead.
To do so, you need to check the "display" variable. **Be sure to run the following NOT over ssh, but directly logged into the machine physically**

```bash
echo $DISPLAY
```
Typically, this will return something like `:0`.

If you cannot run this command, you may assume the output to be `:0`

Now export this variable in your SSH client. Return to your SSH window and run the following command, replacing :0 with whatever you saw from the previous command.

```bash
export DISPLAY=:0
```

This method ensures that even though you’re SSHed into the Pi, the output is displayed on the physically connected monitor!
<hr>
<hr>
<hr>