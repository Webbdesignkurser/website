---
layout: post
status: publish
published: true
title: Vad &auml;r @font-face?
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 2765
wordpress_url: http://webbdesignkurser.se/?p=2765
date: '2012-12-02 15:15:00 +0100'
date_gmt: '2012-12-02 14:15:00 +0100'
categories:
- Blogg
tags:
- CSS
- Hur fungerar font-face
- Font-face
- Typsnitt
- '&Auml;ndra font'
comments: []
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;12&#47;font-face.jpg" alt="" title="" width="700" height="428" class="alignnone size-full wp-image-2766" &#47;></p>
<h2>Anv&auml;ndning<&#47;h2><br />
<strong>Font-face hj&auml;lper dig att importera ett typsnitt in p&aring; hemsidan.<&#47;strong><br />
Typsnitt kan du ladda ner lite vart som helst, det finns dom som <a href="http:&#47;&#47;fontfabric.com&#47;category&#47;all-fonts&#47;" target="_blank">kostar pengar<&#47;a> och dom som &auml;r <a href="http:&#47;&#47;fontfabric.com&#47;category&#47;free&#47;" target="_blank">gratis<&#47;a>.</p>
<p><strong>Dubbelkolla alltid<&#47;strong> att du f&aring;r anv&auml;nda typsnittet du laddar ner.<br />
N&auml;r du har laddat ner en font s&aring; vill du kanske applicera den p&aring; hemsidan, det h&auml;r g&ouml;r du med en <strong>@font-face<&#47;strong>-kod som l&auml;ggs i CSS-mallen. Det finns bra tj&auml;nster som hj&auml;lper dig att g&ouml;ra fonten webbanpassad, bland annat <a href="http:&#47;&#47;www.font2web.com&#47;" target="_blank">Font2web<&#47;a> och <a href="http:&#47;&#47;www.fontsquirrel.com&#47;fontface&#47;generator" target="_blank">Fontsquirrel<&#47;a>. </p>
<p><strong>N&auml;r du laddar upp en font<&#47;strong> d&auml;r s&aring; f&aring;r du allt genererat &aring;t dig, det vill s&auml;ga en css-kod och det typsnittet du valt i olika filformat. Alla teckensnitts-format st&ouml;ds n&auml;mligen inte av alla webbl&auml;sare, man m&aring;ste d&auml;rf&ouml;r applicera en m&auml;ngd olika p&aring; sidan f&ouml;r att vara s&auml;ker p&aring; att den funkar.</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;fontface-fonts.jpg" alt="" title="" width="700" height="172" class="alignnone size-full wp-image-2733" &#47;><br />
<img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;hagin-font.jpg" alt="" title="" width="700" height="172" class="alignnone size-full wp-image-2738" &#47;></p>
<p>I det h&auml;r exemplet har vi anv&auml;nt en gratis font som heter <a href="http:&#47;&#47;fontfabric.com&#47;hagin-free-font&#47;" target="_blank">Hagin<&#47;a>. <strong>H&auml;r f&ouml;ljer v&aring;r @font-face-struktur:<&#47;strong><br />
{% highlight html linenos %}
<br />
@font-face {<br />
    font-family: 'Hagin';<br />
    src: url('fonts&#47;hagin_caps_medium.eot');<br />
    src: local('☺'),<br />
    url('fonts&#47;hagin_caps_medium.woff') format('woff'),<br />
    url('fonts&#47;hagin_caps_medium.ttf') format('truetype'),<br />
    url('fonts&#47;hagin_caps_medium.svg') format('svg');<br />
    font-weight: normal;<br />
    font-style: normal;<br />
}<br />
{% endhighlight %}
[&#47;css]</p>
<p>...och nu skriver vi helt enkelt in den nya fonten d&auml;r vi vill ha den.<br />
[css]<br />
#menu a{<br />
    font-family: Hagin;<br />
    color:#222;<br />
    font-size:16px;<br />
    text-decoration: none;<br />
}<br />
[&#47;css]<br />
<img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;meny-fontface.jpg" alt="" title="" width="700" height="89" class="alignnone size-full wp-image-2731" &#47;></p>
