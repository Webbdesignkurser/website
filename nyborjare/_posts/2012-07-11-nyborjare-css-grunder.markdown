---
layout: post
status: publish
published: true
title: 06 CSS-grunder
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 221
wordpress_url: http://webbdesignkurser.se/?p=221
date: '2012-07-11 10:07:16 +0200'
date_gmt: '2012-07-11 08:07:16 +0200'
categories:
- Nyb&ouml;rjare
tags:
- CSS
- Reset Css
comments:
- id: 13396
  author: dennis
  author_email: dennan1998@yahoo.com
  author_url: ''
  date: '2013-12-17 18:47:45 +0100'
  date_gmt: '2013-12-17 17:47:45 +0100'
  content: Varf&ouml;r &auml;ndras min text n&auml;r jag skickar in  i index filen?
    fonten blir till den vanliga etc.
- id: 21208
  author: Philip
  author_email: montagu-evans@hotmail.com
  author_url: ''
  date: '2014-04-10 15:43:22 +0200'
  date_gmt: '2014-04-10 13:43:22 +0200'
  content: "Hej,\r\n\r\nfast&auml;n jag inte anv&auml;nder mig av t.ex ruby, sumgmary
    etc som n&auml;mns ovan, beh&ouml;ver jag verkligen skriva ut dessa i css-upps&auml;ttningen?"
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-grunder3.png" alt="css-grunder" width="695" height="182" class="alignnone size-full wp-image-4047" &#47;></p>
<h1>Css-grunder<&#47;h1><br />
Css (Cascading Style Sheets) &auml;r ansiktet ut&aring;t f&ouml;r din html-kod. Om html &auml;r kroppen s&aring; &auml;r css kl&auml;derna. Om html vore en bil s&aring; best&auml;mmer css vilken f&auml;rg bilen ska ha. Ja, du fattar po&auml;ngen. Dags att designa hemsidan! Css skrivs i en separat fil f&ouml;r att sedan l&auml;nkas ihop med din html-fil.<br&#47;><br&#47;></p>
<h2>Vi b&ouml;rjar med att l&auml;nka ihop dem<&#47;h2><br />
Klistra in koden inom <strong><head><&#47;strong> i din html-fil. Det h&auml;r h&auml;mtar all information som vi kommer att skriva i css-filen.</p>
<p>[html]</p>
<link rel="stylesheet" type="text&#47;css" href="style.css" &#47;>
[&#47;html]</p>
<p>Skapa nu ett nytt dokument och d&ouml;p det till <strong>style.css<&#47;strong> <em>(samma namn som vi skrev i koden ovanf&ouml;r)<&#47;em>.</p>
<p><img class="alignnone size-full wp-image-690" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;stylecss-i-mapp.png" alt="" width="687" height="182" &#47;></p>
<h2 id="reset_css">Reset css<&#47;h2><br />
Alla webbl&auml;sare har olika s&auml;tt att tolka html-kod som inte har stylats med css &auml;n. D&auml;rf&ouml;r &auml;r det viktigt att vi nollst&auml;ller webbl&auml;sarens f&ouml;rinst&auml;llningar. Det h&auml;r g&ouml;r vi genom att klistra in en bit kod i v&aring;r <strong>style.css<&#47;strong>. Du beh&ouml;ver inte veta vad allting g&ouml;r. Viktigaste &auml;r att det ligger i din css-mall.</p>
<p>[css]<br />
html, body, div, span, applet, object, iframe,<br />
h1, h2, h3, h4, h5, h6, p, blockquote, pre,<br />
a, abbr, acronym, address, big, cite, code,<br />
del, dfn, em, img, ins, kbd, q, s, samp,<br />
small, strike, strong, sub, sup, tt, var,<br />
b, u, i, center,<br />
dl, dt, dd, ol, ul, li,<br />
fieldset, form, label, legend,<br />
table, caption, tbody, tfoot, thead, tr, th, td,<br />
article, aside, canvas, details, embed,<br />
figure, figcaption, footer, header, hgroup,<br />
menu, nav, output, ruby, section, sumgmary,<br />
time, mark, audio, video {<br />
	margin: 0;<br />
	padding: 0;<br />
	border: 0;<br />
	font-size: 100%;<br />
	font: inherit;<br />
	vertical-align: baseline;<br />
}<br />
article, aside, details, figcaption, figure,<br />
footer, header, hgroup, menu, nav, section {<br />
	display: block;<br />
}<br />
body {<br />
	line-height: 1;<br />
}<br />
ol, ul {<br />
	list-style: none;<br />
}<br />
blockquote, q {<br />
	quotes: none;<br />
}<br />
blockquote:before, blockquote:after,<br />
q:before, q:after {<br />
	content: '';<br />
	content: none;<br />
}<br />
table {<br />
	border-collapse: collapse;<br />
	border-spacing: 0;<br />
}<br />
[&#47;css]</p>
<h2>Klart!<&#47;h2><br />
D&aring; var det grundl&auml;ggande klart! Vi kommer nu att fylla <strong>style.css<&#47;strong> med css-koder.</p>
