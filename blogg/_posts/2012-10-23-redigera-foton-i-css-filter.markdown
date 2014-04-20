---
layout: post
status: publish
published: true
title: Redigera foton i CSS-Filter
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 2616
wordpress_url: http://webbdesignkurser.se/?p=2616
date: '2012-10-23 14:18:59 +0200'
date_gmt: '2012-10-23 12:18:59 +0200'
categories:
- Blogg
tags:
- CSS
- filter
comments: []
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter-cover1.png" alt="" title="" width="700" height="428" class="alignnone size-full wp-image-2636" &#47;></p>
<h2>Vad kan man g&ouml;ra med CSS-filter?<&#47;h2><br />
Man kan bland annat &auml;ndra osk&auml;rpa, ljusstyrka, f&auml;rgstyrka och kontrasten p&aring; foton i din hemsida.</p>
<h2>Vilka webbl&auml;sare st&ouml;djer det h&auml;r?<&#47;h2><br />
Den h&auml;r funktionen &auml;r ganska ny i CSS3 och fungerar endast i -webkit- (<strong>Chrome<&#47;strong> och <strong>Safari<&#47;strong>).</p>
<h2>S&aring;h&auml;r fungerar det<&#47;h2><br />
Funktionen vi anv&auml;nder heter Filter och beskriver vad vi ska &auml;ndra + vilken styrka det ska ha.<br />
[css]<br />
filter: filter(styrka);<br />
[&#47;css]<br />
Vi m&aring;ste &auml;ven skriva till support f&ouml;r alla webbl&auml;sare, trots att alla nu inte st&ouml;djer det (&auml;n).<br />
[css]<br />
-webkit-filter: filter(styrka);<br />
-moz-filter: filter(styrka);<br />
-o-filter: filter(styrka);<br />
-ms-filter: filter(styrka);<br />
[&#47;css]</p>
<h2>Osk&auml;rpa<&#47;h2><br />
[css]<br />
.foto{<br />
    filter: blur(5px);<br />
    -webkit-filter: blur(5px);<br />
    -moz-filter: blur(5px);<br />
    -o-filter: blur(5px);<br />
    -ms-filter: blur(5px);<br />
}<br />
[&#47;css]</p>
<p>[html]<br />
<img src="bild.jpg" class="foto"&#47;><br />
[&#47;html]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter1.png" alt="" title="" width="500" height="335" class="alignnone size-full wp-image-2617" &#47;><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter_org.png" alt="" title="" width="176" height="117" class="alignnone size-full wp-image-2626" &#47;></p>
<h2>Ljusstyrka<&#47;h2><br />
Ljusstyrkan m&auml;ts fr&aring;n 0 till 1. Det betyder att 0.2 skulle till exempel motsvara 20% medan 1 &auml;r 100%.<br />
[css]<br />
.foto{<br />
    filter: brightness(0.2);<br />
    -webkit-filter: brightness(0.2);<br />
    -moz-filter: brightness(0.2);<br />
    -o-filter: brightness(0.2);<br />
    -ms-filter: brightness(0.2);<br />
}<br />
[&#47;css]</p>
<p>[html]<br />
<img src="bild.jpg" class="foto"&#47;><br />
[&#47;html]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter21.png" alt="" title="" width="500" height="314" class="alignnone size-full wp-image-2622" &#47;><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter_org.png" alt="" title="" width="176" height="117" class="alignnone size-full wp-image-2626" &#47;></p>
<h2>Kontrast<&#47;h2><br />
Kontrasten m&auml;ts i procent. Allt &ouml;ver 100% ger en starkare kontrast.<br />
[css]<br />
.foto{<br />
    filter: contrast(150%);<br />
    -webkit-filter: contrast(150%);<br />
    -moz-filter: contrast(150%);<br />
    -o-filter: contrast(150%);<br />
    -ms-filter: contrast(150%);<br />
}<br />
[&#47;css]</p>
<p>[html]<br />
<img src="bild.jpg" class="foto"&#47;><br />
[&#47;html]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter3.png" alt="" title="" width="500" height="314" class="alignnone size-full wp-image-2624" &#47;><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter_org.png" alt="" title="" width="176" height="117" class="alignnone size-full wp-image-2626" &#47;></p>
<h2>Svartvit<&#47;h2><br />
[css]<br />
.foto{<br />
    filter: grayscale(100%);<br />
    -webkit-filter: grayscale(100%);<br />
    -moz-filter: grayscale(100%);<br />
    -o-filter: grayscale(100%);<br />
    -ms-filter: grayscale(100%);<br />
}<br />
[&#47;css]</p>
<p>[html]<br />
<img src="bild.jpg" class="foto"&#47;><br />
[&#47;html]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter4.png" alt="" title="" width="500" height="314" class="alignnone size-full wp-image-2629" &#47;><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter_org.png" alt="" title="" width="176" height="117" class="alignnone size-full wp-image-2626" &#47;></p>
<h2>Nyans<&#47;h2><br />
Vi kan &auml;ndra nyansen genom att best&auml;mma vilken grad av nyansen vi vill ha. T&auml;nk dig alla f&auml;rgskalor som ett stort hjul som du ska vrida p&aring;. H&auml;r vrider vi nyansen med 20 grader.<br />
[css]<br />
.foto{<br />
    filter: hue-rotate(20deg);<br />
    -webkit-filter: hue-rotate(20deg);<br />
    -moz-filter: hue-rotate(20deg);<br />
    -o-filter: hue-rotate(20deg);<br />
    -ms-filter: hue-rotate(20deg);<br />
}<br />
[&#47;css]</p>
<p>[html]<br />
<img src="bild.jpg" class="foto"&#47;><br />
[&#47;html]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter5.png" alt="" title="" width="500" height="314" class="alignnone size-full wp-image-2632" &#47;><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;cssfilter_org.png" alt="" title="" width="176" height="117" class="alignnone size-full wp-image-2626" &#47;></p>
<h2>L&auml;s mer om Filter<&#47;h2><br />
<a href="http:&#47;&#47;www.inserthtml.com&#47;2012&#47;06&#47;css-filters&#47;" target="target_blank">InsertHTML<&#47;a> har skrivit en artikel om filter, d&auml;r visar dom vad man kan g&ouml;ra mer &auml;n vad vi precis har visat.</p>
<h2>Experimentera sj&auml;lv<&#47;h2><br />
<a href="http:&#47;&#47;html5-demos.appspot.com&#47;static&#47;css&#47;filters&#47;index.html" target="_blank">H&auml;r<&#47;a> kan du testa sj&auml;lv att generera ett CSS-filter.</p>
