---
layout: post
status: publish
published: true
title: 09 Div & class
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 228
wordpress_url: http://webbdesignkurser.se/?p=228
date: '2012-07-11 10:09:55 +0200'
date_gmt: '2012-07-11 08:09:55 +0200'
categories:
- Nyb&ouml;rjare
tags: []
comments:
- id: 11395
  author: Anna
  author_email: aavvaa1969@gmail.com
  author_url: ''
  date: '2013-11-23 10:00:32 +0100'
  date_gmt: '2013-11-23 09:00:32 +0100'
  content: "Hej! vill b&ouml;rja med att tacka f&ouml;r att den h&auml;r kursen finns!
    Det &auml;r skitkul!\r\nI inledningen st&aring;r det att man bara f&aring;r anv&auml;nda
    en div p&aring; index.html sidan men senare i texten f&ouml;rklarar du i Float\"
    hur man placerar tv&aring; divar bredvid varandra. &Auml;r det bara p&aring; indexsidan
    1 div g&auml;ller?"
- id: 14226
  author: Elna
  author_email: elna_osterhof@hotmail.com
  author_url: ''
  date: '2013-12-29 01:43:46 +0100'
  date_gmt: '2013-12-29 00:43:46 +0100'
  content: "Hej! &Aring;terigen toppen hemsida!\r\nDet h&auml;r med classer f&ouml;rstod
    jag dock inte riktigt vad det &auml;r. Kan ni l&auml;gga upp n&aring;t bild exempel
    lr f&ouml;rklara mer?"
