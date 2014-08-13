---
layout: post
title: "Creating A 3D Printable QR Code Generator"
date: 2014-08-08 14:54:29 +0800
comments: true
categories: ["3d printing", "STL", "3d models"]
keywords: "3d printing, STL, models, 3d printing software"
description: "Since my last post I wrote out a simple 3D printable QR code
generator that takes a string and encodes it into a 3D printable STL file.
Check it out at  getmystl.com"
---
Since my last post I wrote out a simple 3D printable QR code generator that
takes a string and encodes it into a 3D printable STL file. Check it out at
[getmystl.com](http://getmystl.com).  A link can also be found in my [projects](/projects).
This webapp was just a simple test to see how easy it would be to create
a 3D printable model generator that can create custom made 3D printables for
a user using a bit of Python.

I accomplished this with no small help from this awesome Github project called
[stl_tools](https://github.com/nicksanford/stl_tools) created by Tristan Harn,
an engineer at NASA who wrote this library during the federal sequester sequester.
Here is a link to his [github](https://github.com/thearn)

The webapp is not perfect.  The base size percentage is not actually a percentage,
rather it is just a constant that makes the base larger or smaller. This constant
does not scale perfectly as a percentage of the whole model.  Both the
depth and base size percentages are approximations at best, and at large values they
are both wildly inaccurate.

Dispite these limitations, the app in its current form is able to generate 3D printable
QR codes in any dimensions that your printer supports. You can also choose to
generate a QR code with with the black part of the either out or in.

Not bad for a weekend's worth of work.
