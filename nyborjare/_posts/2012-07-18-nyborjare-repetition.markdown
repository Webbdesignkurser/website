---
layout: post
status: publish
published: true
title: 11 Repetition
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 1000
wordpress_url: http://webbdesignkurser.se/?p=1000
date: '2012-07-18 15:05:15 +0200'
date_gmt: '2012-07-18 13:05:15 +0200'
categories:
- Nyb&ouml;rjare
tags: []
comments:
- id: 3966
  author: Lage
  author_email: laymachine@gmail.com
  author_url: ''
  date: '2013-04-17 18:37:53 +0200'
  date_gmt: '2013-04-17 16:37:53 +0200'
  content: "Riktigt grymt att ni l&auml;gger upp kurser h&auml;r helt gratis! Kommer
    definitivt att k&ouml;ra igenom alla, perfekt f&ouml;r mig som nyb&ouml;rjare.
    Skulle dock g&auml;rna se lite mer djupg&aring;ende f&ouml;rklaringar. Till exempel
    vad allt g&ouml;r i css koden som jag blev tillsagd att bara kopiera. Ibland &auml;r
    det &auml;ven lite oklart vart man skall skriva in koden och varf&ouml;r. \r\n\r\nMen
    men, det &auml;r ju gratis och det &auml;r bra, vad mer kan man egentligen f&ouml;rv&auml;nta
    sig :)"
- id: 6005
  author: Anton
  author_email: rainbow-1337@live.com
  author_url: http://vadåwebbplats?
  date: '2013-05-31 14:58:38 +0200'
  date_gmt: '2013-05-31 12:58:38 +0200'
  content: kan man anv&auml;nda vanliga "Anteckningar" som finns i datorn fr&aring;n
    b&ouml;rjan i windows7?
- id: 6007
  author: Per
  author_email: per.loov@gmail.com
  author_url: http://www.webbdesignkurser.se
  date: '2013-05-31 15:16:54 +0200'
  date_gmt: '2013-05-31 13:16:54 +0200'
  content: Absolut!
