---
layout: post
status: publish
published: true
title: 07 Styla text & l&auml;nkar
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 223
wordpress_url: http://webbdesignkurser.se/?p=223
date: '2012-07-11 10:09:01 +0200'
date_gmt: '2012-07-11 08:09:01 +0200'
categories:
- Nyb&ouml;rjare
tags: []
comments:
- id: 9225
  author: Jens Matsson
  author_email: hannsonen@hotmail.com
  author_url: ''
  date: '2013-08-28 16:24:18 +0200'
  date_gmt: '2013-08-28 14:24:18 +0200'
  content: "Tjena, undrar vart man ska l&auml;gga in \r\nh1{\r\nfont-family: arial;\r\nfont-size:
    25px;\r\ncolor: #ee6ab3;\r\nline-height: 40px;\r\n}\r\n\r\n&Auml;r det i style.css?
    Och vart is&aring;fall? :)\r\n\r\nGrym guide!"
- id: 9450
  author: Julia
  author_email: snall.julia@gmail.com
  author_url: ''
  date: '2013-09-10 18:40:53 +0200'
  date_gmt: '2013-09-10 16:40:53 +0200'
  content: "Har samma problem som Jens i kommentaren &ouml;ver h&auml;r. Jag har provat
    att l&auml;gga in det p&aring; flera olika st&auml;llen men ingenting fungerar.
    Ska man skapa en ny .css-fil? Alla avsnitt har varit tydliga men f&ouml;rst&aring;r
    tyv&auml;rr inte detta.\r\n\r\nBra guide f&ouml;r &ouml;vrigt!"
- id: 9452
  author: Per
  author_email: per.loov@gmail.com
  author_url: http://webbdesignkurser.se
  date: '2013-09-10 19:42:05 +0200'
  date_gmt: '2013-09-10 17:42:05 +0200'
  content: "Hej!\r\n\r\nCss-koderna ska ligga efter varandra i css-mallen. Det ska
    bara existera en css-mall och det &auml;r viktigt att html-filen l&auml;nkar till
    den mallen precis som vi visat i guiden \"CSS-Grunder\".\r\n\r\nS&auml;g till
    om det fortfarande inte fungerar!"
- id: 14033
  author: Fina
  author_email: josefina.paulson@spray.se
  author_url: ''
  date: '2013-12-26 17:33:01 +0100'
  date_gmt: '2013-12-26 16:33:01 +0100'
  content: "Tack f&ouml;r en helt otroligt bra guide!\r\nJag undrar om det &auml;r
    m&ouml;jligt att ha olika bakgrundsbild till olika sidor p&aring; hemsidan? Jag
    f&ouml;rst&aring;r att man bara kan anv&auml;nda sig av en css-mall, men &auml;r
    det m&ouml;jligt att ha flera \"body-bakgrundsbilder\" att v&auml;lja p&aring;
    i samma css-mall och hur skriver man i s&aring; fall det?"
---
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;styla-text-lankar1.png" alt="styla text l&auml;nkar css" width="695" height="182" class="alignnone size-full wp-image-4049" &#47;></p>
<h1>Styla text och l&auml;nkar med CSS<&#47;h1><br />
Genom att vi har <a href="http:&#47;&#47;webbdesignkurser.se&#47;nyborjare-css-grunder&#47;" target="_blank" title="CSS-grunder">l&auml;nkat en CSS-fil<&#47;a> till v&aring;r index.html s&aring; kan vi nu tilldela objekt p&aring; hemsidan olika stilegenskaper, s&aring; som f&auml;rg, storlek och typsnitt. Det enda vi beh&ouml;ver g&ouml;ra &auml;r att namnge vad vi vill &auml;ndra p&aring; och sedan skriva de olika egenskaperna.<br&#47;><br&#47;></p>
<h2>&Auml;ndra f&auml;rg, typsnitt och storlek<&#47;h2><br />
I <strong>index.html<&#47;strong> skriver vi rubriker med taggarna <em>h1<&#47;em>, <em>h2<&#47;em> och <em>h3<&#47;em>.<br />
Nu vill vi best&auml;mma hur var och en ska se ut p&aring; sidan, det g&ouml;r vi genom att skriva css-egenskaper f&ouml;r varje rubrik.</p>
<h3><strong>Index.html<&#47;strong><&#47;h3><br />
H&auml;r &auml;r koden som vi vill styla. Precis den samma vi anv&auml;nde i HTML-grunder.</p>
<p>[html]<br />
<!DOCTYPE html><br />
<html><br />
    <head><br />
    <meta charset="utf-8"></p>
