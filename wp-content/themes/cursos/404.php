<?php
/**
 * The template for displaying page NOT FOUND.
 *
 * @package Cursos 
 */
 get_header(); ?>
<section class="section section-page-title" <?php if(get_theme_mod('cursos_blog_image')) { ?> style="background-image: url('<?php echo esc_url(get_theme_mod('cursos_blog_image')); ?>')"  <?php }  ?>>
	<div class="overlay">
		<div class="container">
			<div class="section-title">
				<div class="gutter">
					<?php _e( 'Not found', 'cursos' ); ?></h4>
					<p><?php _e( 'Sorry, but you are looking for something that isn\'t here.', 'cursos' ); ?></p>
				</div>
			</div> <!--  END seciton-title  -->
		</div> <!--  END container  -->
	</div> <!--  END overlay  -->
</section> <!--  END section-page-title  -->
<?php get_footer(); ?>