- id: 10873
  author: Elna
  author_email: elna_osterhof@hotmail.com
  author_url: ''
  date: '2013-11-12 18:42:16 +0100'
  date_gmt: '2013-11-12 17:42:16 +0100'
  content: "hej toppen hemsida!\r\nn&auml;r jag g&ouml;r den h&auml;r test hemsidan
    s&aring; kopplas inte css mallen med html texten fast jag gjort exakt som det
    st&aring;r, vet inte vad som &auml;r fel"
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;repitition.png" alt="" title="" width="695" height="279" class="alignnone size-full wp-image-1040" &#47;><br&#47;><br&#47;></p>
<h1>Repetition<&#47;h1></p>
<p>Vi t&auml;nkte ta en snabb genomg&aring;ng p&aring; vad vi har g&aring;tt igenom, och vad passar inte b&auml;ttre d&aring; &auml;n att verkligen skapa en hel hemsida? <a href="&#47;nyborjare-slutresultat&#47;">H&auml;r hittar du slutresultatet<&#47;a><&#47;p><br&#47;><br&#47;></p>
<h2>S&aring; h&auml;r t&auml;nkte vi<&#47;h2><br />
<img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;repetition-f&ouml;rklaring1.png" alt="" title="" width="695" height="389" class="alignnone size-full wp-image-1051" &#47;></p>
<h2>Grunden<&#47;h2><br />
Vi b&ouml;rjar med html-grunden, samt en div f&ouml;r v&aring;r <a href="&#47;nyborjare-wrapper&#47;" target="_blank">Wrapper<&#47;a> och en <strong>#content<&#47;strong> som vi sedan ska f&auml;rga vit.<br />
[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<div id="wrapper">
<div id="content">
<p>        <&#47;div><br />
        <&#47;div><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Headern<&#47;h2><br />
I headern l&auml;gger vi v&aring;r logga. Eftersom v&aring;r logga ska fungera som en l&auml;nk till startsidan l&auml;gger vi den inom en a-tagg.<br />
[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<div id="wrapper">
<div id="content">
<div id="header">
                <a href="index.html"><img src="logga.png"&#47;><&#47;a><br />
            <&#47;div></p>
<p>        <&#47;div><br />
        <&#47;div><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Boxarna<&#47;h2><br />
Vi ska ha tv&aring; boxar, en f&ouml;r texten och en f&ouml;r menyn. Boxarna l&auml;gger vi i en div som vi har d&ouml;pt till <strong>#boxar<&#47;strong>.<br />
[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<div id="wrapper">
<div id="content">
<div id="header">
                <a href="index.html"><img src="logga.png"&#47;><&#47;a><br />
            <&#47;div></p>
<div id="boxar">
<div id="left_box">
                <img src="bilden.png"&#47;></p>
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen.<&#47;p><br />
                <&#47;div></p>
<div id="right_box">
<h1>Min meny<&#47;h1><br />
                <&#47;div><br />
            <&#47;div>      </p>
<p>        <&#47;div><br />
        <&#47;div><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Menyn<&#47;h2><br />
Menyn ska ligga inom <strong>#right-box<&#47;strong> och skrivs som en <a href="&#47;nyborjare-listor-tabeller&#47;" target="_blank">lista<&#47;a>.<br />
[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<div id="wrapper">
<div id="content">
<div id="header">
                <a href="index.html"><img src="logga.png"&#47;><&#47;a><br />
            <&#47;div></p>
<div id="boxar">
<div id="left_box">
                <img src="bilden.png"&#47;></p>
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen.<&#47;p><br />
                <&#47;div></p>
<div id="right_box">
<h1>Min meny<&#47;h1></p>
<ul>
<li><a href="#">Hem<&#47;a><&#47;li>
<li><a href="#">Om mig<&#47;a><&#47;li>
<li><a href="#">Kontakt<&#47;a><&#47;li><br />
                <&#47;ul><br />
                <&#47;div><br />
            <&#47;div></p>
<p>        <&#47;div><br />
        <&#47;div><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2>Footer<&#47;h2><br />
Footern &auml;r det vi har l&auml;ngst ner, en copyright-text till exempel. Vi l&auml;gger den diven l&auml;ngst ner <strong>efter<&#47;strong> v&aring;r #wrapper, men <strong>innan<&#47;strong> Body.<br />
[html]<br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<div id="wrapper">
<div id="content">
<div id="header">
                <a href="index.html"><img src="logga.png"&#47;><&#47;a><br />
            <&#47;div></p>
<div id="boxar">
<div id="left_box">
                <img src="bilden.png"&#47;></p>
<h1>V&auml;lkommen!<&#47;h1></p>
<p>K&auml;nn dig v&auml;lkommen.<&#47;p><br />
                <&#47;div></p>
<div id="right_box">
<h1>Min meny<&#47;h1></p>
<ul>
<li><a href="#">Hem<&#47;a><&#47;li>
<li><a href="#">Om mig<&#47;a><&#47;li>
<li><a href="#">Kontakt<&#47;a><&#47;li><br />
                <&#47;ul><br />
                <&#47;div><br />
            <&#47;div></p>
<p>        <&#47;div><br />
        <&#47;div></p>
<div id="footer">
<p>Copyright Min f&ouml;rsta hemsida 2012<&#47;p><br />
            <&#47;div>           </p>
<p>    <&#47;body><br />
<&#47;html><br />
[&#47;html]</p>
<h2 id="doctype">Doctype<&#47;h2><br />
Sista grejen vi ska l&auml;gga till i v&aring;rt html-dokument kallas Doctype. Det h&auml;r ska l&auml;ggas <strong>l&auml;ngst upp<&#47;strong> i dokumentet. Doctype hj&auml;lper webbl&auml;saren att ber&auml;tta vilken version av html som vi skrev hemsidan i.<br />
Att hoppa &ouml;ver doctype kan resultera i att webbl&auml;saren (oftast g&auml;ller det h&auml;r Explorer) f&ouml;rst&ouml;r hemsidans layout.<br />
[html]<br />
<!DOCTYPE HTML><br />
[&#47;html]</p>
<h2>Style.css<&#47;h2><br />
Nu ska vi skriva css-filen. Vi b&ouml;rjar med bakgrunden som ska upprepas.<br />
(Kom ih&aring;g att v&aring;r <a href="&#47;nyborjare-css-grunder&#47;#reset_css" target="_blank">reset CSS<&#47;a> ska finnas med innan vi b&ouml;rjar skriva CSS:en)<br />
[css]<br />
body {<br />
background: url(bakgrund.png);<br />
}<br />
[&#47;css]</p>
<h2>Text stilarna<&#47;h2><br />
[css]<br />
h1{<br />
font-family: arial;<br />
font-size:25px;<br />
color: #505050;<br />
line-height:45px;<br />
margin-top:10px;<br />
font-weight:bold;<br />
}</p>
<p>p{<br />
font-family: "Times New Roman";<br />
font-size:14px;<br />
color: #2a2a2a;<br />
line-height:23px;<br />
}<br />
[&#47;css]</p>
<h2>#Wrapper & #Content<&#47;h2><br />
I wrappern s&auml;tter vi bredden p&aring; <strong>960px<&#47;strong>. V&aring;r content ska vi f&auml;rga vit med marginal runt om. Vi vill &auml;ven f&aring; till rundade h&ouml;rn p&aring; v&aring;r Content-ruta. Det h&auml;r fixar man med <strong>border-radius: 10px; <&#47;strong><br />
[css]<br />
#wrapper{<br />
width:960px;<br />
margin-right:auto;<br />
margin-left:auto;<br />
}</p>
<p>#content{<br />
background: #f8f8f8;<br />
padding:20px;<br />
margin-top:50px;<br />
border-radius: 10px;<br />
}<br />
[&#47;css]</p>
<h2>#Header<&#47;h2><br />
V&aring;r header ska vara <strong>relative<&#47;strong> och <strong>60px<&#47;strong> h&ouml;g.<br />
[css]<br />
#header{<br />
position: relative;<br />
height:60px;<br />
}<br />
[&#47;css]</p>
<h2>#Boxar<&#47;h2><br />
Boxarna skriver vi som vi gjorde i kapitlet <a href="&#47;nyborjare-div-class&#47;">Div & Class<&#47;a>. V&aring;r v&auml;nstra box ska vara <strong>700px<&#47;strong> bred medan v&aring;r h&ouml;gra kan f&ouml;rbli utan n&aring;gon bredd. Den h&ouml;gra ska d&auml;remot ligga <strong>50px<&#47;strong> fr&aring;n v&auml;nster s&aring; att vi f&aring;r en marginal mellan boxarna.<br />
[css]<br />
#boxar{<br />
overflow:auto;<br />
width:960px;<br />
}</p>
<p>#left_box{<br />
float:left;<br />
width:700px;<br />
}</p>
<p>#right_box{<br />
float:left;<br />
margin-left:50px;<br />
}<br />
[&#47;css]</p>
<h2>Menyn<&#47;h2><br />
Vi vill styla menyn specifikt f&ouml;r v&aring;ra list-taggar, det g&ouml;r vi genom att f&ouml;rst skriva <strong>li<&#47;strong> och sen <strong>a<&#47;strong>.<br />
[css]<br />
li a{<br />
color:#c65497;<br />
text-decoration: none;<br />
font-family:arial;<br />
font-size:13px;<br />
line-height: 25px;<br />
}</p>
<p>li a:hover{<br />
color:#c65497;<br />
text-decoration: underline;<br />
font-family:arial;<br />
font-size:13px;<br />
line-height: 25px;<br />
}<br />
[&#47;css]</p>
<h2>#Footer<&#47;h2><br />
Footern ska ligga 20px nedanf&ouml;r #content, samt centrera v&aring;ran text.<br />
[css]<br />
#footer{<br />
position: relative;<br />
margin-top:20px;<br />
text-align: center;<br />
}<br />
[&#47;css]</p>
<h2>F&auml;rdigt!<&#47;h2><br />
Dubbelkolla att hemsidan ser bra ut genom att h&ouml;gerklicka p&aring; index.html och &ouml;ppna i webbl&auml;saren. <a href="&#47;nyborjare-slutresultat&#47;">S&aring; h&auml;r blev v&aring;rat exempel<&#47;a><br&#47;><br />
<img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;repitition.png" alt="" title="" width="695" height="279" class="alignnone size-full wp-image-1040" &#47;></p>
