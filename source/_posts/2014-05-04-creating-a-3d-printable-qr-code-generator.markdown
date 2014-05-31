---
layout: post
title: "Creating a 3D Printable QR Code Generator"
date: 2014-05-04 16:36:00 +0800
comments: true
categories: [3d printing, qr code, qr,  python]
---
As a web developer for a 3D printing information repository / ecommerce website,
I am constantly reminded of the exciting applications that 3D printing technology 
promises, but has yet to deliver. One of the technology's most exciting potential 
applications is the ability to create products which are customized exactly 
to end-user tastes and needs.  

A major limitation at the moment to achieving
this vision is how difficult and complicated it is to modify 3d models. 
Generally, model files such as [STLs](http://en.wikipedia.org/wiki/STL_(file_format%29) 
have to be customized by hand in 3d modeling suites such 
as [Blender](http://www.blender.org/).  Although many functional 3d printable 
files already exist in active ecosystems such as [thingiverse](http://www.thingiverse.com/), 
one must have a certain degree of skill with complex modeling software to modify and 
customize them to fit one's specific needs.  In short, the current 3d printing ecosystem 
lacks a way to customize 3d files in a way that is simple and user-friendly.

Last weekend I decided to start a project to see what degree of user friendly 
customization is possible at the moment. I set some goals for products produced
from project:  

  1. It would have to actually be useful in everyday life.  
  2. It would have to only be useful when customized, not before.  
  3. The system used to customize it should require the fewest number of inputs possible from the user.  

3D printed QR codes fit all of these criteria pretty well so I decided to start 
the project by building a way to automatcally generate custom QR codes as STL files 
from text suplied by the user that could be compiled without any modifications. 
Many generators exist on the web for creating QR codes as image files such as 
PNG, however I have only found 
[one generator](http://3d.azurewebsites.net/3DQRCodeGenerator.aspx) that generates
QR codes as STLs. As awesome as this generator is, it has a few limitaions:  

  1. It doesn't allow the degree of customization I would like  
    * Because the negative QR code is generated without a base, one must first modify it in Blender before one can print it.  Otherwise, parts of the QR code that are not attatched to the rest of the QR code simply fall off.  
    * The height of the positive QR code's base is not variable.  This means if you want a short QR code with a tall base (which makes it more durable) you would have to modify the file in Blender.  

  2. I have not been able to print a single complex (over 40 character) QR code
made from this generator that fits conveniently in one's pocket. This may indicate
that the generated file not optimized for printability.

This QR code generator needed to produce STLs that can print small but complex
QR codes. who need to be able to easily share long bits of text.  Therefore, the generated
STL files needed to be able to print both small (so they easily fit in your pocket) 
and information dense QR codes. I decided set a goal of generating an STL file
that coule be compiled with no modifications and print a durable 4cm^2 QR code that
accuratly represented 43 characters (the length of my WeiXin account URL). 

The popular Chinese mobile chat app WeiXin (WeChat in English) is the most popular
personal communication platform in China including email, texting, or calling).
It allows users to add friends by scanning a QR code from their WeChat app rather than inputing in 
their friend's user name.  This QR code corresponds to a URL associated with their WeChat 
username. These URLs are between 40 and 50 characters, which means that the QR code used to represent the URL ends
up being rather complex.

Last weekend I decided to start a project to see if it was possible to 
programically generate 3d QR codes from strings (URLs) as STL files that can be 
printed on a consumer grade 3d printer. The goal of this project was to gain a 
greater understanding of programatically generating customized STL files that can 
yield fully functional 3d prints that people can use in their every day lives 
without having to manipulate the file in any way. 

A hopeful future application of
this project is to create a webservice that can allow users to download a custom
3d qrcode STL file from a web app that requires nothing more than the string the
QR code will represent, and the size (in mm) of the desired QR code.    <INSERT PICTURE OF THIS THING>


