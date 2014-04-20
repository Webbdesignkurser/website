---
layout: post
status: publish
published: true
title: Selection, s&aring; funkar det
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 2286
wordpress_url: http://webbdesignkurser.se/?p=2286
date: '2012-09-16 15:04:52 +0200'
date_gmt: '2012-09-16 13:04:52 +0200'
categories:
- Blogg
tags:
- css3
- Selection
- Markera
- Bakgrund
comments:
- id: 524
  author: Micaela
  author_email: miiwa.olsson87@gmail.com
  author_url: ''
  date: '2013-02-26 16:56:47 +0100'
  date_gmt: '2013-02-26 15:56:47 +0100'
  content: Hur g&ouml;r man f&ouml;r att &auml;ndra f&auml;rgen p&aring; texten d&aring;?
    F&ouml;r det blir bl&aring;tt, och g&aring;r inte alls att l&auml;sa knappt, jobbigt
    f&ouml;r &ouml;gonen. Markerar jag er text h&auml;r s&aring; &auml;r ju den vit..
    hur fixar med det?
- id: 525
  author: Per
  author_email: per.loov@gmail.com
  author_url: http://webbdesignkurser.se
  date: '2013-02-26 17:00:04 +0100'
  date_gmt: '2013-02-26 16:00:04 +0100'
  content: 'F&ouml;r att &auml;ndra f&auml;rgen p&aring; texten s&aring; l&auml;gger
    du till en "color: #f&auml;rgkod" inom css-vingarna.'
- id: 526
  author: Micaela
  author_email: miiwa.olsson87@gmail.com
  author_url: ''
  date: '2013-02-26 17:42:17 +0100'
  date_gmt: '2013-02-26 16:42:17 +0100'
  content: Jag lyckades l&ouml;sa det :) tack s&aring; mycket f&ouml;r svaret iaf!
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;09&#47;selection.png" alt="selection css3" width="700" height="428" class="alignnone size-full wp-image-2287" &#47;><br />
I senaste versionen av CSS (CSS3) s&aring; tillkom funktionen ::selection.<br />
Det som selection g&ouml;r &auml;r att den till&aring;ter dig att &auml;ndra stilen p&aring; det man markerar med musen.<br />
Om du testar att markera texten p&aring; v&aring;r sida m&auml;rker du att bakgrunden blir rosa ist&auml;llet f&ouml;r den klassiska bl&aring;a f&auml;rgen. </p>
<h2>S&aring; fixar du det<&#47;h2><br />
Klistra in f&ouml;ljande kod i din CSS-mall. S&aring; enkelt &auml;r det!<br />
H&auml;r kan du &auml;ndra bakgrundsf&auml;rg samt f&auml;rgen p&aring; texten om du s&aring; vill.<br />
[css]<br />
::selection<br />
{<br />
background:#e94ebf;<br />
}<br />
::-moz-selection<br />
{<br />
background:#e94ebf;<br />
}<br />
[&#47;css]<br />
Selection st&ouml;ds av IE9+, Opera, Google Chrome och Safari.<br />
Firefox har en egen funktion, kallad ::-moz-selection.</p>
