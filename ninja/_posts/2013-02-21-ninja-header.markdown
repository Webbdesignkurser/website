---
layout: post
status: publish
published: true
title: 06 Header
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3179
wordpress_url: http://dmarby.se/wdk/01-inledning/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-header1.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3596" &#47;></p>
<h1>Header<&#47;h1><br />
Nu &auml;r det dags att &auml;ndra i header.php (d&auml;r den &ouml;vre delen av hemsidan ligger) och validera ditt tema med en HTML doctype. Just nu s&aring; &auml;r ditt Wordpress tema tekniskt sett ogiltigt, d&aring; det inte har en doctype som ber&auml;ttar f&ouml;r webbl&auml;saren vad det &auml;r. Vi kommer att anv&auml;nda HTML5 doctypen.</p>
<p>&Ouml;ppna <strong>header.php<&#47;strong> och kopiera in f&ouml;ljande kod l&auml;ngst upp:<br />
[php]<br />
<?php<br />
&#47;**<br />
 * Headern<br />
 *<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 2.0<br />
 *&#47;<br />
?><!DOCTYPE html><br />
[&#47;php]<br />
Vi ska &auml;ven l&auml;gga in en html-tagg med n&aring;gra attribut. Vi g&ouml;r &auml;ven s&aring; att vi kan, beroende p&aring; om anv&auml;ndaren k&ouml;r IE8 eller inte, anv&auml;nda olika CSS stilar.</p>
<p>L&auml;gg till f&ouml;ljande i header.php, nedanf&ouml;r doctype:<br />
[php]<br />
<!--[if IE 8]><br />
<html id="ie8" <?php language_attributes(); ?>><br />
<![endif]--><br />
<!--[if !(IE 8) ]><!--><br />
<html <?php language_attributes(); ?>><br />
<!--<![endif]--><br />
[&#47;php]</p>
<p>Nu ska vi fylla p&aring; i head-sektionen, med bland annat meta-data om hemsidan.<br />
Kopiera in f&ouml;ljande kod under koden som du just kopierade in:<br />
[php]<br />
<head><br />
<meta charset="<?php bloginfo( 'charset' ); ?>" &#47;><br />
<meta name="viewport" content="width=device-width" &#47;><br />
<title><?php<br />
&#47;*<br />
* Annan <title> beroende p&aring; vad f&ouml;r sida som visas<br />
*&#47;<br />
global $page, $paged;</p>
<p>wp_title( '|', true, 'right' );</p>
<p>&#47;&#47; Visa bloggnamnet<br />
bloginfo( 'name' );</p>
<p>&#47;&#47; Visa bloggens beskrivning om nuvarande sida &auml;r startsidan.<br />
$site_description = get_bloginfo( 'description', 'display' );<br />
if ( $site_description &amp;&amp; ( is_home() || is_front_page() ) )<br />
echo " | $site_description";</p>
<p>&#47;&#47;  L&auml;gg till ett sidnummer p&aring; sidan om det beh&ouml;vs<br />
if ( $paged >= 2 || $page >= 2 )<br />
echo ' | ' . sprintf( __( 'Page %s', 'shape' ), max( $paged, $page ) );</p>
<p>?><&#47;title></p>
<link rel="profile" href="http:&#47;&#47;gmpg.org&#47;xfn&#47;11" &#47;>
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" &#47;><br />
<!--[if lt IE 9]><br />
<script src="<?php echo get_template_directory_uri(); ?>&#47;js&#47;html5.js" type="text&#47;javascript"><&#47;script><br />
<![endif]--><br />
<?php wp_head(); ?><br />
<&#47;head></p>
<p><body <?php body_class(); ?>><br />
[&#47;php]<br />
<br&#47;></p>
<h2>The header section<&#47;h2></p>
<p>I <strong>header.php<&#47;strong>, g&aring; ner till hgroup-taggarna, och ers&auml;tt dem med f&ouml;ljande:<br />
[php]</p>
<hgroup>
<h1 class="site-title"><a href="<?php echo home_url( '&#47;' ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?><&#47;a><&#47;h1></p>
<h2 class="site-description"><?php bloginfo( 'description' ); ?><&#47;h2><br />
<&#47;hgroup><br />
[&#47;php]</p>
<p>Efter nav-taggen, l&auml;gg till f&ouml;ljande:</p>
<p>[php]</p>
<h1 class="assistive-text"><?php _e( 'Menu', 'ninja' ); ?><&#47;h1></p>
<div class="assistive-text skip-link"><a href="#content" title="<?php esc_attr_e( 'Skip to content', 'ninja' ); ?>"><?php _e( 'Skip to content', 'ninja' ); ?><&#47;a><&#47;div><br />
[&#47;php]</p>
<p>Efter det l&auml;gger vi till menyn genom att skriva:</p>
<p>[php]<br />
<?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?><br />
[&#47;php]</p>
<p>Din nav-sektion b&ouml;r nu se ut som f&ouml;ljer:</p>
<p>[php]</p>
<nav role="navigation" class="site-navigation main-navigation">
<h1 class="assistive-text"><?php _e( 'Menu', 'ninja' ); ?><&#47;h1></p>
<div class="assistive-text skip-link"><a href="#content" title="<?php esc_attr_e( 'Skip to content', 'ninja' ); ?>"><?php _e( 'Skip to content', 'ninja' ); ?><&#47;a><&#47;div><br />
     <?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?><br />
<&#47;nav><!-- .site-navigation .main-navigation --><br />
[&#47;php]</p>
<p>&Ouml;ppna <strong>functions.php<&#47;strong> och l&auml;gg till f&ouml;ljande i botten av den:</p>
<p>[php]<br />
&#47;**<br />
 * Script och stilmallar<br />
 *&#47;<br />
function ninja_scripts() {<br />
    wp_enqueue_style( 'style', get_stylesheet_uri() );</p>
<p>    if ( is_singular() &amp;&amp; comments_open() &amp;&amp; get_option( 'thread_comments' ) ) {<br />
        wp_enqueue_script( 'comment-reply' );<br />
    }<br />
}<br />
add_action( 'wp_enqueue_scripts', 'ninja_scripts' );<br />
[&#47;php]</p>
<p>Detta laddar n&aring;gra script, och v&aring;ran stylesheet.</p>
