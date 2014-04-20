---
layout: post
status: publish
published: true
title: 09 Kommentarer
author: admin
author_login: admin
author_email: kontakt@webbdesignkurser.se
wordpress_id: 3182
wordpress_url: http://dmarby.se/wdk/04-html-struktur/
date: '2013-02-21 20:11:38 +0100'
date_gmt: '2013-02-21 19:11:38 +0100'
categories:
- Ninja
tags: []
comments: []
---
<p><img src="&#47;wp-content&#47;uploads&#47;2013&#47;02&#47;ninja-kommentarer.png" alt="Wordpress kommentarer" width="695" height="182" class="alignnone size-full wp-image-3609" &#47;></p>
<h1>Kommentarer<&#47;h1><br />
F&ouml;r att f&aring; v&aring;ra kommentarer att fungera, m&aring;ste vi anv&auml;nda en egen callback-funktion som styr layouten p&aring; kommentarerna och trackbacks:en. &Ouml;ppna filen <strong>inc&#47;template-tags.php<&#47;strong> och kopiera in f&ouml;ljande kod i botten av filen:</p>
<p>[php]<br />
if ( ! function_exists( 'ninja_comment' ) ) :<br />
&#47;**<br />
 * Mall f&ouml;r kommentarer och pingback.<br />
 *<br />
 * Skrivs som wp_list_comments() f&ouml;r att kommentarerna ska visas.<br />
 *<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
function ninja_comment( $comment, $args, $depth ) {<br />
    $GLOBALS['comment'] = $comment;<br />
    switch ( $comment->comment_type ) :<br />
        case 'pingback' :<br />
        case 'trackback' :<br />
    ?></p>
<li class="post pingback">
<p><?php _e( 'Pingback:', 'ninja' ); ?> <?php comment_author_link(); ?><?php edit_comment_link( __( '(Edit)', 'ninja' ), ' ' ); ?><&#47;p><br />
    <?php<br />
            break;<br />
        default :<br />
    ?></p>
<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>"><br />
<article id="comment-<?php comment_ID(); ?>" class="comment"></p>
<footer>
<div class="comment-author vcard">
                    <?php echo get_avatar( $comment, 40 ); ?><br />
                    <?php printf( __( '%s <span class="says">s&auml;ger:<&#47;span>', 'ninja' ), sprintf( '<cite class="fn">%s<&#47;cite>', get_comment_author_link() ) ); ?><br />
                <&#47;div><!-- .comment-author .vcard --><br />
                <?php if ( $comment->comment_approved == '0' ) : ?><br />
                    <em><?php _e( 'Din kommentar inv&auml;ntar granskning.', 'ninja' ); ?><&#47;em><br />
                    <br &#47;><br />
                <?php endif; ?></p>
<div class="comment-meta commentmetadata">
                    <a href="<?php echo esc_url( get_comment_link( $comment->comment_ID ) ); ?>"><time pubdate datetime="<?php comment_time( 'c' ); ?>"><br />
                    <?php<br />
                        &#47;* translators: 1: date, 2: time *&#47;<br />
                        printf( __( '%1$s at %2$s', 'ninja' ), get_comment_date(), get_comment_time() ); ?><br />
                    <&#47;time><&#47;a><br />
                    <?php edit_comment_link( __( '(Edit)', 'ninja' ), ' ' );<br />
                    ?><br />
                <&#47;div><!-- .comment-meta .commentmetadata --><br />
            <&#47;footer></p>
<div class="comment-content"><?php comment_text(); ?><&#47;div></p>
<div class="reply">
                <?php comment_reply_link( array_merge( $args, array( 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?><br />
            <&#47;div><!-- .reply --><br />
        <&#47;article><!-- #comment-## --></p>
<p>    <?php<br />
            break;<br />
    endswitch;<br />
}<br />
endif; &#47;&#47; slut p&aring; ninja_comment()<br />
[&#47;php]</p>
<h2>Kommentars-mallen (comments.php)<&#47;h2></p>
<p>Kopiera in f&ouml;ljande kod i <strong>comments.php<&#47;strong>:</p>
<p>[php]<br />
<?php<br />
&#47;**<br />
 * Mallen f&ouml;r att visa Kommentarer<br />
 *<br />
 * @package Ninja<br />
 * @since Ninja 1.0<br />
 *&#47;<br />
?></p>
<p><?php<br />
    &#47;*<br />
     * Om nuvarande inl&auml;gg skyddas av l&ouml;senord och bes&ouml;karen inte loggat<br />
     * in s&aring; hindrar det h&auml;r bes&ouml;karen fr&aring;n att se kommentarer.<br />
     *&#47;<br />
    if ( post_password_required() )<br />
        return;<br />
?></p>
<div id="comments" class="comments-area">
<p>    <?php &#47;&#47; Du kan b&ouml;rja redigera sj&auml;lv h&auml;r om du vill. ?></p>
<p>    <?php if ( have_comments() ) : ?></p>
<h2 class="comments-title">
            <?php<br />
                printf( _n( 'En kommentar p&aring; &amp;ldquo;%2$s&amp;rdquo;', '%1$s kommentarer p&aring; &amp;ldquo;%2$s&amp;rdquo;', get_comments_number(), 'ninja' ),<br />
                    number_format_i18n( get_comments_number() ), '<span>' . get_the_title() . '<&#47;span>' );<br />
            ?><br />
        <&#47;h2></p>
<p>        <?php if ( get_comment_pages_count() > 1 &amp;&amp; get_option( 'page_comments' ) ) : &#47;&#47; Visar navigation om antalet kommentarer kr&auml;ver det. ?></p>
<nav role="navigation" id="comment-nav-above" class="site-navigation comment-navigation">
<h1 class="assistive-text"><?php _e( 'Comment navigation', 'ninja' ); ?><&#47;h1></p>
<div class="nav-previous"><?php previous_comments_link( __( '&amp;larr; &Auml;ldre kommentarer', 'ninja' ) ); ?><&#47;div></p>
<div class="nav-next"><?php next_comments_link( __( 'Nyare kommentarer &amp;rarr;', 'ninja' ) ); ?><&#47;div><br />
        <&#47;nav><!-- #comment-nav-before .site-navigation .comment-navigation --><br />
        <?php endif; &#47;&#47; check for comment navigation ?></p>
<ol class="commentlist">
            <?php<br />
                wp_list_comments( array( 'callback' => 'ninja_comment' ) );<br />
            ?><br />
        <&#47;ol><!-- .commentlist --></p>
<p>    <?php endif; &#47;&#47; have_comments() ?></p>
<p>    <?php<br />
        &#47;&#47; Om kommentarerna &auml;r avst&auml;ngda borde vi meddela det, eller hur? Det g&ouml;r vi h&auml;r...<br />
        if ( ! comments_open() &amp;&amp; '0' != get_comments_number() &amp;&amp; post_type_supports( get_post_type(), 'comments' ) ) :<br />
    ?></p>
<p class="nocomments"><?php _e( 'Kommentarerna &auml;r avst&auml;ngda.', 'ninja' ); ?><&#47;p><br />
    <?php endif; ?></p>
<p>    <?php comment_form(); ?></p>
<p><&#47;div><!-- #comments .comments-area --><br />
[&#47;php]</p>
