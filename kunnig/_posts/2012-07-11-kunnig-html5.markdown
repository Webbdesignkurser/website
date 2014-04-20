---
layout: post
status: publish
published: true
title: 06 HTML5
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 312
wordpress_url: http://webbdesignkurser.se/05-html5/
date: '2012-07-11 16:57:40 +0200'
date_gmt: '2012-07-11 14:57:40 +0200'
categories:
- Kunnig
tags: []
comments:
- id: 2747
  author: Waneleha
  author_email: waneleha@hotmail.com
  author_url: ''
  date: '2013-04-05 14:46:43 +0200'
  date_gmt: '2013-04-05 12:46:43 +0200'
  content: Ena l&auml;nken i f&ouml;rsta stycket &auml;r "d&ouml;d".
- id: 6471
  author: Kenth Hagstr&ouml;m
  author_email: keha1976@gmail.com
  author_url: ''
  date: '2013-06-11 09:36:26 +0200'
  date_gmt: '2013-06-11 07:36:26 +0200'
  content: 'Eftersom det ska vara HTML5 s&aring; skulle jag vilja att #content anv&auml;nde
    sig av elementet ''section'' och #right_box skulle kunna vara en ''aside''.'
---
<p><img src="&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;kunnig-html5.png" alt="Html 5" width="700" height="172" class="alignnone size-full wp-image-3280" &#47;></p>
<h1>Vad &auml;r HTML5?<&#47;h1></p>
<p>HTML5 &auml;r den senaste versionen av HTML, utvecklat av <a href="http:&#47;&#47;www.w3.org&#47;" target="_blank">W3C<&#47;a>. Det har tillkommit ett flertal nya element, s&aring; som<br />
<nav> f&ouml;r webbsidans navigationsmenyer,<br />
<section> och<br />
<article> f&ouml;r inneh&aring;ll av olika betydelse, samt<br />
<header>(som inte ska f&ouml;rv&auml;xlas med <head>) och<br />
<footer> f&ouml;r webbsidans sidhuvud och sidfot. Man har ocks&aring; valt att ta bort gamla element s&aring; som <font> och <center>, vars effekt ist&auml;llet ska uppn&aring;s via CSS. I det h&auml;r exemplet kommer vi att anv&auml;nda <strong><br />
<header><&#47;strong> och <strong><br />
<footer><&#47;strong>.<br />
Om du vill g&aring; mer in p&aring; alla nya element som finns s&aring; har W3School en bra summering <a href="http:&#47;&#47;www.w3schools.com&#47;html&#47;html5_intro.asp" target="_blank">h&auml;r<&#47;a> d&auml;r du hittar allt nytt som tillkommit.<br&#47;><br&#47;></p>
<h2>Kort informationsfilm<&#47;h2><br />
<iframe width="700" height="350" src="http:&#47;&#47;www.youtube.com&#47;embed&#47;mzPxo7Y6JyA" frameborder="0" allowfullscreen><&#47;iframe></p>
<h2>Fr&aring;n Photoshop till HTML<&#47;h2></p>
<p>Dags att koda ihop hemsidan som vi designat upp i Photoshop. Vi kommer att jobba ner&aring;t, fr&aring;n header till footer helt enkelt.<br />
V&aring;r skiss i Photoshop &auml;r fr&auml;mst till f&ouml;r att hj&auml;lpa oss att kartl&auml;gga hur vi ska skriva hemsidan, men ocks&aring; f&ouml;r att senare kunna applicera bildmaterial.</p>
<h2>S&aring; h&auml;r t&auml;nkte vi<&#47;h2><br />
Vi har delat upp designen i fyra delar; Header, headline, content (boxarna) och footer.</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;html5-forhandsvisning1.jpg" alt="" title="" width="700" height="480" class="alignnone size-full wp-image-2800" &#47;><br />
<img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;brablogg12.png" alt="" title="" width="700" height="589" class="alignnone size-full wp-image-2217" &#47;></p>
<h2>HTML-strukturen<&#47;h2><br />
Vi k&ouml;r med v&aring;r standard-struktur p&aring; html-filen. Kom ih&aring;g din Doctype och Meta-charset.<br />
V&aring;r Doctype ber&auml;ttar att vi skriver i HTML5, medan Meta-charset f&aring;r &aring;, &auml; och &ouml; att fungera p&aring; sidan.</p>
<p>[html]<br />
<!DOCTYPE html><br />
<html><br />
    <head><br />
    <title>BraBlogg<&#47;title><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css" &#47;>
    <&#47;head><br />
    <body><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Div-strukturen<&#47;h2><br />
Dags att placera in v&aring;ra &ouml;vergripande divar, dvs. header, headline, content (med left och right box) och footer.<br />
Som vi skrev i b&ouml;rjan av kapitlet s&aring; ger HTML5 oss nya element som underl&auml;ttar n&auml;r det kommer till header och footer, vilket vi applicerar h&auml;r.</p>
<p>[html]<br />
<!DOCTYPE html><br />
<html><br />
    <head><br />
    <title>BraBlogg<&#47;title><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css" &#47;>
    <&#47;head><br />
    <body></p>
<header>
        <&#47;header></p>
<div id="headline">
        <&#47;div>  </p>
<div id="content">
<div id="left_box"> <&#47;div></p>
<div id="right_box"> <&#47;div><br />
        <&#47;div>     </p>
