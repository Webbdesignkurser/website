---
layout: post
status: publish
published: true
title: 07 Index
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3181
wordpress_url: http://dmarby.se/wdk/03-utvecklingsverktyg/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags:
- S
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-index.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3602" &#47;></p>
<h1>Index<&#47;h1><br />
Index.php &auml;r den viktigaste delen av wordpress temat, eftersom Wordpress beh&ouml;ver den om du saknar n&aring;gra andra mallar (archive.php, tag.php, etc), och &auml;ven g&ouml;r att det blir enklare att skapa resten av mallarna.</p>
<h2>Anropa headern<&#47;h2><br />
&Ouml;ppna <strong>index.php<&#47;strong>. Den b&ouml;r se ut s&aring;h&auml;r:<br />
[html]<br />
<?php get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content">
    <&#47;div><!-- #content .site-content --><br />
<&#47;div><!-- #primary .content-area --><br />
<?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;html]<br />
Kopiera in f&ouml;ljande kod i b&ouml;rjan av filen, innan n&aring;got annat:<br />
[php]<br />
<?php<br />
&#47;**<br />
 * Huvudmallen<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header(); ?><br />
[&#47;php]</p>
<p>Denna koden g&ouml;r s&aring; att header.php inkluderas i filen.</p>
<h2>The Loop<&#47;h2><br />
The loop &auml;r vad som h&auml;mtar poster och annat dynamiskt inneh&aring;ll.</p>
<p>Kopiera in f&ouml;ljande kod i .site-content div:en i <strong>index.php<&#47;strong>:</p>
<p>[php]<br />
<?php &#47;* Starta loopen *&#47; ?><br />
<?php while ( have_posts() ) : the_post(); ?><br />
<?php the_content(); ?><br />
<?php endwhile; ?><br />
[&#47;php]</p>
<p>S&aring; h&auml;r b&ouml;r din .site-content div se ut:</p>
<p>[php]</p>
<div id="content" class="site-content" role="main">
<?php &#47;* Starta loopen *&#47; ?><br />
<?php while ( have_posts() ) : the_post(); ?><br />
     <?php the_content(); ?><br />
<?php endwhile; ?><br />
<&#47;div><!-- #content .site-content --><br />
[&#47;php]</p>
<h2>Metadata funktioner<&#47;h2><br />
Nu ska vi skapa n&aring;gra funktioner f&ouml;r att visa diverse metadata. D&aring; dom &auml;r &aring;teranv&auml;ndbara l&auml;gger vi dem i template-tags.php.<br />
&Ouml;ppna <strong>template-tags.php<&#47;strong> och l&auml;gg till f&ouml;ljande kod:</p>
<p>[php]<br />
if ( ! function_exists( 'ninja_posted_on' ) ) :<br />
&#47;**<br />
 * Visar HTML med meta-information f&ouml;r det nuvarande post datumet&#47;tiden och f&ouml;rfattaren.<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_posted_on() {<br />
    printf( __( 'Posted on <a href="%1$s" title="%2$s" rel="bookmark"><time class="entry-date" datetime="%3$s" pubdate>%4$s<&#47;time><&#47;a><span class="byline"> by <span class="author vcard"><a class="url fn n" href="%5$s" title="%6$s" rel="author">%7$s<&#47;a><&#47;span><&#47;span>', 'ninja' ),<br />
        esc_url( get_permalink() ),<br />
        esc_attr( get_the_time() ),<br />
        esc_attr( get_the_date( 'c' ) ),<br />
        esc_html( get_the_date() ),<br />
        esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ),<br />
        esc_attr( sprintf( __( 'View all posts by %s', 'ninja' ), get_the_author() ) ),<br />
        esc_html( get_the_author() )<br />
    );<br />
}<br />
endif;</p>
<p>&#47;**<br />
 * Returns true if a blog has more than one category<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_categorized_blog() {<br />
    if ( false === ( $all_the_cool_cats = get_transient( 'all_the_cool_cats' ) ) ) {<br />
        &#47;&#47; Create an array of all the categories that are attached to posts<br />
        $all_the_cool_cats = get_categories( array(<br />
            'hide_empty' => 1,<br />
        ) );</p>
<p>        &#47;&#47; Count the number of categories that are attached to the posts<br />
        $all_the_cool_cats = count( $all_the_cool_cats );</p>
<p>        set_transient( 'all_the_cool_cats', $all_the_cool_cats );<br />
    }</p>
<p>    if ( '1' != $all_the_cool_cats ) {<br />
        &#47;&#47; This blog has more than 1 category so ninja_categorized_blog should return true<br />
        return true;<br />
    } else {<br />
        &#47;&#47; This blog has only 1 category so ninja_categorized_blog should return false<br />
        return false;<br />
    }<br />
}</p>
<p>&#47;**<br />
 * Flush out the transients used in ninja_categorized_blog<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_category_transient_flusher() {<br />
    &#47;&#47; Like, beat it. Dig?<br />
    delete_transient( 'all_the_cool_cats' );<br />
}<br />
add_action( 'edit_category', 'ninja_category_transient_flusher' );<br />
add_action( 'save_post', 'ninja_category_transient_flusher' );<br />
[&#47;php]</p>
<h2>F&ouml;renkla Index Mallen<&#47;h2></p>
<p>F&ouml;r att undvika att fylla index.php med on&ouml;dig kod, s&aring; v&auml;ljer vi att dela upp det i flera filer.</p>
<p>&Ouml;ppna <strong>content.php<&#47;strong> och kopiera in f&ouml;ljande kod:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>></p>
<header class="entry-header">
<h1 class="entry-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'ninja' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title(); ?><&#47;a><&#47;h1></p>
<p>        <?php if ( 'post' == get_post_type() ) : ?></p>
<div class="entry-meta">
            <?php ninja_posted_on(); ?><br />
        <&#47;div><!-- .entry-meta --><br />
        <?php endif; ?><br />
    <&#47;header><!-- .entry-header --></p>
<p>    <?php if ( is_search() ) : &#47;&#47; Only display Excerpts for Search ?></p>
<div class="entry-summary">
        <?php the_excerpt(); ?><br />
    <&#47;div><!-- .entry-summary --><br />
    <?php else : ?></p>
<div class="entry-content">
        <?php the_content( __( 'Continue reading <span class="meta-nav">&amp;rarr;<&#47;span>', 'ninja' ) ); ?><br />
        <?php wp_link_pages( array( 'before' => '
<div class="page-links">' . __( 'Pages:', 'ninja' ), 'after' => '<&#47;div>' ) ); ?><br />
    <&#47;div><!-- .entry-content --><br />
    <?php endif; ?></p>
<footer class="entry-meta">
        <?php if ( 'post' == get_post_type() ) : &#47;&#47; Hide category and tag text for pages on Search ?><br />
            <?php<br />
                &#47;* translators: used between list items, there is a space after the comma *&#47;<br />
                $categories_list = get_the_category_list( __( ', ', 'ninja' ) );<br />
                if ( $categories_list &amp;&amp; ninja_categorized_blog() ) :<br />
            ?><br />
            <span class="cat-links"><br />
                <?php printf( __( 'Posted in %1$s', 'ninja' ), $categories_list ); ?><br />
            <&#47;span><br />
            <?php endif; &#47;&#47; End if categories ?></p>
<p>            <?php<br />
                &#47;* translators: used between list items, there is a space after the comma *&#47;<br />
                $tags_list = get_the_tag_list( '', __( ', ', 'ninja' ) );<br />
                if ( $tags_list ) :<br />
            ?><br />
            <span class="sep"> | <&#47;span><br />
            <span class="tag-links"><br />
                <?php printf( __( 'Tagged %1$s', 'ninja' ), $tags_list ); ?><br />
            <&#47;span><br />
            <?php endif; &#47;&#47; End if $tags_list ?><br />
        <?php endif; &#47;&#47; End if 'post' == get_post_type() ?></p>
<p>        <?php if ( ! post_password_required() &amp;&amp; ( comments_open() || '0' != get_comments_number() ) ) : ?><br />
        <span class="sep"> | <&#47;span><br />
        <span class="comments-link"><?php comments_popup_link( __( 'Leave a comment', 'ninja' ), __( '1 Comment', 'ninja' ), __( '% Comments', 'ninja' ) ); ?><&#47;span><br />
        <?php endif; ?></p>
<p>        <?php edit_post_link( __( 'Edit', 'ninja' ), '<span class="sep"> | <&#47;span><span class="edit-link">', '<&#47;span>' ); ?><br />
    <&#47;footer><!-- .entry-meta --><br />
<&#47;article><!-- #post-<?php the_ID(); ?> --><br />
[&#47;php]</p>
<p>&Ouml;ppna nu <strong>index.php<&#47;strong> och ta bort all kod mellan [html]
<div id="content" class="site-content">[&#47;html] och [html]<&#47;div><!-- #content .site-content -->[&#47;html]<br />
Byt ut det mot f&ouml;ljande:<br />
[php]<br />
<?php if ( have_posts() ) : ?><br />
     <?php &#47;* Starta Loopen *&#47; ?><br />
     <?php while ( have_posts() ) : the_post(); ?></p>
<p>          <?php<br />
          &#47;* Inkludera det Post-Format-specifika temat f&ouml;r inneh&aring;llet.<br />
          *&#47;<br />
          get_template_part( 'content', get_post_format() );<br />
          ?><br />
     <?php endwhile; ?><br />
<?php endif; ?><br />
[&#47;php]</p>
<p>Detta anropar allts&aring; olika filer beroende p&aring; vad f&ouml;r typ av post det &auml;r, och om den inte hittar r&auml;tt fil, s&aring; anv&auml;nder den content.php.</p>
<h2>Aside Post Format<&#47;h2></p>
<p>Tidigare la vi till st&ouml;d f&ouml;r n&aring;got som heter Aside Post Format. Detta &auml;r ett s&auml;tt att strukturera poster.</p>
<p>&Ouml;ppna <strong>content-aside.php<&#47;strong> och kopiera in f&ouml;ljande:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * The template for displaying posts in the Aside post format<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>></p>
<header class="entry-header">
<h1 class="entry-title"><a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'ninja' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php the_title(); ?><&#47;a><&#47;h1><br />
    <&#47;header><!-- .entry-header --></p>
<p>    <?php if ( is_search() ) : &#47;&#47; Only display Excerpts for Search ?></p>
<div class="entry-summary">
        <?php the_excerpt(); ?><br />
    <&#47;div><!-- .entry-summary --><br />
    <?php else : ?></p>
<div class="entry-content">
        <?php the_content( __( 'Continue reading <span class="meta-nav">&amp;rarr;<&#47;span>', 'ninja' ) ); ?><br />
        <?php wp_link_pages( array( 'before' => '
<div class="page-links">' . __( 'Pages:', 'ninja' ), 'after' => '<&#47;div>' ) ); ?><br />
    <&#47;div><!-- .entry-content --><br />
    <?php endif; ?></p>
<footer class="entry-meta">
        <a href="<?php the_permalink(); ?>" title="<?php echo esc_attr( sprintf( __( 'Permalink to %s', 'ninja' ), the_title_attribute( 'echo=0' ) ) ); ?>" rel="bookmark"><?php echo get_the_date(); ?><&#47;a><br />
        <?php if ( ! post_password_required() &amp;&amp; ( comments_open() || '0' != get_comments_number() ) ) : ?><br />
        <span class="sep"> | <&#47;span><br />
        <span class="comments-link"><?php comments_popup_link( __( 'Leave a comment', 'ninja' ), __( '1 Comment', 'ninja' ), __( '% Comments', 'ninja' ) ); ?><&#47;span><br />
        <?php endif; ?></p>
<p>        <?php edit_post_link( __( 'Edit', 'ninja' ), '<span class="sep"> | <&#47;span><span class="edit-link">', '<&#47;span>' ); ?><br />
    <&#47;footer><!-- .entry-meta --><br />
<&#47;article><!-- #post-<?php the_ID(); ?> --><br />
[&#47;php]<br />
Som du kan se &auml;r den n&auml;stan identisk till content.php, fast utan titel, f&ouml;rfattarnamn, kategorier och taggar.</p>
<h2>Navigation<&#47;h2><br />
Sj&auml;lvklart beh&ouml;vs det ett s&auml;tt att bl&auml;ddra mellan poster, b&aring;de p&aring; enskilda sidor, och arkiv-sidor.<br />
Detta l&auml;gger vi i <strong>inc&#47;template-tags.php<&#47;strong>.<br />
Kopiera in f&ouml;ljande i slutet av filen:</p>
<p>[php]<br />
if ( ! function_exists( 'ninja_content_nav' ) ):<br />
&#47;**<br />
 * Display navigation to next&#47;previous pages when applicable<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_content_nav( $nav_id ) {<br />
    global $wp_query, $post;</p>
<p>    &#47;&#47; Don't print empty markup on single pages if there's nowhere to navigate.<br />
    if ( is_single() ) {<br />
        $previous = ( is_attachment() ) ? get_post( $post->post_parent ) : get_adjacent_post( false, '', true );<br />
        $next = get_adjacent_post( false, '', false );</p>
<p>        if ( ! $next &amp;&amp; ! $previous )<br />
            return;<br />
    }</p>
<p>    &#47;&#47; Don't print empty markup in archives if there's only one page.<br />
    if ( $wp_query->max_num_pages < 2 &amp;&amp; ( is_home() || is_archive() || is_search() ) )<br />
        return;</p>
<p>    $nav_class = 'site-navigation paging-navigation';<br />
    if ( is_single() )<br />
        $nav_class = 'site-navigation post-navigation';</p>
<p>    ?></p>
<nav role="navigation" id="<?php echo $nav_id; ?>" class="<?php echo $nav_class; ?>"></p>
<h1 class="assistive-text"><?php _e( 'Post navigation', 'ninja' ); ?><&#47;h1></p>
<p>    <?php if ( is_single() ) : &#47;&#47; navigation links for single posts ?></p>
<p>        <?php previous_post_link( '
<div class="nav-previous">%link<&#47;div>', '<span class="meta-nav">' . _x( '&amp;larr;', 'Previous post link', 'ninja' ) . '<&#47;span> %title' ); ?><br />
        <?php next_post_link( '
<div class="nav-next">%link<&#47;div>', '%title <span class="meta-nav">' . _x( '&amp;rarr;', 'Next post link', 'ninja' ) . '<&#47;span>' ); ?></p>
<p>    <?php elseif ( $wp_query->max_num_pages > 1 &amp;&amp; ( is_home() || is_archive() || is_search() ) ) : &#47;&#47; navigation links for home, archive, and search pages ?></p>
<p>        <?php if ( get_next_posts_link() ) : ?></p>
<div class="nav-previous"><?php next_posts_link( __( '<span class="meta-nav">&amp;larr;<&#47;span> Older posts', 'ninja' ) ); ?><&#47;div><br />
        <?php endif; ?></p>
<p>        <?php if ( get_previous_posts_link() ) : ?></p>
<div class="nav-next"><?php previous_posts_link( __( 'Newer posts <span class="meta-nav">&amp;rarr;<&#47;span>', 'ninja' ) ); ?><&#47;div><br />
        <?php endif; ?></p>
<p>    <?php endif; ?></p>
<p>    <&#47;nav><!-- #<?php echo $nav_id; ?> --><br />
    <?php<br />
}<br />
endif; &#47;&#47; ninja_content_nav<br />
[&#47;php]<br />
Nu beh&ouml;ver vi anropa detta fr&aring;n v&aring;ran index.php. L&auml;gg till f&ouml;ljande kod just innan "the loop":</p>
<p>[php]<br />
<?php ninja_content_nav( 'nav-above' ); ?><br />
[&#47;php]</p>
<p>Efter "the loop", l&auml;gg till f&ouml;ljande kod:</p>
<p>[php]<br />
<?php ninja_content_nav( 'nav-below' ); ?><br />
[&#47;php]</p>
<p>Din index.php b&ouml;r nu se ut s&aring;h&auml;r:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
* Huvudmallen<br />
* @package Ninja<br />
* @since Ninja 1.0<br />
*&#47;</p>
<p>get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p>    <?php if ( have_posts() ) : ?></p>
<p>        <?php ninja_content_nav( 'nav-above' ); ?></p>
<p>        <?php &#47;* Start the Loop *&#47; ?><br />
        <?php while ( have_posts() ) : the_post(); ?></p>
<p>            <?php<br />
                &#47;* Include the Post-Format-specific template for the content.<br />
                 * If you want to overload this in a child theme then include a file<br />
                 * called content-___.php (where ___ is the Post Format name) and that will be used instead.<br />
                 *&#47;<br />
                get_template_part( 'content', get_post_format() );<br />
            ?></p>
<p>        <?php endwhile; ?></p>
<p>        <?php ninja_content_nav( 'nav-below' ); ?></p>
<p>    <?php endif; ?></p>
<p>    <&#47;div><!-- #content .site-content --><br />
<&#47;div><!-- #primary .content-area --><br />
[&#47;php]</p>
<h2>No-results.php<&#47;h2></p>
<p>Ibland s&aring; finns det inga poster f&ouml;r index.php att visa. D&aring; vill vi visa ett meddelande som s&auml;ger detta.<br />
&Ouml;ppna <strong>no-results.php<&#47;strong> och l&auml;gg till f&ouml;ljande:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Visa ett meddelande om inga poster hittas<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<article id="post-0" class="post no-results not-found">
<header class="entry-header">
<h1 class="entry-title"><?php _e( 'Nothing Found', 'ninja' ); ?><&#47;h1><br />
    <&#47;header><!-- .entry-header --></p>
<div class="entry-content">
        <?php if ( is_home() &amp;&amp; current_user_can( 'publish_posts' ) ) : ?></p>
<p><?php printf( __( 'Ready to publish your first post? <a href="%1$s">Get started here<&#47;a>.', 'ninja' ), admin_url( 'post-new.php' ) ); ?><&#47;p></p>
<p>        <?php elseif ( is_search() ) : ?></p>
<p><?php _e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'ninja' ); ?><&#47;p><br />
            <?php get_search_form(); ?></p>
<p>        <?php else : ?></p>
<p><?php _e( 'It seems we can&amp;rsquo;t find what you&amp;rsquo;re looking for. Perhaps searching can help.', 'ninja' ); ?><&#47;p><br />
            <?php get_search_form(); ?></p>
<p>        <?php endif; ?><br />
    <&#47;div><!-- .entry-content --><br />
<&#47;article><!-- #post-0 .post .no-results .not-found --><br />
[&#47;php]<br />
Nu beh&ouml;ver vi anropa no-results.php fr&aring;n index.php. &Ouml;ppna <strong>index.php<&#47;strong> och l&auml;gg till f&ouml;ljande, precis efter [php]<?php ninja_content_nav( 'nav-below' ); ?>[&#47;php]<br />
[php]<br />
<?php else : ?><br />
     <?php get_template_part( 'no-results', 'index' ); ?><br />
[&#47;php]</p>
<h2>Sidebar & Footer<&#47;h2></p>
<p>I slutet av index.php, l&auml;gg till f&ouml;ljande f&ouml;r att inkludera sidebaren och footern:</p>
<p>[php]<br />
<?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
<p>Din index.php b&ouml;r nu se ut s&aring; h&auml;r:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
* Huvudmallen<br />
*<br />
* @package Ninja<br />
* @since Ninja 1.0<br />
*&#47;</p>
<p>get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p>    <?php if ( have_posts() ) : ?></p>
<p>        <?php ninja_content_nav( 'nav-above' ); ?></p>
<p>        <?php &#47;* Start the Loop *&#47; ?><br />
        <?php while ( have_posts() ) : the_post(); ?></p>
<p>            <?php<br />
                &#47;* Include the Post-Format-specific template for the content.<br />
                 * If you want to overload this in a child theme then include a file<br />
                 * called content-___.php (where ___ is the Post Format name) and that will be used instead.<br />
                 *&#47;<br />
                get_template_part( 'content', get_post_format() );<br />
            ?></p>
<p>        <?php endwhile; ?></p>
<p>        <?php ninja_content_nav( 'nav-below' ); ?></p>
<p>    <?php else : ?></p>
<p>        <?php get_template_part( 'no-results', 'index' ); ?></p>
<p>    <?php endif; ?></p>
<p>    <&#47;div><!-- #content .site-content --><br />
<&#47;div><!-- #primary .content-area --></p>
<p><?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
