---
layout: post
status: publish
published: true
title: 03 HTML-struktur
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3187
wordpress_url: http://dmarby.se/wdk/09-index/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;html-struktur.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3395" &#47;></p>
<h1>HTML-struktur<&#47;h1></p>
<h2>M&aring;len med en HTML-struktur<&#47;h2><br />
N&auml;r du g&ouml;r en hemsida b&ouml;r du ha tv&aring; m&aring;l i &aring;tanke: ren kod och meningsful kod. Dvs, att anv&auml;nda s&aring; lite html-taggar som m&ouml;jligt, och att se till s&aring; att taggarna symboliserar hur de ser ut, tex class="sidebar" ist&auml;llet f&ouml;r class="left".</p>
<p>N&auml;r du skapar ett wordpress tema (eller ett tema f&ouml;r vilket annat CMS som helst), kommer du att beh&ouml;va finna en balans mellan ren kod med v&auml;ldigt lite struktur, och n&aring;got som kallas <a href="http:&#47;&#47;www.456bereastreet.com&#47;lab&#47;web_development_mistakes&#47;sv&#47;" target="_blank">Divitis<&#47;a> (att ha f&ouml;r m&aring;nga on&ouml;digt div-element i koden). Med andra ord, f&ouml;r mycket meningsl&ouml;s struktur.</p>
<p>HTML5 har gjort det enklare att skapa meningsfull kod, d&aring; det nu finns struktur-taggar f&ouml;r header, nav, footer och liknande. Dessa nya element liknar div taggar, men till&aring;ter oss samtidigt att g&ouml;ra v&aring;ran HTML mer beskrivande.</p>
<h2>HTML-strukturen f&ouml;r ditt Wordpress tema<&#47;h2><br />
S&aring; h&auml;r kan en struktur f&ouml;r bodyn i ditt wordpress-tema se ut.</p>
<p>[html]
<div id="page" class="hfeed site">
<header id="masthead" class="site-header" role="banner">
<hgroup><&#47;hgroup></p>
<nav role="navigation" class="site-navigation main-navigation"><&#47;nav><!-- .site-navigation .main-navigation --><br />
     <&#47;header><!-- #masthead .site-header --></p>
<div id="main" class="site-main">
<div id="primary" class="content-area">
<div id="content" class="site-content">
               <&#47;div><!-- #content .site-content --><&#47;div><br />
          <!-- #primary .content-area --></p>
<div id="secondary" class="widget-area">
          <&#47;div><!-- #secondary .widget-area --></p>
<div id="tertiary" class="widget-area">
          <&#47;div><!-- #tertiary .widget-area --><&#47;div><br />
     <!-- #main .site-main --></p>
<footer id="colophon" class="site-footer" role="contentinfo">
<div class="site-info">
          <&#47;div><!-- .site-info --><br />
     <&#47;footer><!-- #colophon .site-footer --><br />
<&#47;div> <!-- #page .hfeed .site --><br />
[&#47;html]</p>
<h2>En snabb genomg&aring;ng av wordpress-temats HTML<&#47;h2><br />
<img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;filstruktur.png" alt="" width="695" height="683" class="alignnone size-full wp-image-3563" &#47;></p>
<p>Kolla p&aring; bilden ovanf&ouml;r. Ju djupare ett block &auml;r, desto djupare &auml;r det begravt. Hur dessa block &auml;r arrangerade styrs till stor del av CSS, n&aring;got som vi kommer att g&aring; igenom i ett senare kapitel.<br />
Du kan ocks&aring; modifiera HTML strukturen f&ouml;r att b&auml;ttre passa dina behov. F&ouml;r exempel s&aring; kan du flytta navigations blocket utanf&ouml;r header blocket, eller flytta en av widget-ytorna till footern.</p>
<p>Vi b&ouml;rjar med class-attributen p&aring; wrappern, hfeed. Hfeed &auml;r en del av n&aring;got som kallas "hatom microformat schema". Detta g&ouml;r s&aring; att n&auml;r vi l&auml;gger till en hfeed class p&aring; v&aring;ran sida ber&auml;ttar det f&ouml;r alla maskiner som l&auml;ser v&aring;ran sida (till exempel en s&ouml;kmotor-robot) att v&aring;ran sida publicerar syndikerat inneh&aring;ll, s&aring; som bloggposter. Du kommer att se m&aring;nga class-namn som detta.</p>
<p>Om vi kollar p&aring; strukturen i headern och footern, s&aring; finns d&auml;r n&aring;gra av de nya HTML5 taggarna, header respektive footer. Dessa taggar anv&auml;nds f&ouml;r att beskriva de st&ouml;rsta sektionerna av dokumentet.<br />
I huvuddelen av HTML-koden, l&auml;gg m&auml;rke till att v&aring;ra widget-omr&aring;den kommer efter v&aring;rat inneh&aring;llsomr&aring;de, och att v&aring;rat inneh&aring;ll ligger inne i en container-div, med class-namnet "content-area". Detta g&ouml;r att v&aring;rat huvudinneh&aring;ll kommer f&ouml;re sidebaren f&ouml;r en s&ouml;kmotor, och att vi med hj&auml;lp av n&aring;gra f&aring; rader CSS kan g&ouml;ra om temat till ett en eller tv&aring;kolumns tema. </p>
<p>Denna HTML-strukturen g&ouml;r att ditt wordpress-tema &auml;r framtidss&auml;kert, och ger dig m&ouml;jligheten att enkelt utnyttja CSS.</p>
