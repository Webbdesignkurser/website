---
layout: post
status: publish
published: true
title: 03 Navigering
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 33
wordpress_url: http://webbdesignkurser.se/wordpress/?p=33
date: '2012-07-10 12:37:46 +0200'
date_gmt: '2012-07-10 10:37:46 +0200'
categories:
- Nyb&ouml;rjare
tags:
- HTML
- L&auml;nkar
- Navigering
comments:
- id: 9299
  author: Christian Nilsson
  author_email: blixten02@live.com
  author_url: ''
  date: '2013-09-02 15:12:49 +0200'
  date_gmt: '2013-09-02 13:12:49 +0200'
  content: MIna ankare sitter ihop och h&auml;nder inget
- id: 14943
  author: Faroq
  author_email: farough.n@gmail.com
  author_url: ''
  date: '2014-01-08 01:43:51 +0100'
  date_gmt: '2014-01-08 00:43:51 +0100'
  content: Det funkar tillbaka till startsidan, men inte tv&auml;rtom. linket "G&aring;
    till sida 2" skapades, men n&auml;r man klickar p&aring; den kommer denna meddelande,
    "websidan kan inte visas". Vad kan det beror p&aring;?
---
<p><img src="&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;lankar.png" alt="" width="695" height="182" class="alignnone size-full wp-image-2907" &#47;></p>
<h1>Navigering med l&auml;nkar<&#47;h1><br />
L&auml;nkar vet du s&auml;kert vad det &auml;r, dom skickar dig fr&aring;n en sida till en annan. L&auml;nkar skrivs med taggen <strong><a><&#47;strong> och anv&auml;nds s&aring; h&auml;r:</p>
<p>[html]<br />
<a href="sida.html">Klicka h&auml;r<&#47;a><br />
[&#47;html]<br />
<br&#47;></p>
<h2><img class="alignnone size-full wp-image-177" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;bra1.png" alt="" width="18" height="18" &#47;>&nbsp;S&aring; fixar vi det<&#47;h2><br />
I din <strong>index.html<&#47;strong> l&auml;gger vi in f&ouml;ljande uppbyggnad:</p>
<p>[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"><br />
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<h1>Startsida<&#47;h1><br />
    <a href="sida2.html">G&aring; till sida 2<&#47;a><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<p>Nu har vi skapat en l&auml;nk till en fil som heter <strong>sida2.html<&#47;strong> vilket betyder att vi ocks&aring; m&aring;ste skapa en s&aring;dan fil.</p>
<p>&Ouml;ppna ett nytt dokument och l&auml;gg in f&ouml;ljande.</p>
<p>[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"><br />
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<h1>Sida 2<&#47;h1><br />
    <a href="index.html">Tillbaka till startsidan<&#47;a><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<p>D&ouml;p den till <strong>sida2.html<&#47;strong> och testa om det funkar att g&aring; fram och tillbaka!</p>
<h2><img class="alignnone size-full wp-image-764" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;fel.png" alt="" width="18" height="18" &#47;>&nbsp;Vanliga fel<&#47;h2><br />
<strong>1.<&#47;strong> Har du stavat r&auml;tt?<br />
<strong>2<&#47;strong>. Ligger filerna i r&auml;tt mapp?<br />
<strong>3.<&#47;strong> Filnamnet f&aring;r <strong>inte<&#47;strong> inneh&aring;lla mellanrum eller specialtecken.</p>
<h2>L&auml;nka till andra mappar<&#47;h2><br />
Om v&aring;r sida2.html ligger i en undermapp, l&aring;t oss kalla den "sidor" s&aring; l&auml;gger man till det i adressen:</p>
<p>[html]<br />
<a href="sidor&#47;sida2.html">G&aring; till sida 2<&#47;a><br />
[&#47;html]</p>
<p>Om du d&auml;r emot vill l&auml;nka till en mapp som ligger ovanf&ouml;r den nuvarande mappen f&aring;r du g&ouml;ra en backande l&auml;nk:</p>
<p>[html]<br />
<a href="..&#47;sida2.html">G&aring; till sida 2<&#47;a><br />
[&#47;html]</p>
<h2>&Ouml;ppna i nytt f&ouml;nster<&#47;h2><br />
[html]<br />
<a href="sida2.html" target="_blank">&Ouml;ppna sida 2 i nytt f&ouml;nster<&#47;a><br />
[&#47;html]</p>
<h2>L&auml;nka till ett element p&aring; samma sida<&#47;h2><br />
Ibland vill man l&auml;nka till en del av sidan, tex om man &auml;r p&aring; botten av en sida och vill kunna klicka p&aring; en l&auml;nk f&ouml;r att komma till toppen, detta g&ouml;r man med s&aring; kallade ankare.<br />
F&ouml;r att skapa ett ankare, g&aring;r vi tillv&auml;ga s&aring;h&auml;r:</p>
<p>[html]</p>
<h2 id="ankare">Detta &auml;r en titel med ett ankare!<&#47;h2></p>
<h2 id="annat_ankare">Detta &auml;r en titel med ett annat ankare!<&#47;h2><br />
[&#47;html]</p>
<p>Och f&ouml;r att sedan l&auml;nka till ankaret, g&ouml;r vi:</p>
<p>[html]<br />
<a href="#ankare">Detta l&auml;nkar till det f&ouml;rsta ankaret!<&#47;a><br />
<a href="#annat_ankare">Detta l&auml;nkar till det andra ankaret!<&#47;a><br />
[&#47;html]</p>
<p>Det g&auml;ller allts&aring; att matcha id-taggen p&aring; ankaret, med l&auml;nkens href-tagg.</p>
