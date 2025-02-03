# Obj-Clock

It's just a clock

## Why?

Sometimes I capture short screen recordings to demonstrate some time-related aspect of software behavior, and I find it useful to have a clock on screen during the capture to make it easier to track wall-clock time. When the behaviors under investigation are very short duration, the default one second granularity is too coarse. Enter Obj-Clock, which updates every 32 milliseconds, or 30 fps.

## 30 fps?! What year do you think it is?

Hey, take it easy. Sure, it can easily update every 16 ms (60 fps) or even 8 ms (120 fps), but that costs more CPU. This is written in objective-c, and while it is quite bare-bones, it does use objective-c methods for all of its business, and costs about 2.5% CPU (on a M3 Max) when updating every 32 ms.

<img width="500" alt="image" src="https://github.com/user-attachments/assets/f7470c78-3b9a-424f-a1ee-ce592577399f" />

Feel free to edit the [refresh interval](https://github.com/dreness/Obj-Clock/blob/main/Obj-Clock/ViewController.m#L20) if you are so inclined :)

## Binary

You can download a signed and notarized binary from the [Releases](https://github.com/dreness/Obj-Clock/releases) view.
