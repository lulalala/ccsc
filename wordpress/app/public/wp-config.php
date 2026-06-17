<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'H5uCv%,U#}Sz|&;AcK:XJZ6{NiKG@Cb6xN`Ko8Llp-BXtZ]u^=i~KTp3_%AG>;V,' );
define( 'SECURE_AUTH_KEY',   '?B ,,,-,$X}wRM(^ZlejLo!_t7DzkO!`^TR,s+KR-pb1@J&Hxi^$nZ@sNPNe`P$v' );
define( 'LOGGED_IN_KEY',     'ze]PSb^}n7V,,ZIT7:440seQ,>!(7AMy-EBS]p=38xkBl+yg(5L.K:6]s]J|&ZnH' );
define( 'NONCE_KEY',         'XH~/9 ;V.kC(3v9,<n$vp_4BFCh tE:4 Cl0JDbGf^q[d}yzW/A}O<|f@:M%Wt*S' );
define( 'AUTH_SALT',         '~xaL}IxLW=pTT~}4iZ3cI-f~k|iCsYY)ZVHe:[L/uvmlZa,1h1eKO@jomU#:QRf@' );
define( 'SECURE_AUTH_SALT',  ' $vXD;$OLjy:[7ARf7#0(|]%}TM>eS:(:jVo$Pp7})bc+|-u?%Re^/bZEj#pV<:r' );
define( 'LOGGED_IN_SALT',    'C^38xCrEY~])-1%4sM>fN9;Tz`D6OmpXLP-TuO9NKV.0-fpc_Mx>TXz;/FiYae|,' );
define( 'NONCE_SALT',        '2B{@Asi}r*~`2XHtp+kX@4`Xb~DkVcU_w@wE%y`QLx*vP.wsb$e_{[]NQ6By*4uD' );
define( 'WP_CACHE_KEY_SALT', '+rc)37h]5#?H)IGD9R}nZUl4b7-BVAn|az8VygzvR+Y/-DFu&98 3fWv#{vPLB%S' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