<link rel="stylesheet" type="text&#47;css" href="style.css">
    <title>Min f&ouml;rsta hemsida<&#47;title><br />
    <&#47;head><br />
    <body></p>
<h1>Min f&ouml;rsta hemsida<&#47;h1></p>
<p><strong>Hej!<&#47;strong> Det h&auml;r &auml;r min f&ouml;rsta hemsida.<br&#47;><br />
        <em>Peace out!<&#47;em><&#47;p></p>
<h2>Underrubrik<&#47;h2></p>
<p><strong>Tjock text<&#47;strong><br />
        <em>Kursiv text<&#47;em><&#47;p><br />
    <&#47;body><br />
<&#47;html><br />
[&#47;html]<br />
<br&#47;></p>
<h3><strong>Style.css<&#47;strong><&#47;h3><br />
Och h&auml;r ligger v&aring;r f&ouml;rsta css-kod. Vi b&ouml;rjar med <strong><br />
<h1><&#47;strong> taggen.</p>
<p><strong>1.<&#47;strong>&nbsp;B&ouml;rja med att markera att det &auml;r&nbsp;<strong>h1<&#47;strong>&nbsp;som v&aring;r stil ska p&aring;verka. Markera sedan att egenskaperna b&ouml;rjar genom att skriva en vinge&nbsp;<strong>{<&#47;strong>&nbsp;f&ouml;r att sedan avsluta alla egenskaper med en slutvinge&nbsp;<strong>}<&#47;strong></p>
<p>[css]<br />
h1{</p>
<p>}<br />
[&#47;css]</p>
<p><strong><&#47;strong><strong>2.&nbsp;<&#47;strong>Fyll vingarna med olika egenskaper.</p>
<p>[css]<br />
h1{<br />
font-family: arial;<br />
font-size: 25px;<br />
color: #ee6ab3;<br />
line-height: 40px;<br />
}<br />
[&#47;css]</p>
<p><img src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-styla-text-lankar.png" alt="Styla text och l&auml;nkar css" width="682" height="147" class="alignnone size-full wp-image-4039" &#47;></p>
<p><em>Anledningen till att all &ouml;vrig text &auml;r oformaterad &auml;r p&aring; grund av v&aring;r Reset CSS.<&#47;em></p>
<h2>Olika egenskaper<&#47;h2><br />
F&ouml;ljande css-egenskaper kan du leka med f&ouml;r att anpassa din text precis som du vill ha den.<br&#47;></p>
<table class="cssprop" style="font-family: arial;">
<tbody>
<tr>
<td width="140px"><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_font_font-family.asp" target="_blank">font-family<&#47;a><&#47;td></p>
<td>Best&auml;mmer teckensnitt.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_font_font-size.asp" target="_blank">font-size<&#47;a><&#47;td></p>
<td>Storleken p&aring; texten.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_color.asp" target="_blank">color<&#47;a><&#47;td></p>
<td>Best&auml;mmer f&auml;rgen.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_font_weight.asp" target="_blank">font-weight<&#47;a><&#47;td></p>
<td>Tjockleken p&aring; texten.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_font_font-style.asp" target="_blank">font-style<&#47;a><&#47;td></p>
<td>Best&auml;mmer italic eller normal text.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_direction.asp" target="_blank">direction<&#47;a><&#47;td></p>
<td>Best&auml;mmer riktningen p&aring; texten.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_letter-spacing.asp" target="_blank">letter-spacing<&#47;a><&#47;td></p>
<td>L&auml;gger till eller tar bort utrymme mellan tecken.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_dim_line-height.asp" target="_blank">line-height<&#47;a><&#47;td></p>
<td>S&auml;tter h&ouml;jden p&aring; texten.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_text-align.asp" target="_blank">text-align<&#47;a><&#47;td></p>
<td>Anger den v&aring;gr&auml;ta justeringen av text.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_text-decoration.asp" target="_blank">text-decoration<&#47;a><&#47;td></p>
<td>Best&auml;mmer dekorationer f&ouml;r text.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="&#47;cssref&#47;pr_text_text-indent.asp" target="_blank">text-indent<&#47;a><&#47;td></p>
<td>Anger indrag av f&ouml;rsta raden.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3.org&#47;Style&#47;Examples&#47;007&#47;text-shadow.en.html" target="_blank">text-shadow<&#47;a><&#47;td></p>
<td>Best&auml;mmer skuggan p&aring; en text.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_text-transform.asp" target="_blank">text-transform<&#47;a><&#47;td></p>
<td>&Auml;ndrar till stora&#47;sm&aring; bokst&auml;ver i en text.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_pos_vertical-align.asp" target="_blank">vertical-align<&#47;a><&#47;td></p>
<td>St&auml;ller in den lodr&auml;ta justeringen av ett element.<&#47;td><br />
<&#47;tr></p>
<tr>
<td><a href="http:&#47;&#47;www.w3schools.com&#47;cssref&#47;pr_text_word-spacing.asp" target="_blank">word-spacing<&#47;a><&#47;td></p>
<td>L&auml;gger till eller tar bort utrymme mellan ord.<&#47;td><br />
<&#47;tr><br />
<&#47;tbody><br />
<&#47;table></p>
<h2>F&auml;rgkarta<&#47;h2><br />
F&ouml;r att hitta r&auml;tt f&auml;rger anv&auml;nder vi en f&auml;rgkarta.<br />
Antingen med hj&auml;lp av photoshop eller med tex <a href="http:&#47;&#47;www.colorpicker.com&#47;". target="_blank">colorpicker.com<&#47;a><br />
Kom ih&aring;g att s&auml;tta ett # tecken innan din f&auml;rgkod.</p>
<h2>S&aring; kan det se ut<&#47;h2><br />
Om vi utg&aring;r fr&aring;n v&aring;r index.html igen s&aring; kan vi skriva ett fullst&auml;ndigt stilschema f&ouml;r alla taggar.</p>
<p>[css]<br />
h1{<br />
font-family: arial;<br />
font-size:25px;<br />
color: #ee6ab3;<br />
line-height:50px;<br />
font-weight:bold;<br />
}</p>
<p>h2{<br />
font-family: arial;<br />
font-size: 18px;<br />
color: #676767;<br />
line-height: 40px;<br />
font-weight: bold;<br />
}</p>
<p>p{<br />
font-family: "Times New Roman";<br />
font-size: 13px;<br />
color: #4f4f4f;<br />
line-height: 20px;<br />
}</p>
<p>strong{<br />
font-weight: bold;<br />
}</p>
<p>em{<br />
font-style: italic;<br />
}<br />
[&#47;css]<br />
<img class="alignnone size-full wp-image-740" title="" src="http:&#47;&#47;webbdesignkurser.se&#47;wp-content&#47;uploads&#47;2012&#47;07&#47;css-html.png" alt="" width="697" height="189" &#47;><br />
<em>Allt blir mycket b&auml;ttre med css, ellerhur?<&#47;em></p>
<h2>L&auml;nkar<&#47;h2><br />
L&auml;nkar skrivs med taggen <strong><a><&#47;strong>, vi kan d&auml;rf&ouml;r g&ouml;ra precis som vi gjorde med <strong><br />
<h1><&#47;strong>, bara att vi byter ut h1 mot a.</p>
<p>[css]<br />
a{<br />
color: #ff6abc;<br />
font-family: arial;<br />
text-decoration: none;<br />
}<br />
[&#47;css]</p>
<p>Med <strong>text-decoration: none;<&#47;strong> kan vi best&auml;mma om vi ska ha understr&auml;ck (underline) eller inte (none).</p>
<h2 id="hover">Hover<&#47;h2><br />
Hover anv&auml;nds f&ouml;r att ber&auml;tta hur det ska se ut n&auml;r vi tar musen &ouml;ver l&auml;nken.</p>
<p>[css]<br />
a:hover{<br />
color: #ff6abc;<br />
font-family: arial;<br />
text-decoration: underline;<br />
}<br />
[&#47;css]</p>
<h2 id="active">Active<&#47;h2><br />
Active fungerar likadant, men anv&auml;nds f&ouml;r stilen man har n&auml;r man <strong>trycker<&#47;strong> p&aring; l&auml;nken.</p>
<h2>L&auml;nkar - Slutresultat<&#47;h2><br />
<a class="examplelink" href="#">Det h&auml;r ger oss denna stilfulla l&auml;nk!<&#47;a></p>
