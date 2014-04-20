---
layout: post
status: publish
published: true
title: 08 Inl&auml;gg, bilagor & 404
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3180
wordpress_url: http://dmarby.se/wdk/02-forsta-temastrukturen/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments:
- id: 18094
  author: grallan
  author_email: veronikehartman@gmail.com
  author_url: ''
  date: '2014-02-27 19:26:56 +0100'
  date_gmt: '2014-02-27 18:26:56 +0100'
  content: m&aring;ste man skriva .php kan man skriva .html funkar ddet &auml;nd&aring;
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-inlagg-bilagor-404.png" alt="" width="695" height="182" class="alignnone size-full wp-image-3618" &#47;></p>
<h1>Inl&auml;gg, bilagor & 404<&#47;h1><br />
Tidigare i kursen har vi skapat ett index f&ouml;r alla poster, nu &auml;r det dags att skapa en mall f&ouml;r varje typ av content(eller icke existerande content).</p>
<h2>Mallen f&ouml;r mallar<&#47;h2><br />
Strukturen i single.php(och de flesta andra mallar som vi kommer att skapa) &auml;r liknande den i index.php.<br />
B&ouml;rja med att &ouml;ppna <strong>single.php<&#47;strong> och l&auml;gg till f&ouml;ljande kod:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Enskilt inl&auml;gg<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<p>            <?php while ( have_posts() ) : the_post(); ?></p>
<p>                <?php ninja_content_nav( 'nav-above' ); ?></p>
<p>                <?php get_template_part( 'content', 'single' ); ?></p>
<p>                <?php ninja_content_nav( 'nav-below' ); ?></p>
<p>                <?php<br />
                    &#47;&#47;  Om kommentarerna &auml;r &ouml;ppna, visa kommentarer<br />
                    if ( comments_open() || '0' != get_comments_number() )<br />
                        comments_template( '', true );<br />
                ?></p>
<p>            <?php endwhile; &#47;&#47; end of the loop. ?></p>
<p>            <&#47;div><!-- #content .site-content --><br />
        <&#47;div><!-- #primary .content-area --></p>