- id: 21335
  author: Jonna
  author_email: jonna.wahlborg@hotmail.com
  author_url: ''
  date: '2014-04-14 17:16:03 +0200'
  date_gmt: '2014-04-14 15:16:03 +0200'
  content: Tjena, n&auml;r man l&auml;gger upp en div s&aring; l&auml;gger den sig
    &ouml;ver &ouml;vrig text. Hur g&ouml;r jag f&ouml;r att l&ouml;sa detta, tex
    flytta ner &ouml;vrig text?
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;div-och-class3.png" alt="div och class" width="695" height="182" class="alignnone size-full wp-image-4073" &#47;></p>
<h1>Div och class<&#47;h1><br />
F&ouml;r att kunna namnge, placera ut och tilldela egenskaper &aring;t olika omr&aring;den och element p&aring; hemsidan s&aring; anv&auml;nder vi oss utav divar och classer. Skillnaden mellan de tv&aring; &auml;r att en div endast f&aring;r anv&auml;ndas en g&aring;ng i index.html medan classer &auml;r till f&ouml;r att anv&auml;ndas p&aring; ett flertal st&auml;llen.<br&#47;><br&#47;></p>
<h2>Att skriva en div<&#47;h2><br />
En div &auml;r ett omr&aring;de p&aring; sidan som markeras i din html-fil med taggen&nbsp;<strong>
<div><&#47;strong>.<br />
Med attributet <strong>id<&#47;strong> kan du d&ouml;pa din div, vilket ger dig m&ouml;jligheten att styla den.</p>
<p>[html]</p>
<div id="ruta">
<p><&#47;div><br />
[&#47;html]</p>
<p>I din style.css l&auml;gger du in f&ouml;ljande f&ouml;r att tilldela egenskaper:</p>
<p>[css]<br />
#ruta{</p>
<p>}<br />
[&#47;css]</p>
<p><strong>Inom div-taggarna kan vi nu l&auml;gga in v&aring;rt inneh&aring;ll.<&#47;strong></p>
<p>[html]</p>
<div id="ruta">
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen.<&#47;p></p>
<p><&#47;div><br />
[&#47;html]</p>
<p>Nu till det roliga, vi ska skriva hur v&aring;r <strong>#ruta<&#47;strong> ska se ut.</p>
<p>[css]<br />
#ruta{<br />
background: #fff;<br />
width: 200px;<br />
height: 100px;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-824" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;div1.png" alt="" width="696" height="170" &#47;></p>
<h2>Position<&#47;h2><br />
Att placera ut din div kan vara en bra id&eacute;. Det finns olika s&auml;tt att g&aring; tillv&auml;ga, n&auml;rmare sagt fyra.</p>
<p>Det kan vara sv&aring;rt till en b&ouml;rjan att f&ouml;rst&aring; skillnaden mellan dessa men l&aring;t dig inte skr&auml;mmas!</p>
<h3><strong>Static<&#47;strong><&#47;h3><br />
Det h&auml;r &auml;r den f&ouml;rinst&auml;llda funktionen som din div har, att placeras i ditt v&auml;nstra h&ouml;rn. Det &auml;r v&auml;ldigt s&auml;llan du m&aring;ste till&auml;mpa static eftersom det redan &auml;r f&ouml;rinst&auml;llt om inget annat &auml;r sagt.</p>
<p><img class="alignnone size-full wp-image-837" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;static.png" alt="" width="695" height="182" &#47;></p>
<h3><strong>Relative<&#47;strong><&#47;h3><br />
Relative kan oftast missuppfattas och anv&auml;ndas fel, men kan f&ouml;rklaras ganska enkelt. Med Relative utg&aring;r du alltid fr&aring;n den position som den vanligtvis skulle ha haft om den vore static. S&aring; om du vill att en div ska placeras <strong>10px;<&#47;strong> nedanf&ouml;r den positionen s&aring; skriver du helt enkelt <strong>margin-top:10px;<&#47;strong> s&aring; kommer din div att hoppa ner 10px.</p>
<p><img class="alignnone size-full wp-image-868" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;relative1.png" alt="" width="695" height="182" &#47;></p>
<h3><strong>Absolute<&#47;strong><&#47;h3><br />
Med Absolute skapar du ett helt sj&auml;lvst&auml;ndigt element. Mer frihet helt enkelt.</p>
<p><img class="alignnone size-full wp-image-839" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;absolute.png" alt="" width="695" height="182" &#47;></p>
<h3><strong>Fixed<&#47;strong><&#47;h3><br />
Fixed &auml;r det s&auml;llan man anv&auml;nder. Det h&auml;r klistrar fast din div p&aring; f&ouml;nstret och stannar d&auml;r n&auml;r du scrollar ner p&aring; sidan.</p>
<p><img class="alignnone size-full wp-image-846" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;fixed.png" alt="" width="695" height="182" &#47;></p>
<h2>Exempel<&#47;h2><br />
I det h&auml;r exemplet vill vi ha en vit ruta d&auml;r all text ligger. Vi vill ocks&aring; att texten ska ha en viss marginal fr&aring;n rutans kanter, d&auml;rf&ouml;r skapar vi tv&aring; stycken div, en f&ouml;r rutan och en f&ouml;r texten.</p>
<p>[html]</p>
<div id="ruta">
<div id="text">
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen.<&#47;p></p>
<p>    <&#47;div><br />
<&#47;div><br />
[&#47;html]<br />
[css]<br />
#ruta{<br />
background: #fff;<br />
width: 200px;<br />
height: 100px;<br />
position: absolute;<br />
margin-left: 50px;<br />
margin-top: 50px;<br />
}</p>
<p>#text{<br />
margin: 10px;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-854" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-div.png" alt="" width="695" height="182" &#47;></p>
<h2>Float:left<&#47;h2><br />
Float anv&auml;nds f&ouml;r att <strong>placera ut en div bredvid en annan<&#47;strong> p&aring; hemsidan. F&ouml;r att f&ouml;rklara tydligare hur det h&auml;r funkar har vi ett exempel nedanf&ouml;r.</p>
<p>[html]</p>
<div id="boxar">
<div id="left_box"> V&auml;nster box <&#47;div></p>
<div id="right_box"> H&ouml;ger box <&#47;div></p>
<p><&#47;div><br />
[&#47;html]</p>
<p>&nbsp;</p>
<p>[css]<br />
#boxar{<br />
overflow:hidden;<br />
}</p>
<p>#left_box{<br />
background: #a2c5e5;<br />
width: 200px;<br />
height: 100px;<br />
float: left;<br />
}</p>
<p>#right_box{<br />
background: #df8dbd;<br />
width: 200px;<br />
height: 100px;<br />
float: left;<br />
}<br />
[&#47;css]</p>
<p><img class="alignnone size-full wp-image-996" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;float.png" alt="float left" width="695" height="146" &#47;><br />
N&aring;got viktigt som du inte f&aring;r gl&ouml;mma &auml;r att l&auml;gga stilen <strong>overflow:hidden;<&#47;strong> i den div som t&auml;cker boxarna. Det h&auml;r hindrar att &ouml;vriga divar som kommer efter&aring;t ska placeras fel p&aring; sidan.</p>
<h2 id="class">Class<&#47;h2><br />
En class &auml;r en stil som &auml;r menad att anv&auml;ndas flera g&aring;nger. Du kan h&auml;mta en class fr&aring;n css'en f&ouml;r att sedan l&auml;gga in den i en tagg. F&ouml;r att ge ett objekt p&aring; sidan en class l&auml;gger du in f&ouml;ljande kod i taggens uppbyggnad p&aring; html-sidan.</p>
<p>[html]</p>
<p>class="namn-p&aring;-classen"</p>
<p>[&#47;html]</p>
<h3>Exempel<&#47;h3><br />
[html]</p>
<h1 class="namn-p&aring;-classen"> Rubrik <&#47;p></p>
<p><a href="sida.html" class="namn-p&aring;-classen"> L&auml;nk <&#47;a></p>
<p><img src="bild.png" class="namn-p&aring;-classen"&#47;></p>
<p class="namn-p&aring;-classen"> Text <&#47;p></p>
<div class="namn-p&aring;-classen"> <&#47;div><br />
[&#47;html]</p>
<h3>Class i css<&#47;h3><br />
I din css g&ouml;r vi precis som vi gjorde med div, men ist&auml;llet f&ouml;r ett <strong>#<&#47;strong> tecken s&auml;tter vi en punkt, vilket ocks&aring; f&aring;r s&auml;tta punkt f&ouml;r det h&auml;r kapitlet.</p>
<p>[css]<br />
.namn-p&aring;-classen{</p>
<p>}<br />
[&#47;css]</p>
