<?php
/**
 *
 * @package Cursos
 */
?>
<div class="section section-blog">
	<div class="container">
		<div class="column-container inner-page-columns">
			<div class="column-9-12 left">
				<div class="gutter">
					<div class="inner-page">
						<?php while (have_posts()) : the_post(); ?>
						<article class="article-blog clearfix">
						    <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
								<?php if ( has_post_thumbnail() && ! post_password_required() ) : ?>
								<div class="article-image">
									<a href="<?php the_permalink() ?>"><?php the_post_thumbnail('cursos-photo-800-500'); ?></a>
								</div>
								<?php endif; ?>
								<p class="posted"><span class="small"><?php the_time('M'); ?></span><span><?php the_time('d'); ?></span></p>
								<div class="article-text">
									<ul class="breadcrumbs"><li><?php the_category(', '); ?></li></ul>
									<h2><a href="<?php the_permalink() ?>"><?php if(get_the_title($post->ID)) { the_title(); } else { the_time( get_option( 'date_format' ) ); } ?></a></h2>
									<p><?php the_excerpt(); ?></p>
									<div class="column-container meta-table">
										<div class="column-9-12 left">
											<p class="meta-comments"><?php comments_popup_link( __( 'Leave a comment', 'cursos' ), __( '1 Comment', 'cursos' ), __( '% Comments', 'cursos' ) ); ?></p>
										</div>
										<div class="column-3-12 right">
											<p><a class="read-more" href="<?php the_permalink() ?>"></a></p>
										</div>
									</div>
								</div>
							</div>
						</article>
						<?php endwhile; ?>
						<p class="pagination">
						<?php if(function_exists('wp_pagenavi')) { wp_pagenavi(); } else { ?>
								<span class="left button-gray"><?php next_posts_link(__('Previous Posts', 'cursos')) ?></span>
								<span class="right button-gray"><?php previous_posts_link(__('Next posts', 'cursos')) ?></span>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="column-3-12 right">
				<div class="gutter">
					<?php  get_sidebar(); ?>
				</div>
			</div>
		</div>
	</div> <!--  END container  -->
</div> <!--  END section-blog  -->
