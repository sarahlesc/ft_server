<?php

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
 define('AUTH_KEY',         '0l&Uwd(]/6ed#LfM80!TISzQ4)~Ko$cH|h9_P{5Eob>;sSmhF0 4V8B`y%9PSq;V');
 define('SECURE_AUTH_KEY',  'VEhSNeud{+v>exFzba,O2@q4Q0n~QeYo],9gZ>9{7)oXL,,)A;#L(!-Fah(QQPSf');
 define('LOGGED_IN_KEY',    'C1Cs~h{XNIVvY.2<?Jl#vPAWXo!zfLl*pW=m/f0{|Hv%?;_m6H*F5RoZ:bl%3sQC');
 define('NONCE_KEY',        '^<_H+-W~=h1tRqi2%@79XJpQ0G,i<eqF98Wp~7S@+Qib!App+DfAqpqkd?;)sTlt');
 define('AUTH_SALT',        'o3x[?;mq.A%edw]?R-uaM7WNbg= b_g9&Va]5]M$lMz[b^iu?1jg?#P|uY=yHf:#');
 define('SECURE_AUTH_SALT', 'Wh2Kdj:j)3fF:o4!S{GX^J:qdwW:dX[xjYOW;[ |XM+{8yliU%2pc|LJH&z+lRq.');
 define('LOGGED_IN_SALT',   '+Ep*F&Q|@,Lu?Rww|De@SYV{0Bd@me~5-mXGm}54Pv0u7~*nh~z?H*4x;b#bSO38');
 define('NONCE_SALT',       'O|6M||jm5$yMtu-RBHumoP^@`l|(yEF8s-aw?|khp3|!8Li1{LFe+DcfVBnG|!LO');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
