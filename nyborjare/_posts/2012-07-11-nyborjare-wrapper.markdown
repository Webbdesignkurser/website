---
layout: post
status: publish
published: true
title: 10 Wrapper
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 860
wordpress_url: http://webbdesignkurser.se/?p=860
date: '2012-07-11 10:10:26 +0200'
date_gmt: '2012-07-11 08:10:26 +0200'
categories:
- Nyb&ouml;rjare
tags: []
comments:
- id: 2742
  author: Waneleha
  author_email: waneleha@hotmail.com
  author_url: ''
  date: '2013-04-05 14:10:05 +0200'
  date_gmt: '2013-04-05 12:10:05 +0200'
  content: Jag har &auml;ven sett "container" &auml;r det samma sak som "wrapper"
    eller &auml;r det tv&aring; skilda saker?
- id: 2748
  author: Per
  author_email: per.loov@gmail.com
  author_url: http://webbdesignkurser.se
  date: '2013-04-05 14:54:55 +0200'
  date_gmt: '2013-04-05 12:54:55 +0200'
  content: 'Wrapper &auml;r bara ett namn som ofta anv&auml;nds f&ouml;r css-funktionen
    som centerar. Det kan d&auml;rf&ouml;r h&auml;nda att du st&ouml;tt p&aring; n&aring;gon
    som d&ouml;pt om #wrapper till #container.'
- id: 2757
  author: Waneleha
  author_email: waneleha@hotmail.com
  author_url: ''
  date: '2013-04-05 15:15:11 +0200'
  date_gmt: '2013-04-05 13:15:11 +0200'
  content: Tack! d&aring; hade jag f&ouml;rst&aring;tt r&auml;tt.
- id: 17891
  author: Angelina
  author_email: angeline_adolfsson@hotmail.com
  author_url: ''
  date: '2014-02-23 03:13:36 +0100'
  date_gmt: '2014-02-23 02:13:36 +0100'
  content: Wrappern &auml;r centrererad, men en div som jag gjort till en box utan
    inneh&aring;ll (ska strukturera upp sidans inneh&aring;ll) hamnar utanf&ouml;r
    wrappern p&aring; h&ouml;ger sida, inte p&aring; v&auml;ntster. Den &auml;r inuti
    wrappern, och de andra boxarna, s&aring; som menyn, hamnar inanf&ouml;r p&aring;
    h&ouml;gra sidan, bara inte den diven.
---
<p><img src="&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;nyborjare-wrapper.png" alt="Wrapper" width="695" height="182" class="alignnone size-full wp-image-2946" &#47;></p>
<h1>Centrera hemsidan med Wrapper<&#47;h1><br />
En wrapper centrerar din hemsidas inneh&aring;ll s&aring; att allt blir proportionerligt. Vi skriver wrappern som en vanlig div och d&ouml;per den till "wrapper". Allt material som ska centreras l&auml;ggs inom den h&auml;r.<br />
Viktigt att t&auml;nka p&aring; &auml;r att du beh&ouml;ver veta vilken bredd sidan ska ha f&ouml;r att kunna centrera.<br />
Standardm&aring;ttet f&ouml;r hemsidor &auml;r <strong>960px<&#47;strong>.</p>
<h3 style="color: #6b6b6b; margin-top: 30px;"><span style="font-size: 45px;">"<&#47;span> Why 960px? Because 960px is a width that is suited for the wide number of platforms on which we browse the web.<span style="font-size: 25px;">"<&#47;span> - <a href="http:&#47;&#47;webdesign.tutsplus.com&#47;articles&#47;workflow&#47;using-the-960-grid-system-as-a-design-framework&#47;" target="_blank">Tutsplus<&#47;a><&#47;h3><br&#47;></p>
<h2>S&aring; fixar vi det<&#47;h2><br />
[html]</p>
<div id="wrapper">
<div id="ruta">
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen!<&#47;p><br />
    <&#47;div><br />
<&#47;div><br />
[&#47;html]</p>
<h2><&#47;h2><br />
[css]<br />
#wrapper{<br />
width: 960px;<br />
margin-left: auto;<br />
margin-right: auto;<br />
}<br />
[&#47;css]</p>
