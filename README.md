# DLVDemo
A demo to show that disable library validation will not work in macOS Catalyst

## Primary Objective
I want to access cameras like the [OBS Studio Virtual Camera](https://obsproject.com) from a Mac Catalyst project

## Obstacles
This works in a macOS App (not Catalyst) by setting the `Disable Library Validation` to `YES`. In a Catalyst App, there is also the option to set this entitlement, but it seems to have no effect.

## Demo

![Screen Recording](DLVDemoScreen.mov)

## To Reproduce

* Install a virtual camera, such as [OBS](https://obsproject.com) or [MimoLive](https://mimolive.com) 
* Run the "CameraTest" cwApp on "My Mac"
* Run the "CameraTestiOS" target on "My Mac"

### Expected Result

The virtual camera is listed, along with the built-in camera. This is the result for the "CameraTest" target

### Actual Result

Only built-in cameras are listed. This is the result for the "CameraTestiOS" target.
