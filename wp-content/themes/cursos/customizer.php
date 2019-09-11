<?php
/**
 * Cursos Theme Customizer
 *
 * @package Cursos
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */

function cursos_customize_register( $wp_customize ) {

	// Update Your Settings

	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';

    // Add General Sections

    $wp_customize->add_section('general',             array('title' => __('General', 'cursos'),          'description' => '',                                         'priority' => 130,));
    $wp_customize->add_section('blogpage',            array('title' => __('Blog', 'cursos'),             'description' => '',                                         'priority' => 170,));
    $wp_customize->add_section('socialmedia',         array('title' => __('Social Media', 'cursos'),     'description' => '',                                         'priority' => 180,));

	// Add Panels

	$wp_customize->add_panel('slider',                array('title' => __('Slider', 'cursos' ),          'description' => __( 'Slides Details', 'cursos' ),           'priority' => 140));
    $wp_customize->add_panel('homepage',              array('title' => __('Home Page', 'cursos'),        'description' => '',                                         'priority' => 160,));


	// Panels Slider

	$wp_customize->add_section('slide1',              array('title' => __('Slide 1', 'cursos'),          'description' => '',             'panel' => 'slider',		  'priority' => 140,));
	$wp_customize->add_section('slide2',              array('title' => __('Slide 2', 'cursos'),          'description' => '',             'panel' => 'slider',		  'priority' => 140,));

	// Panels Home Page

	$wp_customize->add_section('whyus',               array('title' => __('Why us', 'cursos'),           'description' => '',             'panel' => 'homepage',	   'priority' => 140,));
	$wp_customize->add_section('infobox',             array('title' => __('Info Box', 'cursos'),         'description' => '',             'panel' => 'homepage',	   'priority' => 140,));





    // Add Control General Settings

	$wp_customize->add_setting('cursos_header_email',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_header_email',array(
			'label'	=> __('Header Email','cursos'),
			'section'	=> 'general',
			'setting'	=> 'cursos_header_email'
	));

	$wp_customize->add_setting('cursos_header_phone',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_header_phone',array(
			'label'	=> __('Header Phone','cursos'),
			'section'	=> 'general',
			'setting'	=> 'cursos_header_phone'
	));

	$wp_customize->add_setting('cursos_copyrights',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_copyrights',array(
			'label'	=> __('Copyrights Text','cursos'),
			'section'	=> 'general',
			'setting'	=> 'cursos_copyrights'
	));

    // Add Control Blog Settings


	$wp_customize->add_setting('cursos_blog_image',array(
			'default'	=> esc_url(get_template_directory_uri()).'/assets/images/demo/bgh.jpg',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control(
	   new WP_Customize_Image_Control(
		   $wp_customize,
		   'cursos_blog_image',
		   array(
			   'label'      => __( 'Blog BG Image', 'cursos' ),
			   'section'    => 'blogpage',
			   'settings'   => 'cursos_blog_image',
			   'context'    => 'cursos_blog_image'
		   )
	   )
	);

	$wp_customize->add_setting('cursos_blog_page_title',array(
			'default'	=> __('Latest Blog','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_blog_page_title',array(
			'label'	=> __('Blog Page Title','cursos'),
			'section'	=> 'blogpage',
			'setting'	=> 'cursos_blog_page_title'
	));

	$wp_customize->add_setting('cursos_blog_subtitle',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_blog_subtitle',array(
		    'type' => 'textarea',
			'label'	=> __('Blog Page Sub Title','cursos'),
			'section'	=> 'blogpage',
			'setting'	=> 'cursos_blog_subtitle'
	));

    // Add Control Slider

	$wp_customize->add_setting('cursos_slider_content1',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_slider_content1',array(
			'label'	=> __('Slider Content 1','cursos'),
			'section'	=> 'slide1',
			'setting'	=> 'cursos_slider_content1',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_setting('cursos_slider_content2',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_slider_content2',array(
			'label'	=> __('Slider Content 2','cursos'),
			'section'	=> 'slide2',
			'setting'	=> 'cursos_slider_content2',
			'type' => 'dropdown-pages'
	));


    // Add Control Home Page


	$wp_customize->add_setting('cursos_whyus_icon_1',array(
			'default'	=> __('graduation-cap','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_whyus_icon_1',array(
			'label'	=> __('Icon 1','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_icon_1'
	));

	$wp_customize->add_setting('cursos_whyus_content_1',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_whyus_content_1',array(
			'label'	=> __('Content 1','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_content_1',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_control('cursos_whyus_button_text_1',array(
			'label'	=> __('Button Text 1','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_button_text_1'
	));


	$wp_customize->add_setting('cursos_whyus_icon_2',array(
			'default'	=> __('book','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_whyus_icon_2',array(
			'label'	=> __('Icon 2','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_icon_2'
	));

	$wp_customize->add_setting('cursos_whyus_content_2',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_whyus_content_2',array(
			'label'	=> __('Content 2','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_content_2',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_control('cursos_whyus_button_text_2',array(
			'label'	=> __('Button Text 2','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_button_text_2'
	));


	$wp_customize->add_setting('cursos_whyus_icon_3',array(
			'default'	=> __('briefcase','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_whyus_icon_3',array(
			'label'	=> __('Icon 3','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_icon_3'
	));

	$wp_customize->add_setting('cursos_whyus_content_3',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_whyus_content_3',array(
			'label'	=> __('Content 3','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_content_3',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_control('cursos_whyus_button_text_3',array(
			'label'	=> __('Button Text 3','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_button_text_3'
	));

	$wp_customize->add_setting('cursos_whyus_icon_4',array(
			'default'	=> __('institution','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_whyus_icon_4',array(
			'label'	=> __('Icon 4','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_icon_4'
	));

	$wp_customize->add_setting('cursos_whyus_content_4',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_whyus_content_4',array(
			'label'	=> __('Content 4','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_content_4',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_control('cursos_whyus_button_text_4',array(
			'label'	=> __('Button Text 4','cursos'),
			'section'	=> 'whyus',
			'setting'	=> 'cursos_whyus_button_text_4'
	));

	$wp_customize->add_setting('cursos_info_box_text',array(
			'default'	=> 0,
			'sanitize_callback'	=> 'cursos_sanitize_integer'

	));

	$wp_customize->add_control('cursos_info_box_text',array(
			'label'	=> __('Info Box Text','cursos'),
			'section'	=> 'infobox',
			'setting'	=> 'cursos_info_box_text',
			'type' => 'dropdown-pages'
	));


	$wp_customize->add_setting('cursos_info_box_button_text',array(
			'default'	=> __('Contact Us','cursos'),
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_info_box_button_text',array(
			'label'	=> __('Info Box Button Text','cursos'),
			'section'	=> 'infobox',
			'setting'	=> 'cursos_info_box_button_text'
	));

    // Social Media


	$wp_customize->add_setting('cursos_social_media_code1',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_social_media_code1',array(
			'label'	=> __('Social Media Code 1','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_code1'
	));

	$wp_customize->add_setting('cursos_social_media_link1',array(
			'default'	=> '',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control('cursos_social_media_link1',array(
			'label'	=> __('Social Media Link 1','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_link1'
	));

	$wp_customize->add_setting('cursos_social_media_code2',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_social_media_code2',array(
			'label'	=> __('Social Media Code 2','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_code2'
	));

	$wp_customize->add_setting('cursos_social_media_link2',array(
			'default'	=> '',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control('cursos_social_media_link2',array(
			'label'	=> __('Social Media Link 2','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_link2'
	));

	$wp_customize->add_setting('cursos_social_media_code3',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_social_media_code3',array(
			'label'	=> __('Social Media Code 3','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_code3'
	));

	$wp_customize->add_setting('cursos_social_media_link3',array(
			'default'	=> '',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control('cursos_social_media_link3',array(
			'label'	=> __('Social Media Link 3','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_link3'
	));

	$wp_customize->add_setting('cursos_social_media_code4',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_social_media_code4',array(
			'label'	=> __('Social Media Code 4','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_code4'
	));

	$wp_customize->add_setting('cursos_social_media_link4',array(
			'default'	=> '',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control('cursos_social_media_link4',array(
			'label'	=> __('Social Media Link 4','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_link4'
	));

	$wp_customize->add_setting('cursos_social_media_code5',array(
			'default'	=> '',
			'sanitize_callback'	=> 'sanitize_text_field'
	));

	$wp_customize->add_control('cursos_social_media_code5',array(
			'label'	=> __('Social Media Code 5','cursos'),
			'description' => __('Select a icon in this list <a target="_blank" href="http://fortawesome.github.io/Font-Awesome/icons/">http://fortawesome.github.io/Font-Awesome/icons/</a> and enter the code','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_code5'
	));

	$wp_customize->add_setting('cursos_social_media_link5',array(
			'default'	=> '',
			'sanitize_callback'	=> 'esc_url_raw'
	));

	$wp_customize->add_control('cursos_social_media_link5',array(
			'label'	=> __('Social Media Link 5','cursos'),
			'section'	=> 'socialmedia',
			'setting'	=> 'cursos_social_media_link5'
	));

}
add_action( 'customize_register', 'cursos_customize_register' );

function cursos_sanitize_integer( $input ) {
    return intval( $input );
}
