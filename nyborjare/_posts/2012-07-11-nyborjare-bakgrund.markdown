---
layout: post
status: publish
published: true
title: 08 Bakgrund
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 226
wordpress_url: http://webbdesignkurser.se/?p=226
date: '2012-07-11 10:09:31 +0200'
date_gmt: '2012-07-11 08:09:31 +0200'
categories:
- Nyb&ouml;rjare
tags: []
comments:
- id: 6020
  author: filip
  author_email: momme_00@hotmail.com
  author_url: ''
  date: '2013-05-31 19:37:58 +0200'
  date_gmt: '2013-05-31 17:37:58 +0200'
  content: "var ska jag s&auml;tta body{\r\nbackground: #f0b9de;\r\n}"
- id: 6052
  author: Per
  author_email: per.loov@gmail.com
  author_url: http://www.webbdesignkurser.se
  date: '2013-06-01 12:29:41 +0200'
  date_gmt: '2013-06-01 10:29:41 +0200'
  content: I din css-mall. Vilket du kan l&auml;sa mer om i <a href="http:&#47;&#47;webbdesignkurser.se&#47;nyborjare-css-grunder"
    rel="nofollow">CSS-grunder<&#47;a>.
- id: 11289
  author: Jakob &Ouml;qvist
  author_email: jackeoqvist@gmail.com
  author_url: ''
  date: '2013-11-21 20:53:21 +0100'
  date_gmt: '2013-11-21 19:53:21 +0100'
  content: Jag f&aring;r den bara att repetera en rad h&ouml;gst upp v&aring;gr&auml;tt
- id: 20642
  author: Hannes
  author_email: h.fant@outlook.com
  author_url: http://www.multibird.netai.net
  date: '2014-03-31 15:43:16 +0200'
  date_gmt: '2014-03-31 13:43:16 +0200'
  content: Jag f&aring;r inte min bakgrund att fungera! Den kommer inte dit!
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;bakgrund-pa-hemsidan.png" alt="Bakgrund p&aring; hemsidan" width="695" height="182" class="alignnone size-full wp-image-4079" &#47;></p>
<h1>Bakgrund p&aring; hemsidan<&#47;h1><br />
F&ouml;r att best&auml;mma en bakgrundsf&auml;rg anv&auml;nder vi funktionen <strong>background: #f&auml;rg;<&#47;strong> f&ouml;r det objektet som ska f&aring; bakgrunden.</p>
<p>D&aring;<strong> <body><&#47;strong>&nbsp;&auml;r hemsidans kropp kan vi s&auml;tta en bakgrund p&aring; hela sidan genom att styla <body></p>
<p>[css]<br />
body{<br />
background: #f0b9de;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-787" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-background.png" alt="" width="697" height="189" &#47;><br&#47;><br&#47;></p>
<h2>Bakgrundsbild<&#47;h2><br />
Vi anv&auml;nder samma funktion som f&ouml;r bakgrundsf&auml;rgen men byter ut <strong>#f&auml;rg<&#47;strong> till <strong>url(bild.png)<&#47;strong>.</p>
<p>[css]<br />
body{<br />
background: url(bild.png);<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-794" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-bakgrundsbild1.png" alt="" width="697" height="227" &#47;></p>
<pre><&#47;pre></p>
<h2>Upprepa bakgrunden<&#47;h2><br />
F&ouml;r att best&auml;mma hur bakgrunden ska upprepas kan vi anv&auml;nda tre kommandon.<br&#47;><br&#47;></p>
<table class="cssprop">
<tbody>
<tr>
<td width="100px">
<p><strong>repeat-y<&#47;strong><&#47;p><&#47;td></p>
<td>
<p>Upprepa lodr&auml;tt.<&#47;p><&#47;td><br />
<&#47;tr></p>
<tr>
<td>
<p><strong>no-repeat<&#47;strong><&#47;p><&#47;td></p>
<td>
<p>Upprepas inte, syns bara en g&aring;ng.<&#47;p><&#47;td><br />
<&#47;tr></p>
<tr>
<td>
<p><strong>repeat-x<&#47;strong><&#47;p><&#47;td></p>
<td>
<p>Upprepa v&aring;gr&auml;tt.<&#47;p><&#47;td><br />
<&#47;tr><br />
<&#47;tbody><br />
<&#47;table></p>
<h2>Exempel p&aring; No-repeat<&#47;h2><br />
[css]<br />
body{<br />
background: url(bild.png) no-repeat;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-797" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;no-repeat.png" alt="" width="697" height="227" &#47;></p>
<pre><&#47;pre></p>
<h2>Bakgrundsf&auml;rg och bild<&#47;h2><br />
[css]<br />
body{<br />
background: #f0b9de url(bild.png) no-repeat;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-799" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;f&auml;rg-och-bakgrund.png" alt="" width="697" height="227" &#47;></p>
<h2>Tips<&#47;h2><br />
En l&auml;sv&auml;nlig hemsida anv&auml;nder ljusa f&auml;rger i bakgrunden som &auml;r trevliga mot &ouml;gat. &nbsp;Det &auml;r ocks&aring; viktigt att det finns kontrast p&aring; hemsidan, vilket du kan l&auml;sa mer om p&aring;&nbsp;<a href="http:&#47;&#47;contrastrebellion.com&#47;" target="_blank">http:&#47;&#47;contrastrebellion.com<&#47;a>. Vi vill inte att texten ska sm&auml;lta ihop med bakgrunden som vi gjort i ovanst&aring;ende exempel, det skr&auml;mmer bort l&auml;saren.</p>
<p>H&auml;r har vi anv&auml;nt en liten ljus bild f&ouml;r att sedan upprepa den i ett m&ouml;nster: &nbsp;<img class="alignnone size-full wp-image-805" style="border: 1px #a4a4a4 solid;" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;bild1.png" alt="" width="25" height="25" &#47;></p>
<p><img class="alignnone size-full wp-image-802" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;bakgrund-ljus.png" alt="" width="697" height="227" &#47;></p>
