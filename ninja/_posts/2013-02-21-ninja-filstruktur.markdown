---
layout: post
status: publish
published: true
title: 04 Filstruktur
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3191
wordpress_url: http://dmarby.se/wdk/13-arkiv/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;mapp-mall-struktur.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3399" &#47;></p>
<h1>Filstruktur<&#47;h1></p>
<p>Medan ett minimalt wordpress tema egentligen bara beh&ouml;ver en index.php och en style.css fil (eller bara en style.css fil om det &auml;r ett undertema) s&aring; beh&ouml;ver de flesta n&aring;got mer solitt.</p>
<p>L&aring;t oss skapa de filer och mappar som beh&ouml;vs f&ouml;r v&aring;rat exempeltema.</p>
<p>Skapa en mapp i <em>..&#47;wp-content&#47;themes<&#47;em> p&aring; FTP f&ouml;r ditt tema. Jag kommer anv&auml;nda mapp-namnet "ninja" d&aring; det &auml;r namnet p&aring; v&aring;rat exempeltema, men det kan vara vad som helst. Skapa f&ouml;ljande mappar och tomma filer:</p>
<style>li p{line-height: 10px;<&#47;style></p>
<ul>
<li>
<p>&bull;&nbsp; inc (mapp)<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; js (mapp)<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; layouts (mapp)<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; 404.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; archive.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; comments.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; content.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; content-aside.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; content-page.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; content-single.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; footer.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; functions.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; header.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; index.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; no-results.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; page.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; search.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; searchform.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; sidebar.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; single.php<&#47;p><&#47;li></p>
<li>
<p>&bull;&nbsp; style.css<&#47;p><&#47;li><br />
<&#47;ul><br&#47;></p>
<h2>Style.css<&#47;h2><br />
Vi b&ouml;rjar med filen i botten av listan, <strong>style.css<&#47;strong>. Det f&ouml;rsta vi m&aring;ste g&ouml;ra &auml;r att skapa en sektion i toppen av filen, med vad som kallas "CSS kommentarer" (&#47;* och *&#47;). I den s&aring; l&auml;gger vi informationen som ber&auml;ttar f&ouml;r Wordpress vad temat heter. Utan detta s&aring; kan inte Wordpress hitta ditt tema.</p>
<p>Jag anv&auml;nder "Ninja" som temats namn, men det kan vara precis vad som helst. Fyll i de andra f&auml;lten s&aring; som author name, URL, och dylikt med din egna information.</p>
<p>[code]<br />
&#47;*<br />
Theme Name: Ninja<br />
Theme URI: http:&#47;&#47;webbdesignkurser.se<br />
Author: Webbdesignkurser<br />
Author URI: http:&#47;&#47;webbdesignkurser.se<br />
Description: Ett exempeltema f&ouml;r Wordpress.<br />
Version: 1.0<br />
*&#47;<br />
[&#47;code]</p>
<p>L&aring;t oss g&aring; igenom ett par av dessa f&ouml;r att fyrtydliga vad de inneb&auml;r.</p>
<p><em>Theme Name - Tema<br />
Theme URI &ndash; URL:et d&auml;r ditt tema anv&auml;nds.<br />
Author &ndash; Ditt namn<br />
Author URI &ndash; Din hemsida.<br />
Description &ndash; En beskrivning av vad temat &auml;r.<br />
Version &ndash; Temats nuvarande version.<&#47;em></p>
<p>N&auml;r du har gjort detta kan du fr&aring;n Wordpress Admin-panel g&aring; till <em>Utseende -> Teman<&#47;em> och aktivera temat. </p>
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-aktivera-tema1.png" alt="" width="695" height="227" class="alignnone size-full wp-image-3582" &#47;></p>
<h2>Att bygga HTML-strukturen<&#47;h2><br />
Nu kan vi anv&auml;nda HTML strukturen fr&aring;n v&aring;rat f&ouml;rra kapitel. Men f&ouml;rst g&aring;r vi igenom hur Wordpress anv&auml;nder mallar. Vi kommer i princip dela upp HTML-stukturen i olika filer f&ouml;r att sedan s&auml;tta ihop den igen.</p>
<p>Wordpress beh&ouml;ver egentligen bara en mall, index.php. Vi kommer att anv&auml;nda flera mallar som kan anv&auml;ndas ist&auml;llet f&ouml;r index.php i vissa situationer, tex f&ouml;r enskilda poster, arkiv, sidor, osv, men i b&ouml;rjan &auml;r index.php det enda som vi beh&ouml;ver.</p>
<p>Index.php och de andra mallarna &auml;r vad som skapar sidorna vi ser i v&aring;ra mallar. De &auml;r filer med HTML och PHP som tillsammans genererar HTML, som i slut&auml;ndan genererar hemsidan.</p>
<h2>Header.php and Footer.php<&#47;h2></p>
<p>Nu ska vi klippa ut den &ouml;vre och undre delen fr&aring;n HTML-strukturen vi jobbade p&aring; i f&ouml;rra kapitlet f&ouml;r att sedan spara ner dom i tv&aring; filer.</p>
<p>Kopiera allt till och med [html]
<div id="main">[&#47;html] till <strong>header.php<&#47;strong> och spara filen. Det b&ouml;r se ut s&aring;h&auml;r:<br />
[html]</p>
<div id="page" class="hfeed site">
<header id="masthead" class="site-header" role="banner">
<hgroup><&#47;hgroup></p>
<nav role="navigation" class="site-navigation main-navigation"><&#47;nav><!-- .site-navigation .main-navigation --><br />
     <&#47;header><!-- #masthead .site-header --></p>
<div id="main" class="site-main">
[&#47;html]<br />
Kopiera nu allt efter [html]<&#47;div><!&ndash; #main &ndash;>[&#47;html] (kopiera &auml;ven den raden) till <strong>footer.php<&#47;strong>. Det b&ouml;r se ut s&aring;h&auml;r:<br />
[html]<br />
     <&#47;div><!-- #main .site-main --></p>
<footer id="colophon" class="site-footer" role="contentinfo">
<div class="site-info"><&#47;div><!-- .site-info --><br />
     <&#47;footer><!-- #colophon .site-footer --><br />
<&#47;div><!-- #page .hfeed .site --><br />
[&#47;html]</p>
<h2>Sidebar.php<&#47;h2></p>
<p>Kopiera det f&ouml;ljande fr&aring;n v&aring;ran HTML till sidebar.php. Det b&ouml;r se ut s&aring;h&auml;r:</p>
<p>[html]</p>
<div id="secondary" class="widget-area">
<&#47;div><!-- #secondary .widget-area --></p>
<div id="tertiary" class="widget-area">
<&#47;div><!-- #tertiary .widget-area --><br />
[&#47;html]</p>
<h2>Index.php<&#47;h2></p>
<p>Kopiera nu allt fr&aring;n v&aring;ran HTML-struktur, det vill s&auml;ga det lilla som &auml;r kvar, till index.php.<br />
Det b&ouml;r se ut s&aring;h&auml;r:</p>
<p>[html]</p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
    <&#47;div><!-- #content .site-content --><br />
<&#47;div><!-- #primary .content-area --><br />
[&#47;html]</p>
<p>Nu beh&ouml;ver vi g&ouml;ra s&aring; att headern, footern, och sidebaren anv&auml;nds.<br />
I b&ouml;rjan av <strong>index.php<&#47;strong>, innan n&aring;got annat, l&auml;gg till f&ouml;ljande kod:</p>
<p>[php]<br />
<?php get_header(); ?><br />
[&#47;php]</p>
<p>Och i slutet av <strong>index.php<&#47;strong>, l&auml;gg till f&ouml;ljande:</p>
<p>[php]<br />
<?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
<p>Nu har vi den f&ouml;rsta filen som Wordpress beh&ouml;ver klar, index.php. Det vi har gjort &auml;r att dela upp HTML-strukturen i header, sidebar och footer f&ouml;r att sedan h&auml;mta tillbaka dom i index.php. </p>
<p><strong>K&auml;nns det on&ouml;digt?<&#47;strong> Inte alls, det h&auml;r g&ouml;r det m&ouml;jligt f&ouml;r oss att senare kunna &auml;ndra alla sidors sidhuvud bara genom att &auml;ndra i <em>header.php<&#47;em> till exempel.</p>
