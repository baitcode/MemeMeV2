# MemeMeV2

Meme editor for iOS, built in 2015 as a Udacity iOS course project. This is the
second version of [MemeMeV1](https://github.com/baitcode/MemeMeV1).

## What it does

- Pick an image from the photo album or take one with the camera.
- Add top and bottom captions in the classic meme style.
- Share the finished meme through the system share sheet.
- Browse sent memes as a table or a grid, and open one full screen.

Sent memes are kept in memory (`MemeStorage`), so they are lost when the app
quits.

## Build

Open `MemeMeV2.xcodeproj` in Xcode. There are no third-party dependencies.

## Status

Written in Swift 2, so it will not compile with a current Xcode without
migration.