<p><?php get_sidebar(); ?><br />
<?php get_footer(); ?><br />
[&#47;php]</p>
<h2>Kommentarer<&#47;h2></p>
<p>D&aring; strukturen i enskilda poster &auml;r s&aring; annorlunda, v&auml;ljer vi att skapa en separat mall f&ouml;r dem. &Ouml;ppna <strong>content-single.php<&#47;strong> och kopiera in f&ouml;ljande kod:<br />
[php]<br />
<?php<br />
&#47;**<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>></p>
<header class="entry-header">
<h1 class="entry-title"><?php the_title(); ?><&#47;h1></p>
<div class="entry-meta">
            <?php ninja_posted_on(); ?><br />
        <&#47;div><!-- .entry-meta --><br />
    <&#47;header><!-- .entry-header --></p>
<div class="entry-content">
        <?php the_content(); ?><br />
        <?php wp_link_pages( array( 'before' => '
<div class="page-links">' . __( 'Pages:', 'ninja' ), 'after' => '<&#47;div>' ) ); ?><br />
    <&#47;div><!-- .entry-content --></p>
<footer class="entry-meta">
        <?php<br />
            &#47;* translators: used between list items, there is a space after the comma *&#47;<br />
            $category_list = get_the_category_list( __( ', ', 'ninja' ) );</p>
<p>            &#47;* translators: used between list items, there is a space after the comma *&#47;<br />
            $tag_list = get_the_tag_list( '', ', ' );</p>
<p>            if ( ! ninja_categorized_blog() ) {<br />
                &#47;&#47; This blog only has 1 category so we just need to worry about tags in the meta text<br />
                if ( '' != $tag_list ) {<br />
                    $meta_text = __( 'This entry was tagged %2$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink<&#47;a>.', 'ninja' );<br />
                } else {<br />
                    $meta_text = __( 'Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink<&#47;a>.', 'ninja' );<br />
                }</p>
<p>            } else {<br />
                &#47;&#47; But this blog has loads of categories so we should probably display them here<br />
                if ( '' != $tag_list ) {<br />
                    $meta_text = __( 'This entry was posted in %1$s and tagged %2$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink<&#47;a>.', 'ninja' );<br />
                } else {<br />
                    $meta_text = __( 'This entry was posted in %1$s. Bookmark the <a href="%3$s" title="Permalink to %4$s" rel="bookmark">permalink<&#47;a>.', 'ninja' );<br />
                }</p>
<p>            } &#47;&#47; end check for categories on this blog</p>
<p>            printf(<br />
                $meta_text,<br />
                $category_list,<br />
                $tag_list,<br />
                get_permalink(),<br />
                the_title_attribute( 'echo=0' )<br />
            );<br />
        ?></p>
<p>        <?php edit_post_link( __( 'Edit', 'ninja' ), '<span class="edit-link">', '<&#47;span>' ); ?><br />
    <&#47;footer><!-- .entry-meta --><br />
<&#47;article><!-- #post-<?php the_ID(); ?> --><br />
[&#47;php]</p>
<h2>Content i enskilda poster<&#47;h2></p>
<p>Till skillnad fr&aring;n content.php har vi inga if-statements som s&auml;ger &aring;t oss att visa utdrag p&aring; s&ouml;kresultat sidor, och liknande, d&aring; vi vet att vi &auml;r p&aring; en enskild sida.</p>
<h2>Bilagor<&#47;h2><br />
N&auml;r du l&auml;gger till en bild till ett inl&auml;gg s&aring; skapar du en bilaga. F&ouml;r detta kommer vi att skapa en image.php.<br />
Skapa filen image.php i din tema-mapp och l&auml;gg till f&ouml;ljande kod i den:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Visa bild-bilagor<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header();<br />
?></p>
<div id="primary" class="content-area image-attachment">
<div id="content" class="site-content" role="main">
<p>            <?php while ( have_posts() ) : the_post(); ?></p>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>></p>
<header class="entry-header">
<h1 class="entry-title"><?php the_title(); ?><&#47;h1></p>
<div class="entry-meta">
                            <?php<br />
                                $metadata = wp_get_attachment_metadata();<br />
                                printf( __( 'Published <span class="entry-date"><time class="entry-date" datetime="%1$s" pubdate>%2$s<&#47;time><&#47;span> at <a href="%3$s" title="Link to full-size image">%4$s &amp;times; %5$s<&#47;a> in <a href="%6$s" title="Return to %7$s" rel="gallery">%7$s<&#47;a>', 'ninja' ),<br />
                                    esc_attr( get_the_date( 'c' ) ),<br />
                                    esc_html( get_the_date() ),<br />
                                    wp_get_attachment_url(),<br />
                                    $metadata['width'],<br />
                                    $metadata['height'],<br />
                                    get_permalink( $post->post_parent ),<br />
                                    get_the_title( $post->post_parent )<br />
                                );<br />
                            ?><br />
                            <?php edit_post_link( __( 'Edit', 'ninja' ), '<span class="sep"> | <&#47;span> <span class="edit-link">', '<&#47;span>' ); ?><br />
                        <&#47;div><!-- .entry-meta --></p>
<nav id="image-navigation" class="site-navigation">
                            <span class="previous-image"><?php previous_image_link( false, __( '&amp;larr; Previous', 'ninja' ) ); ?><&#47;span><br />
                            <span class="next-image"><?php next_image_link( false, __( 'Next &amp;rarr;', 'ninja' ) ); ?><&#47;span><br />
                        <&#47;nav><!-- #image-navigation --><br />
                    <&#47;header><!-- .entry-header --></p>
<div class="entry-content">
<div class="entry-attachment">
<div class="attachment">
                                <?php<br />
                                    &#47;**<br />
                                     * Grab the IDs of all the image attachments in a gallery so we can get the URL of the next adjacent image in a gallery,<br />
                                     * or the first image (if we're looking at the last image in a gallery), or, in a gallery of one, just the link to that image file<br />
                                     *&#47;<br />
                                    $attachments = array_values( get_children( array( 'post_parent' => $post->post_parent, 'post_status' => 'inherit', 'post_type' => 'attachment', 'post_mime_type' => 'image', 'order' => 'ASC', 'orderby' => 'menu_order ID' ) ) );<br />
                                    foreach ( $attachments as $k => $attachment ) {<br />
                                        if ( $attachment->ID == $post->ID )<br />
                                            break;<br />
                                    }<br />
                                    $k++;<br />
                                    &#47;&#47; If there is more than 1 attachment in a gallery<br />
                                    if ( count( $attachments ) > 1 ) {<br />
                                        if ( isset( $attachments[ $k ] ) )<br />
                                            &#47;&#47; get the URL of the next image attachment<br />
                                            $next_attachment_url = get_attachment_link( $attachments[ $k ]->ID );<br />
                                        else<br />
                                            &#47;&#47; or get the URL of the first image attachment<br />
                                            $next_attachment_url = get_attachment_link( $attachments[ 0 ]->ID );<br />
                                    } else {<br />
                                        &#47;&#47; or, if there's only 1 image, get the URL of the image<br />
                                        $next_attachment_url = wp_get_attachment_url();<br />
                                    }<br />
                                ?></p>
<p>                                <a href="<?php echo $next_attachment_url; ?>" title="<?php echo esc_attr( get_the_title() ); ?>" rel="attachment"><?php<br />
                                    $attachment_size = apply_filters( 'ninja_attachment_size', array( 1200, 1200 ) ); &#47;&#47; Filterable image size.<br />
                                    echo wp_get_attachment_image( $post->ID, $attachment_size );<br />
                                ?><&#47;a><br />
                            <&#47;div><!-- .attachment --></p>
<p>                            <?php if ( ! empty( $post->post_excerpt ) ) : ?></p>
<div class="entry-caption">
                                <?php the_excerpt(); ?><br />
                            <&#47;div><!-- .entry-caption --><br />
                            <?php endif; ?><br />
                        <&#47;div><!-- .entry-attachment --></p>
<p>                        <?php the_content(); ?><br />
                        <?php wp_link_pages( array( 'before' => '
<div class="page-links">' . __( 'Pages:', 'ninja' ), 'after' => '<&#47;div>' ) ); ?></p>
<p>                    <&#47;div><!-- .entry-content --></p>
<footer class="entry-meta">
                        <?php if ( comments_open() &amp;&amp; pings_open() ) : &#47;&#47; Comments and trackbacks open ?><br />
                            <?php printf( __( '<a class="comment-link" href="#respond" title="Post a comment">Post a comment<&#47;a> or leave a trackback: <a class="trackback-link" href="%s" title="Trackback URL for your post" rel="trackback">Trackback URL<&#47;a>.', 'se' ), get_trackback_url() ); ?><br />
                        <?php elseif ( ! comments_open() &amp;&amp; pings_open() ) : &#47;&#47; Only trackbacks open ?><br />
                            <?php printf( __( 'Comments are closed, but you can leave a trackback: <a class="trackback-link" href="%s" title="Trackback URL for your post" rel="trackback">Trackback URL<&#47;a>.', 'ninja' ), get_trackback_url() ); ?><br />
                        <?php elseif ( comments_open() &amp;&amp; ! pings_open() ) : &#47;&#47; Only comments open ?><br />
                            <?php _e( 'Trackbacks are closed, but you can <a class="comment-link" href="#respond" title="Post a comment">post a comment<&#47;a>.', 'ninja' ); ?><br />
                        <?php elseif ( ! comments_open() &amp;&amp; ! pings_open() ) : &#47;&#47; Comments and trackbacks closed ?><br />
                            <?php _e( 'Both comments and trackbacks are currently closed.', 'ninja' ); ?><br />
                        <?php endif; ?><br />
                        <?php edit_post_link( __( 'Edit', 'ninja' ), ' <span class="edit-link">', '<&#47;span>' ); ?><br />
                    <&#47;footer><!-- .entry-meta --><br />
                <&#47;article><!-- #post-<?php the_ID(); ?> --></p>
<p>                <?php comments_template(); ?></p>
<p>            <?php endwhile; &#47;&#47; end of the loop. ?></p>
<p>            <&#47;div><!-- #content .site-content --><br />
        <&#47;div><!-- #primary .content-area .image-attachment --></p>
<p><?php get_footer(); ?><br />
[&#47;php]</p>
<h2>404-mallen<&#47;h2></p>
<p>En 404 sida &auml;r vad som visas n&auml;r en sida inte kan hittas. Vi kommer nu att skapa en mall f&ouml;r detta.<br />
&Ouml;ppna filen 404.php och l&auml;gg till koden som f&ouml;ljer.</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Mallen f&ouml;r 404 (Sidan hittas ej)<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;</p>
<p>get_header(); ?></p>
<div id="primary" class="content-area">
<div id="content" class="site-content" role="main">
<article id="post-0" class="post error404 not-found">
<header class="entry-header">
<h1 class="entry-title"><?php _e( 'Oops! That page can&amp;rsquo;t be found.', 'ninja' ); ?><&#47;h1><br />
                <&#47;header><!-- .entry-header --></p>
<div class="entry-content">
<p><?php _e( 'It looks like nothing was found at this location. Maybe try one of the links below or a search?', 'ninja' ); ?><&#47;p></p>
<p>                    <?php get_search_form(); ?></p>
<p>                    <?php the_widget( 'WP_Widget_Recent_Posts' ); ?></p>
<div class="widget">
<h2 class="widgettitle"><?php _e( 'Most Used Categories', 'ninja' ); ?><&#47;h2></p>
<ul>
                        <?php wp_list_categories( array( 'orderby' => 'count', 'order' => 'DESC', 'show_count' => 1, 'title_li' => '', 'number' => 10 ) ); ?><br />
                        <&#47;ul><br />
                    <&#47;div><!-- .widget --></p>
<p>                    <?php<br />
                    &#47;* translators: %1$s: smilie *&#47;<br />
                    $archive_content = '
<p>' . sprintf( __( 'Try looking in the monthly archives. %1$s', 'ninja' ), convert_smilies( ':)' ) ) . '<&#47;p>';<br />
                    the_widget( 'WP_Widget_Archives', 'dropdown=1', "after_title=<&#47;h2>$archive_content" );<br />
                    ?></p>
<p>                    <?php the_widget( 'WP_Widget_Tag_Cloud' ); ?></p>
<p>                <&#47;div><!-- .entry-content --><br />
            <&#47;article><!-- #post-0 .post .error404 .not-found --></p>
<p>        <&#47;div><!-- #content .site-content --><br />
    <&#47;div><!-- #primary .content-area --></p>
<p><?php get_footer(); ?><br />
[&#47;php]<br />
Vi har valt att inte visa sidebaren i 404.php, men om du vill visa den kan du alltid l&auml;gga till<br />
[php]<?php get_sidebar(); ?>[&#47;php] d&auml;r du har valt att l&auml;gga sidebaren.</p>
