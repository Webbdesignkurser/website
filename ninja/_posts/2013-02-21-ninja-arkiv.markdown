---
layout: post
status: publish
published: true
title: 11 Arkiv
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3184
wordpress_url: http://dmarby.se/wdk/06-temafunktioner/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-arkiv.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3620" &#47;></p>
<h1>Arkiv<&#47;h1><br />
Det som archive.php g&ouml;r (och alla dess relaterade mallar) &auml;r att lista de olika kategorier som inl&auml;gg och poster har tilldelats. Till exempel efter datum, f&ouml;rfattare, kategori eller taggar. Det &auml;r allts&aring; r&auml;tt s&aring; likt index.php.</p>
<p>Om du vill ha separata mallar f&ouml;r varje typ av kategori s&aring; kan du skapa en fil f&ouml;r varje typ av kategori, till exempel: category.php, author.php och tag.php. Annars s&aring; f&ouml;ruts&auml;tter wordpress att det &auml;r archive.php som anv&auml;nds.<br&#47;><br&#47;></p>
<h2>Arkivmallen<&#47;h2></p>
<p>&Ouml;ppna nu <strong>archive.php<&#47;strong> och klistra in f&ouml;ljande:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
* Mallen f&ouml;r att visa arkiv-sidor.<br />
*<br />
* L&auml;s mer: http:&#47;&#47;codex.wordpress.org&#47;Template_Hierarchy<br />
*<br />
* @package Ninja<br />
* @since Ninja 1.0<br />
*&#47;</p>
<p>get_header(); ?></p>
<section id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p><?php if ( have_posts() ) : ?></p>
<header class="page-header">
<h1 class="page-title">
        <?php<br />
            if ( is_category() ) {<br />
                printf( __( 'Category Archives: %s', 'ninja' ), '<span>' . single_cat_title( '', false ) . '<&#47;span>' );</p>
<p>            } elseif ( is_tag() ) {<br />
                printf( __( 'Tag Archives: %s', 'ninja' ), '<span>' . single_tag_title( '', false ) . '<&#47;span>' );</p>
<p>            } elseif ( is_author() ) {<br />
                &#47;* Queue the first post, that way we know<br />
                 * what author we're dealing with (if that is the case).<br />
                *&#47;<br />
                the_post();<br />
                printf( __( 'Author Archives: %s', 'ninja' ), '<span class="vcard"><a class="url fn n" href="' . get_author_posts_url( get_the_author_meta( "ID" ) ) . '" title="' . esc_attr( get_the_author() ) . '" rel="me">' . get_the_author() . '<&#47;a><&#47;span>' );<br />
                &#47;* Since we called the_post() above, we need to<br />
                 * rewind the loop back to the beginning that way<br />
                 * we can run the loop properly, in full.<br />
                 *&#47;<br />
                rewind_posts();</p>
<p>            } elseif ( is_day() ) {<br />
                printf( __( 'Daily Archives: %s', 'ninja' ), '<span>' . get_the_date() . '<&#47;span>' );</p>
<p>            } elseif ( is_month() ) {<br />
                printf( __( 'Monthly Archives: %s', 'ninja' ), '<span>' . get_the_date( 'F Y' ) . '<&#47;span>' );</p>
<p>            } elseif ( is_year() ) {<br />
                printf( __( 'Yearly Archives: %s', 'ninja' ), '<span>' . get_the_date( 'Y' ) . '<&#47;span>' );</p>
<p>            } else {<br />
                _e( 'Archives', 'ninja' );</p>
<p>            }<br />
        ?><br />
    <&#47;h1><br />
    <?php<br />
        if ( is_category() ) {<br />
            &#47;&#47; show an optional category description<br />
            $category_description = category_description();<br />
            if ( ! empty( $category_description ) )<br />
                echo apply_filters( 'category_archive_meta', '
<div class="taxonomy-description">' . $category_description . '<&#47;div>' );</p>
<p>        } elseif ( is_tag() ) {<br />
            &#47;&#47; show an optional tag description<br />
            $tag_description = tag_description();<br />
            if ( ! empty( $tag_description ) )<br />
                echo apply_filters( 'tag_archive_meta', '
<div class="taxonomy-description">' . $tag_description . '<&#47;div>' );<br />
        }<br />
    ?><br />
<&#47;header><!-- .page-header --></p>
<p><?php ninja_content_nav( 'nav-above' ); ?></p>
<p><?php &#47;* Starta loopen *&#47; ?><br />
<?php while ( have_posts() ) : the_post(); ?></p>
<p>    <?php<br />
        &#47;* Include the Post-Format-specific template for the content.<br />
         * If you want to overload this in a child theme then include a file<br />
         * called content-___.php (where ___ is the Post Format name) and that will be used instead.<br />
         *&#47;<br />
        get_template_part( 'content', get_post_format() );<br />
    ?></p>
<p><?php endwhile; ?></p>
<p><?php ninja_content_nav( 'nav-below' ); ?></p>
<p><?php else : ?></p>
<p><?php get_template_part( 'no-results', 'archive' ); ?></p>
<p><?php endif; ?></p>
<p><&#47;div><!-- #content .site-content --><br />
<&#47;section><!-- #primary .content-area --></p>
<p><?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
<p>S&aring;d&auml;r enkelt var det. Vi t&auml;nker strunta i att f&ouml;rklara vad allt g&ouml;r och forts&auml;tta till n&auml;sta del.</p>