<footer>
        <&#47;footer></p>
<p>    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Wrapper<&#47;h2></p>
<p>Som du s&aring;g tidigare &auml;r v&aring;r design uppbyggd av olika typer av element&#47;divar. N&aring;gra str&auml;cker ut sig 100% brett medan v&aring;r content inte g&ouml;r det. Det h&auml;r betyder att vi m&aring;ste applicera en wrapper f&ouml;r varje div. Viktigt att t&auml;nka p&aring; h&auml;r &auml;r att man inte f&aring;r ha dubbletter av id-divar. D&auml;remot &auml;r classer gjorde f&ouml;r att anv&auml;ndas flera g&aring;nger, vi kan d&auml;rf&ouml;r g&ouml;ra om v&aring;ra wrappers till classer. F&ouml;r dom divar som ska vara 100% bred l&auml;gger vi wrappern inuti, medan vi l&auml;gger den utanf&ouml;r v&aring;r content.</p>
<p>[html]<br />
<!DOCTYPE html><br />
<html><br />
    <head><br />
    <title>BraBlogg<&#47;title><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css" &#47;>
    <&#47;head><br />
    <body></p>
<header>
<div class="wrapper">
<p>            <&#47;div></p>
<header>
<div id="headline">
<div class="wrapper">
<p>            <&#47;div><br />
        <&#47;div>  </p>
<div class="wrapper">
<div id="content">
<div id="left_box"> <&#47;div></p>
<div id="right_box"> <&#47;div><br />
            <&#47;div><br />
        <&#47;div></p>
<footer>
<div class="wrapper">
<p>            <&#47;div><br />
        <&#47;footer></p>
<p>    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Inneh&aring;llet<&#47;h2><br />
Dags att l&auml;gga in v&aring;rat inneh&aring;ll, dvs. loggan, menyn och texten i headline, content och footern. Det h&auml;r kan tyckas se komplicerat ut men det enda vi g&ouml;r &auml;r att vi skriver n&aring;gra enkla inneh&aring;ll f&ouml;r varje omr&aring;de.</p>
<h3>Header<&#47;h3><br />
I headern l&auml;gger vi in loggan som en div. Den h&auml;r diven l&auml;gger vi inom en l&auml;nk som leder till startsidan.<br />
Vi skriver &auml;ven en meny f&ouml;r sidan h&auml;r. Menyn skrivs som en lista.</p>
<h3>Headline<&#47;h3><br />
Headlinen delar vi upp i tv&aring; divar, headline_text och headline_bild. I diven #headline_bild l&auml;gger vi v&aring;r bild.</p>
<h3>Content<&#47;h3></p>
<p>Content fyller vi med lite text som ska finnas i left_box, respektive right_box.</p>
<h3>Footer<&#47;h3></p>
<p>I footern placerar vi texten inom en div, kallad #text.</p>
<p>[html]<br />
<!DOCTYPE html><br />
<html><br />
    <head><br />
    <title>BraBlogg<&#47;title><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css" &#47;>
    <&#47;head><br />
    <body></p>
<header>
<div class="wrapper">
<p>                <a href="index.html">
<div id="logo"><&#47;div> <&#47;a></p>
<div id="menu">
<ul>
<li> <a href="index.html">Hem<&#47;a> <&#47;li>
<li> <a href="#">Om mig<&#47;a> <&#47;li>
<li> <a href="#">Kontakt<&#47;a> <&#47;li><br />
                    <&#47;ul><br />
                <&#47;div></p>
<p>            <&#47;div><br />
        <&#47;header></p>
<div id="headline">
<div class="wrapper">
<div id="headline_text">
<h1>En blogg i m&auml;ngden. <br&#47;><br />
                En riktigt bra en dessutom.<&#47;h1><br />
                <&#47;div></p>
<div id="headline_bild">
                <img src="headline_bild.png" alt="Bra Blogg"&#47;><br />
                <&#47;div><br />
            <&#47;div><br />
        <&#47;div>  </p>
<div class="wrapper">
<div id="content">
<div id="left_box">
<h1>V&auml;lkommen!<&#47;h1></p>
<p>V&auml;lkommen hit, roligt att du tittade f&ouml;rbi...<&#47;p><br />
                <&#47;div></p>
<div id="right_box">
<h2>Arkiv<&#47;h2><br />
                L&auml;nklista...<br />
                <&#47;div></p>
<p>            <&#47;div><br />
        <&#47;div></p>
<footer>
<div class="wrapper">
<div id="text">
<p>Jag som driver bloggen heter...<&#47;p></p>
<p>Email:<&#47;p></p>
<p>Tel:<&#47;p><br />
                <&#47;div></p>
<p>            <&#47;div><br />
        <&#47;footer></p>
<p>    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Slutresultat<&#47;h2><br />
S&aring;h&auml;r borde din hemsida se ut just nu, riktigt f&ouml;rtjusande.<br />
Som du f&ouml;rst&aring;r s&aring; &auml;r det inte klart &auml;n, nu n&auml;r html-delen &auml;r f&auml;rdig ska vi applicera en css-mall p&aring; allt! <a href="&#47;kunnig-css3&#47;">G&aring; till CSS3<&#47;a></p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;html5-slutresultat1.jpg" alt="" title="" width="700" height="467" class="alignnone size-full wp-image-2198" &#47;></p>
