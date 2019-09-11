<?php
/**
 *
 * @package Cursos
 */
?>
<?php if( get_theme_mod('cursos_slider_content1') or get_theme_mod('cursos_slider_content2')) { ?>
<div class="owl-carousel welcome-carousel">
	<?php
	if( get_theme_mod('cursos_slider_content1')) {
	$queryslider = new WP_query('page_id='.get_theme_mod('cursos_slider_content1' ,true));
	while( $queryslider->have_posts() ) : $queryslider->the_post();
	?>
	<div class="item" <?php if ( has_post_thumbnail() && ! post_password_required() ) : ?> style="background-image: url('<?php echo esc_url(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>')"  <?php  endif; ?>>
		<div class="container">
			<div class="gutter">
				<article class="article-welcome center animate-top-down">
					<h4><?php the_title(); ?></h4>
					<div class="overlay">
						<p><?php the_excerpt(); ?></p>
					</div>
				</article>
			</div>
		</div>
	</div>
	<?php endwhile; wp_reset_postdata(); ?>
	<?php } ?>
	<?php
	if( get_theme_mod('cursos_slider_content2')) {
	$queryslider = new WP_query('page_id='.get_theme_mod('cursos_slider_content2' ,true));
	while( $queryslider->have_posts() ) : $queryslider->the_post();
	?>
	<div class="item" <?php if ( has_post_thumbnail() && ! post_password_required() ) : ?> style="background-image: url('<?php echo esc_url(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>')"  <?php  endif; ?>>
		<div class="container">
			<div class="gutter">
				<article class="article-welcome center animate-top-down">
					<h4><?php the_title(); ?></h4>
					<div class="overlay">
						<p><?php the_excerpt(); ?></p>
					</div>
				</article>
			</div>
		</div>
	</div>
	<?php endwhile; wp_reset_postdata(); ?>
	<?php } ?>
</div>
<?php } else { ?>
	<section class="section section-page-title" <?php if ( has_post_thumbnail() && ! post_password_required() ) : ?> style="background-image: url('<?php echo esc_url(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>')"  <?php  endif; ?>>
		<div class="overlay">
			<div class="container">
				<div class="section-title">
					<div class="gutter">
						<h4><?php the_title(); ?></h4>
						<?php the_excerpt(); ?>
					</div>
				</div> <!--  END seciton-title  -->
			</div> <!--  END container  -->
		</div> <!--  END overlay  -->
	</section> <!--  END section-page-title  -->
<?php }  ?>
<div class="section section-preview">
	<div class="container">
		<div class="column-container articles-columns">
			<?php
			if( get_theme_mod('cursos_whyus_content_1')) {
			$queryslider = new WP_query('page_id='.get_theme_mod('cursos_whyus_content_1' ,true));
			while( $queryslider->have_posts() ) : $queryslider->the_post();
			?>
			<div class="column-3-12">
				<div class="gutter">
					<article class="article-preview">
						<div class="article-icon">
							<a class="fa fa-<?php echo sanitize_html_class(get_theme_mod('cursos_whyus_icon_1',__( 'bookmark', 'cursos' ))); ?>" href="<?php the_permalink(); ?>"></a>
						</div>
						<div class="article-text">
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							<p><?php the_excerpt(); ?></p>
						</div>
					</article>
				</div>
			</div>
			<?php endwhile; wp_reset_postdata(); ?>
			<?php } ?>
			<?php
			if( get_theme_mod('cursos_whyus_content_2')) {
			$queryslider = new WP_query('page_id='.get_theme_mod('cursos_whyus_content_2' ,true));
			while( $queryslider->have_posts() ) : $queryslider->the_post();
			?>
			<div class="column-3-12">
				<div class="gutter">
					<article class="article-preview">
						<div class="article-icon">
							<a class="fa fa-<?php echo sanitize_html_class(get_theme_mod('cursos_whyus_icon_2',__( 'laptop', 'cursos' ))); ?>" href="<?php the_permalink(); ?>"></a>
						</div>
						<div class="article-text">
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							<p><?php the_excerpt(); ?></p>
						</div>
					</article>
				</div>
			</div>
			<?php endwhile; wp_reset_postdata(); ?>
			<?php } ?>
			<?php
			if( get_theme_mod('cursos_whyus_content_3')) {
			$queryslider = new WP_query('page_id='.get_theme_mod('cursos_whyus_content_3' ,true));
			while( $queryslider->have_posts() ) : $queryslider->the_post();
			?>
			<div class="column-3-12">
				<div class="gutter">
					<article class="article-preview">
						<div class="article-icon">
							<a class="fa fa-<?php echo sanitize_html_class(get_theme_mod('cursos_whyus_icon_3',__( 'graduation-cap', 'cursos' ))); ?>" href="<?php the_permalink(); ?>"></a>
						</div>
						<div class="article-text">
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							<p><?php the_excerpt(); ?></p>
						</div>
					</article>
				</div>
			</div>
			<?php endwhile; wp_reset_postdata(); ?>
			<?php } ?>
			<?php
			if( get_theme_mod('cursos_whyus_content_4')) {
			$queryslider = new WP_query('page_id='.get_theme_mod('cursos_whyus_content_4' ,true));
			while( $queryslider->have_posts() ) : $queryslider->the_post();
			?>
			<div class="column-3-12">
				<div class="gutter">
					<article class="article-preview">
						<div class="article-icon">
							<a class="fa fa-<?php echo sanitize_html_class(get_theme_mod('cursos_whyus_icon_4',__( 'support', 'cursos' ))); ?>" href="<?php the_permalink(); ?>"></a>
						</div>
						<div class="article-text">
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							<p><?php the_excerpt(); ?></p>
						</div>
					</article>
				</div>
			</div>
			<?php endwhile; wp_reset_postdata(); ?>
			<?php } ?>
		</div>
	</div> <!--  END container  -->
</div> <!--  END section-preview  -->
<?php
if( get_theme_mod('cursos_info_box_text')) {
$queryslider = new WP_query('page_id='.get_theme_mod('cursos_info_box_text' ,true));
while( $queryslider->have_posts() ) : $queryslider->the_post();
?>
<section class="section section-subscribe" <?php if ( has_post_thumbnail() && ! post_password_required() ) : ?> style="background-image: url('<?php echo esc_url(wp_get_attachment_url( get_post_thumbnail_id($post->ID))); ?>')"  <?php  endif; ?>>
	<div class="overlay">
		<div class="container">
			<div class="section-title">
				<div class="gutter">
					<h4><?php the_title(); ?></h4>
					<p><?php the_excerpt(); ?></p>
				</div>
			</div> <!--  END seciton-title  -->
			<div class="gutter">
				<div class="subscribe-form">
					<a class="button" href="<?php the_permalink(); ?>"><?php echo esc_html(get_theme_mod('cursos_info_box_button_text')); ?></a>
				</div>
			</div>
		</div> <!--  END container  -->
	</div> <!--  END overlay  -->
</section> <!--  END section-subscribe  -->
<?php endwhile; wp_reset_postdata(); ?>
<?php } ?>
<?php while (have_posts()) : the_post(); ?>
<div class="section section-blog">
	<div class="container">
		<div class="column-container inner-page-columns">
			<div class="column-12-12">
				<div class="gutter">
					<div class="inner-page">
						<article class="single-post clearfix">
							<?php the_content(); ?>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div> <!--  END container  -->
</div> <!--  END section-blog  -->
<?php endwhile; ?>
