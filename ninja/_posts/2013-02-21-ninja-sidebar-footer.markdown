---
layout: post
status: publish
published: true
title: 12 Sidebar & footer
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3188
wordpress_url: http://dmarby.se/wdk/10-enskilt-inlagg-bilagor-404/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-footer.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3598" &#47;></p>
<h1>Sidebar & Footer<&#47;h1><br />
Nu &auml;r det dags att g&ouml;ra de sista mallarna, de f&ouml;r footern och sidebaren.</p>
<h2>Att registrera sidebars<&#47;h2></p>
<p>I wordpress s&aring; anv&auml;nds termen "sidebar" f&ouml;r att beskriva ett omr&aring;de i ett tema som inneh&aring;ller widgets.<br />
V&aring;rat tema kommer att ha tv&aring; widget-areas, vilket betyder att det kan fungera med b&aring;de 2-kolumns och 3-kolumns teman.</p>
<p>&Ouml;ppna filen <strong>functions.php<&#47;strong> och kopiera in f&ouml;ljande kod:<br />
[php]<br />
&#47;**<br />
 * Registrera widgets-areas och uppdatera sidebaren med standard widgets<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_widgets_init() {<br />
    register_sidebar( array(<br />
        'name' => __( 'Primary Widget Area', 'ninja' ),<br />
        'id' => 'sidebar-1',<br />
        'before_widget' => '<br />
<aside id="%1$s" class="widget %2$s">',<br />
        'after_widget' => '<&#47;aside>',<br />
        'before_title' => '<br />
<h1 class="widget-title">',<br />
        'after_title' => '<&#47;h1>',<br />
    ) );</p>
<p>    register_sidebar( array(<br />
        'name' => __( 'Secondary Widget Area', 'ninja' ),<br />
        'id' => 'sidebar-2',<br />
        'before_widget' => '<br />
<aside id="%1$s" class="widget %2$s">',<br />
        'after_widget' => '<&#47;aside>',<br />
        'before_title' => '<br />
<h1 class="widget-title">',<br />
        'after_title' => '<&#47;h1>',<br />
    ) );<br />
}<br />
add_action( 'widgets_init', 'ninja_widgets_init' );<br />
[&#47;php]</p>
<h2>Sidebar mallen<&#47;h2></p>
<p>&Ouml;ppna filen <strong>sidebar.php<&#47;strong> och kopiera in f&ouml;ljande kod:<br />
[php]<br />
<?php<br />
&#47;**<br />
* The Sidebar containing the main widget areas.<br />
*<br />
* @package Ninja<br />
* @since Ninja 1.0<br />
*&#47;<br />
?></p>
<div id="secondary" class="widget-area" role="complementary">
    <?php do_action( 'before_sidebar' ); ?><br />
    <?php if ( ! dynamic_sidebar( 'sidebar-1' ) ) : ?></p>
<aside id="search" class="widget widget_search">
            <?php get_search_form(); ?><br />
        <&#47;aside></p>
<aside id="archives" class="widget">
<h1 class="widget-title"><?php _e( 'Archives', 'ninja' ); ?><&#47;h1></p>
<ul>
                <?php wp_get_archives( array( 'type' => 'monthly' ) ); ?><br />
            <&#47;ul><br />
        <&#47;aside></p>
<aside id="meta" class="widget">
<h1 class="widget-title"><?php _e( 'Meta', 'ninja' ); ?><&#47;h1></p>
<ul>
                <?php wp_register(); ?></p>
<li><?php wp_loginout(); ?><&#47;li><br />
                <?php wp_meta(); ?><br />
            <&#47;ul><br />
        <&#47;aside></p>
<p>    <?php endif; &#47;&#47; end sidebar widget area ?><br />
<&#47;div><!-- #secondary .widget-area --><br />
[&#47;php]</p>
<p>Nu &auml;r det dags att skriva lite kod f&ouml;r v&aring;ran sekund&auml;ra widget-area. Kopiera in f&ouml;ljande kod efter<br />
[html]<&#47;div><!-- #secondary .widget-area -->[&#47;html]</p>
<p>[php]</p>
<div id="tertiary" class="widget-area" role="supplementary">
     <?php dynamic_sidebar( 'sidebar-2' ); ?><br />
<&#47;div><!-- #tertiary .widget-area --><br />
[&#47;php]</p>
<h2>Footer<&#47;h2></p>
<p>S&aring; var det dags att g&ouml;ra footern. Footern kommer att inneh&aring;lla f&ouml;ljande:</p>
<p><em>- Avslut p&aring; #main content div:en som omsluter sidans inneh&aring;ll.<br />
- En footer-sektion som visar tema-namnet och "Powered by WordPress" frasen.<br />
- wp_footer() som flera Wordpress-plugins utnyttjar.<br />
- Avslut p&aring; v&aring;ran wrapper div, body och html taggar.<&#47;em></p>
<p>&Ouml;ppna filen <strong>footer.php<&#47;strong> och kopiera in f&ouml;ljande kod:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
* Footer<br />
*<br />
* @package Ninja<br />
* @since Ninja 1.0<br />
*&#47;<br />
?></p>
<p><&#47;div><!-- #main .site-main --></p>
<footer id="colophon" class="site-footer" role="contentinfo">
<div class="site-info">
        <?php do_action( 'ninja_credits' ); ?><br />
        <a href="http:&#47;&#47;wordpress.org&#47;" title="<?php esc_attr_e( 'A Semantic Personal Publishing Platform', 'ninja' ); ?>" rel="generator"><?php printf( __( 'Proudly powered by %s', 'ninja' ), 'WordPress' ); ?><&#47;a><br />
        <span class="sep"> | <&#47;span><br />
        <?php printf( __( 'Theme: %1$s by %2$s.', 'ninja' ), 'Ninja', '<a href="http:&#47;&#47;example.org" rel="designer">Exempel<&#47;a>' ); ?><br />
    <&#47;div><!-- .site-info --><br />
<&#47;footer><!-- #colophon .site-footer --><br />
<&#47;div><!-- #page .hfeed .site --></p>
<p><?php wp_footer(); ?></p>
<p><&#47;body><br />
<&#47;html><br />
[&#47;php]</p>
