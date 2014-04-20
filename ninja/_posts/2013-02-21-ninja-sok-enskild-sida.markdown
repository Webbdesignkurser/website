---
layout: post
status: publish
published: true
title: 10 S&ouml;k & enskild sida
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3183
wordpress_url: http://dmarby.se/wdk/05-mall-och-mapp-struktur/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments:
- id: 6469
  author: Kenth Hagstr&ouml;m
  author_email: keha1976@gmail.com
  author_url: ''
  date: '2013-06-11 09:22:49 +0200'
  date_gmt: '2013-06-11 07:22:49 +0200'
  content: "F&ouml;r att f&ouml;rb&auml;ttra WordPress (ganska d&aring;liga) s&ouml;kfunktion
    hittar du lite matnyttig kod f&ouml;r functions.php h&auml;r: \r\n\r\nhttp:&#47;&#47;pastebin.com&#47;g7CkZKZg"
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-search.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3643" &#47;></p>
<h1>S&ouml;k & enskild sida<&#47;h1><br />
Mallarna f&ouml;r s&ouml;k och enskild sida &auml;r b&aring;da viktiga delar av ett wordpress tema, och t&auml;mligen enkla att g&ouml;ra.</p>
<h2>S&ouml;kmallen<&#47;h2></p>
<p>&Ouml;ppna filen <strong>search.php<&#47;strong> och kopiera f&ouml;ljande kod:<br />
[php]<br />
<?php<br />
&#47;**<br />
 * Visa s&ouml;kresultat<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header(); ?></p>
<section id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p>            <?php if ( have_posts() ) : ?></p>
<header class="page-header">
<h1 class="page-title"><?php printf( __( 'Search Results for: %s', 'ninja' ), '<span>' . get_search_query() . '<&#47;span>' ); ?><&#47;h1><br />
                <&#47;header><!-- .page-header --></p>
<p>                <?php ninja_content_nav( 'nav-above' ); ?></p>
<p>                <?php &#47;* Start the Loop *&#47; ?><br />
                <?php while ( have_posts() ) : the_post(); ?></p>
<p>                    <?php get_template_part( 'content', 'search' ); ?></p>
<p>                <?php endwhile; ?></p>
<p>                <?php ninja_content_nav( 'nav-below' ); ?></p>
<p>            <?php else : ?></p>
<p>                <?php get_template_part( 'no-results', 'search' ); ?></p>
<p>            <?php endif; ?></p>
<p>            <&#47;div><!-- #content .site-content --><br />
        <&#47;section><!-- #primary .content-area --></p>
<p><?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
<h2>S&ouml;kforms-mallen<&#47;h2><br />
Nu &auml;r det dags att skapa sj&auml;lva s&ouml;kformen. &Ouml;ppna filen <strong>searchform.php<&#47;strong> och kopiera in f&ouml;ljande kod:<br />
[php]<br />
<?php<br />
&#47;**<br />
 * Visa s&ouml;kformar<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<form method="get" id="searchform" action="<?php echo esc_url( home_url( '&#47;' ) ); ?>" role="search"><br />
        <label for="s" class="assistive-text"><?php _e( 'Search', 'ninja' ); ?><&#47;label><br />
        <input type="text" class="field" name="s" value="<?php echo esc_attr( get_search_query() ); ?>" id="s" placeholder="<?php esc_attr_e( 'Search &amp;hellip;', 'ninja' ); ?>" &#47;><br />
        <input type="submit" class="submit" name="submit" id="searchsubmit" value="<?php esc_attr_e( 'Search', 'ninja' ); ?>" &#47;><br />
    <&#47;form><br />
[&#47;php]</p>
<h2>Enskild sida<&#47;h2></p>
<p>N&auml;sta steg &auml;r att skapa mallen f&ouml;r enskilda sidor. Den liknar single.php f&ouml;r enskilda sidor, som vi gjorde tidigare i kursen. &Ouml;ppna filen <strong>page.php<&#47;strong> och kopiera in f&ouml;ljande kod:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Enskild sida<br />
 *<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p>                <?php while ( have_posts() ) : the_post(); ?></p>
<p>                    <?php get_template_part( 'content', 'page' ); ?></p>
<p>                    <?php comments_template( '', true ); ?></p>
<p>                <?php endwhile; &#47;&#47; end of the loop. ?></p>
<p>            <&#47;div><!-- #content .site-content --><br />
        <&#47;div><!-- #primary .content-area --></p>
<p><?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]<br />
Vi beh&ouml;ver &auml;ven placera lite kod i content-page.php. Kopiera in f&ouml;ljande kod i filen <strong>content-page.php<&#47;strong>:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Mallen f&ouml;r att visa sido-content i page.php<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>></p>
<header class="entry-header">
<h1 class="entry-title"><?php the_title(); ?><&#47;h1><br />
    <&#47;header><!-- .entry-header --></p>
<div class="entry-content">
        <?php the_content(); ?><br />
        <?php wp_link_pages( array( 'before' => '
<div class="page-links">' . __( 'Pages:', 'ninja' ), 'after' => '<&#47;div>' ) ); ?><br />
        <?php edit_post_link( __( 'Edit', 'ninja' ), '<span class="edit-link">', '<&#47;span>' ); ?><br />
    <&#47;div><!-- .entry-content --><br />
<&#47;article><!-- #post-<?php the_ID(); ?> --><br />
[&#47;php]</p>
