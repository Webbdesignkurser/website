---
layout: post
status: publish
published: true
title: Animering med CSS3 - Del 1
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 2458
wordpress_url: http://webbdesignkurser.se/?p=2458
date: '2012-10-05 16:06:07 +0200'
date_gmt: '2012-10-05 14:06:07 +0200'
categories:
- Blogg
tags:
- css3
- transition
- animering
- '&ouml;verg&aring;ng'
- bakgrundsf&auml;rg
- f&auml;rg
comments: []
---
<p><img style="border: #e16eca 1px solid" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;10&#47;css3-animering1.png" alt="" title="" width="700" height="428" class="alignnone size-full wp-image-2509" &#47;></p>
<p>Idag t&auml;nkte jag visa ett v&auml;ldigt enkelt s&auml;tt att <strong>skifta f&auml;rgen<&#47;strong> p&aring; bakgrund och text. Man har tidigare bara kunnat g&ouml;r det h&auml;r med hj&auml;lp av Javascript&#47;Jquery, men nu f&ouml;r tiden man kan allts&aring; &aring;stakomma samma sak med hj&auml;lp av lite CSS.<br />
Det h&auml;r fixar vi med hj&auml;lp av <strong>transition<&#47;strong> (&ouml;verg&aring;ng p&aring; svenska). Vi best&auml;mmer f&ouml;rst vad det &auml;r som ska p&aring;verkas (dvs. bakgrund, f&auml;rg eller liknande) och sedan hur l&aring;ng tid &ouml;verg&aring;ngen ska h&aring;lla p&aring;.<br&#47;><br&#47;></p>
<table class="cssprop">
<tbody>
<tr>
<td><strong>transition:<&#47;strong><&#47;td>
<td><strong>background<&#47;strong><&#47;td>
<td><strong>.25s<&#47;strong><&#47;td>
<td><strong>ease-in-out<&#47;strong><&#47;td><br />
<&#47;tr></p>
<tr>
<td>Namnet f&ouml;r funktionen<&#47;td>
<td>Objekt som ska p&aring;verkas<&#47;td>
<td>Tid<&#47;td>
<td>Ger oss en mjuk &ouml;verg&aring;ng<&#47;td><br />
<&#47;tr><br />
<&#47;tbody><br />
<&#47;table></p>
<h2>&Auml;ndra bakgrundsf&auml;rg<&#47;h2><br />
<strong>V&aring;rat resultat:<&#47;strong></p>
<ul class="animering" style="overflow:hidden">
    <a href="#">
<li style="font-size:20px">Exempelknapp<&#47;li><&#47;a><br />
<&#47;ul><br />
<br&#47;></p>
<p><strong>HTML & CSS:<&#47;strong><br />
H&auml;r har jag valt att skriva knappen som en <a href="&#47;nyborjare-listor-tabeller&#47;">lista<&#47;a> inom en l&auml;nk.<br />
[html]</p>
<ul class="knapp">
    <a href="#">
<li>Exempelknapp<&#47;li><&#47;a><br />
<&#47;ul><br />
[&#47;html]<br />
[css]<br />
.knapp li {<br />
    background: #efefef;   &#47;*F&auml;rgen du b&ouml;rjar med*&#47;<br />
    padding: 15px;<br />
    transition: background .25s ease-in-out;<br />
    -moz-transition: background .25s ease-in-out;<br />
    -webkit-transition: background .25s ease-in-out;<br />
}</p>
<p>.knapp li:hover {<br />
    background: #ff8ae8;  &#47;*F&auml;rgen den skiftar till*&#47;<br />
}<br />
[&#47;css]<br />
<br&#47;></p>
<h2>&Auml;ndra textf&auml;rgen<&#47;h2><br />
<strong>V&aring;rat resultat:<&#47;strong></p>
<ul class="textanimering">
<li>Lorem ipsum dolor sit amet...<&#47;li>
<li>...consectetur adipiscing elit<&#47;li><br />
<&#47;ul><br />
<br&#47;></p>
<p><strong>HTML & CSS:<&#47;strong><br />
Skilnaden h&auml;r &auml;r att vi byter ut background till color i v&aring;ran transition-kod.<br />
[html]</p>
<ul class="text">
<li>Lorem ipsum dolor sit amet...<&#47;li>
<li>...consectetur adipiscing elit<&#47;li><br />
<&#47;ul><br />
[&#47;html]<br />
[css]<br />
.text li {<br />
    color:#9c9c9c;       &#47;*F&auml;rgen du b&ouml;rjar med*&#47;<br />
    font-family: arial;<br />
    padding: 5px;<br />
    transition: color .25s ease-in-out;<br />
    -moz-transition: color .25s ease-in-out;<br />
    -webkit-transition: color .25s ease-in-out;<br />
}</p>
<p>.knapp li:hover {<br />
    color:#db3e3e;       &#47;*F&auml;rgen den skiftar till*&#47;<br />
}<br />
[&#47;css]</p>
<h2>Relaterade artiklar<&#47;h2><br />
<a href="http:&#47;&#47;www.w3schools.com&#47;css3&#47;css3_transitions.asp" target="_blank">www.W3School.com<&#47;a><br />
<a href="http:&#47;&#47;bavotasan.com&#47;2011&#47;a-simple-fade-with-css3&#47;" target="_blank">www.bavotasan.com<&#47;a><br />
<a href="http:&#47;&#47;designshack.net&#47;articles&#47;css&#47;create-a-color-changing-website-using-css3&#47;" target="_blank">www.designhack.net<&#47;a></p>
