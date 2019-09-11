<?php
/**
 * Cursos functions and definitions
 *
 * @package Cursos
 */

/**
 * Set the content width based on the theme's design and stylesheet.
 *
 * @see http://developer.wordpress.com/themes/content-width/Enqueue
 */

function cursos_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'cursos_content_width', 986 );
}
add_action( 'after_setup_theme', 'cursos_content_width', 0 );

/**
 * Theme support and thumbnail sizes
*/

if( ! function_exists( 'cursos_theme_setup' ) ) {

	function cursos_theme_setup() {

		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on BuildPress, use a find and replace
		 */

		load_theme_textdomain( 'cursos', get_template_directory() . '/lang' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		// Add default title support
		add_theme_support( 'title-tag' );

		// Add default logo support
    add_theme_support( 'custom-logo' );

		// Custom Backgrounds
		add_theme_support( 'custom-background', array(
			'default-color' => 'ffffff',
		) );

		/**
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
		 */

		add_theme_support('post-thumbnails');
		set_post_thumbnail_size( 150, 150, true);

		add_image_size('cursos-photo-360-240', 360, 240, true);
		add_image_size('cursos-photo-240-240', 240, 240, true);
		add_image_size('cursos-photo-800-500', 800, 500, true);

		// Menus
        register_nav_menu( 'cursos-menu', _x( 'Main Menu', 'backend', 'cursos' ) );

		// Add theme support for Semantic Markup
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption'
		) );

		// add excerpt support for pages
		add_post_type_support( 'page', 'excerpt' );

	}
	add_action( 'after_setup_theme', 'cursos_theme_setup' );
}

/**
 * Displays custom logo.
 */
function cursos_the_custom_logo() {
	if ( function_exists( 'the_custom_logo' ) ) {
		the_custom_logo();
	}
}



/**
 * Customizer additions.
 */

include_once( trailingslashit(get_template_directory()) . '/customizer.php' );


/**
 * About themes additions.
*/

include_once( trailingslashit(get_template_directory()) . '/about.php' );

/**
 * Enqueue CSS stylesheets
 */


if( ! function_exists( 'cursos_enqueue_styles' ) ) {
	function cursos_enqueue_styles() {

		// OWL Carousel
		wp_enqueue_style( 'owl-carousel', get_template_directory_uri() . '/assets/css/owl.carousel.css', array(), '1.0' );

		// OWL Theme
		wp_enqueue_style( 'owl-theme', get_template_directory_uri() . '/assets/css/owl.theme.css', array(), '1.0' );

		// OWL Transitions
		wp_enqueue_style( 'owl-transitions', get_template_directory_uri() . '/assets/css/owl.transitions.css', array(), '1.0' );

		// Font Awesome
		wp_enqueue_style( 'font-awesome', get_template_directory_uri() . '/assets/css/font-awesome.css', array(), '1.0' );

		// main style
	    wp_enqueue_style( 'cursos-style', get_stylesheet_uri() );

	}
	add_action( 'wp_enqueue_scripts', 'cursos_enqueue_styles' );
}

/**
 * Enqueue JS scripts
 */

if( ! function_exists( 'cursos_enqueue_scripts' ) ) {
	function cursos_enqueue_scripts() {

		// owl carousel for sliders
		wp_enqueue_script( 'owl-carousel', get_template_directory_uri() . '/assets/js/owl.carousel.js', array('jquery'), null );

		// html5
		wp_enqueue_script( 'html5', get_template_directory_uri() . '/assets/js/html5.js' );
		wp_script_add_data( 'html5', 'conditional', 'lt IE 9' );

		// mediaqueries
		wp_enqueue_script( 'mediaqueries', get_template_directory_uri() . '/assets/js/css3-mediaqueries.js' );
		wp_script_add_data( 'mediaqueries', 'conditional', 'lt IE 9' );

		// main for script js
		wp_enqueue_script( 'cursos-main-js', get_template_directory_uri() . '/assets/js/main.js', array('jquery'), null );

		// for nested comments
		if ( is_singular() && comments_open() ) {
			wp_enqueue_script( 'comment-reply' );
		}
	}
	add_action( 'wp_enqueue_scripts', 'cursos_enqueue_scripts' );
}

/**
 * Register sidebars for Cursos
*/

function cursos_sidebars() {

	// Blog Sidebar

	register_sidebar(array(
		'name' => __( 'Blog Sidebar', "cursos"),
		'id' => 'blog-sidebar',
		'description' => __( 'Sidebar on the blog layout.', "cursos"),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	// Footer Sidebar

	register_sidebar(array(
		'name' => __( 'Footer Widget Area 1', "cursos"),
		'id' => 'footer-widget-area-1',
		'description' => __( 'The footer widget area 1', "cursos"),
		'before_widget' => '<aside id="%1$s" class="widget %2$s"> ',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => __( 'Footer Widget Area 2', "cursos"),
		'id' => 'footer-widget-area-2',
		'description' => __( 'The footer widget area 2', "cursos"),
		'before_widget' => '<aside id="%1$s" class="widget %2$s"> ',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => __( 'Footer Widget Area 3', "cursos"),
		'id' => 'footer-widget-area-3',
		'description' => __( 'The footer widget area 3', "cursos"),
		'before_widget' => '<aside id="%1$s" class="widget %2$s"> ',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));

	register_sidebar(array(
		'name' => __( 'Footer Widget Area 4', "cursos"),
		'id' => 'footer-widget-area-4',
		'description' => __( 'The footer widget area 4', "cursos"),
		'before_widget' => '<aside id="%1$s" class="widget %2$s"> ',
		'after_widget' => '</aside>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>'
	));
}

add_action( 'widgets_init', 'cursos_sidebars' );

// Create Function Credits

if ( ! function_exists( 'cursos_credits' ) ) :
	function cursos_credits() {

		$text = sprintf( __('Theme created by <a href="%1$s">PWT</a>. Powered by <a href="%2$s">WordPress.org</a>', 'cursos'), 'https://www.pwtthemes.com/', 'http://wordpress.org/');

		echo apply_filters( 'cursos_credits_text', $text) ;
	}
endif;

add_action( 'cursos_display_credits', 'cursos_credits' );
?>
