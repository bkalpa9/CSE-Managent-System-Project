<?php
/**
 * Cursos About Theme
 *
 * @package Cursos
 */
?>

<?php

// About theme info

add_action( 'admin_menu', 'cursos_abouttheme' );

function cursos_abouttheme() {

	add_theme_page( __('About Theme', 'cursos'), __('About Theme', 'cursos'), 'edit_theme_options', 'about-cursos', 'cursos_guide');

}

if( ! function_exists( 'cursos_admin_enqueue_styles' ) ) {
	function cursos_admin_enqueue_styles($hook) {

		if ( 'appearance_page_about-cursos' != $hook ) {
        return;
    }
		wp_enqueue_style( 'cursos-style-admin', get_template_directory_uri() . '/assets/css/style-admin.css', array(), '1.0' );
	}
	add_action( 'admin_enqueue_scripts', 'cursos_admin_enqueue_styles' );
}

//guidline for about theme

function cursos_guide() {
?>
<div class="wrapper-info">
	<div class="aedifcator-box">
   		<div class="aedifcator-box-title">
			<?php esc_html_e('About Cursos Theme', 'cursos'); ?>
		</div>
		<p><?php esc_html_e('Cursos is an awesome theme with fully responsive and compatible with newest version of WordPress, is easy to customizable, SEO Optimizable, Fast loading and an awesome panel options. Cursos Theme is perfect for a construction business, but also for various other business or personal blog, The customization of this theme is very easy.','cursos'); ?></p>
		<div class="proversion">
			<h3><?php esc_html_e('Upgrade to Pro version!', 'cursos'); ?></h3>
				<a class="upgradepro" target="_blank" href="<?php echo esc_url('https://www.pwtthemes.com/theme/cursos-responsive-wordpress-theme'); ?>" target="_blank"><?php esc_html_e('UPGRADE TO PRO', 'cursos'); ?></a>
				<a class="livepreviw" target="_blank" href="<?php echo esc_url('https://www.pwtthemes.com/demo/cursos'); ?>" target="_blank"><?php esc_html_e('LIVE PREVIEW', 'cursos'); ?></a>
			<p><?php esc_html_e('If you need assistance, please do not hesitate to', 'cursos'); ?> <a target="_blank" href="<?php echo esc_url('https://www.pwtthemes.com/contact'); ?>"><?php esc_html_e('contact us', 'cursos'); ?></a></p>
	        <h3><?php esc_html_e('FREE vs PRO', 'cursos'); ?></h3>

    	</div>
		<a href="<?php echo esc_url('https://www.pwtthemes.com/theme/cursos-responsive-wordpress-theme'); ?>" target="_blank"><img src="<?php echo esc_url(get_template_directory_uri()); ?>/assets/images/demo/freevspro.jpg" alt="" /></a>
	</div>
</div>
<?php } ?>
