<?php
/**
 *
 * @package Cursos
 */
 get_header(); ?>
 <?php while (have_posts()) : the_post(); ?>
			<section class="section section-page-title" <?php if(get_theme_mod('cursos_blog_image')) { ?> style="background-image: url('<?php echo esc_url(get_theme_mod('cursos_blog_image')); ?>')"  <?php }  ?>>
				<div class="overlay">
					<div class="container">
						<div class="section-title">
							<div class="gutter">
								<h4><?php echo esc_html(get_theme_mod('cursos_blog_page_title')); ?></h4>
								<p><?php echo esc_html(get_theme_mod('cursos_blog_subtitle')); ?></p>
							</div>
						</div> <!--  END seciton-title  -->
					</div> <!--  END container  -->
				</div> <!--  END overlay  -->
			</section> <!--  END section-page-title  -->
			<div class="section section-blog">
				<div class="container">
					<div class="column-container inner-page-columns">
						<div class="column-9-12 left">
							<div class="gutter">
								<div class="inner-page">
									<article class="single-post clearfix">
										<?php if ( has_post_thumbnail() && ! post_password_required() ) : ?>
										<div class="article-image">
											<?php the_post_thumbnail('featured'); ?>
										</div>
										<?php endif; ?>
										<p class="posted"><span class="small"><?php the_time('M'); ?></span><span><?php the_time('d'); ?></span></p>
										<div class="article-text">
											<ul class="breadcrumbs"><li><?php the_category(', '); ?></li></ul>
											<h2><?php the_title(); ?></h2>
											<?php the_content(); ?>
											<div class="column-container meta-table">
												<div class="column-12-12">
													<p class="meta-comments"><?php comments_popup_link( __( 'Leave a comment', 'cursos' ), __( '1 Comment', 'cursos' ), __( '% Comments', 'cursos' ) ); ?></p>
												</div>
											</div>
											<p class="tags"><span></span> <?php the_tags(); ?></p>
										</div>
										<p><?php posts_nav_link(); ?></p>
										<div class="padinate-page"><?php wp_link_pages(); ?></div>
										<div class="comments">
											<?php comments_template(); ?>
										</div> <!--  END comments  -->
									</article>
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
<?php endwhile; ?>
<?php get_footer(); ?>
