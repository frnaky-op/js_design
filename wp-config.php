<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ma_cms_module');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~--gwy[s>T)EVi+dRvhaZ#peXK[wno,ZnrBW3^fU$`,*[u%7F.`mY_Q29![Yrg^.');
define('SECURE_AUTH_KEY',  'f<`#u,XdbRa7x,MTh*lsYaR,>m:VZqR#JW)qymZl]uCzdE~(TxOMaZb]yuk.uC}Y');
define('LOGGED_IN_KEY',    'ph&=$.iGpoWQI/pNq!`x)LDoeKgZV(|C1fFc424;!TN0Ge@qiN8&Nf^]{*/{TVD]');
define('NONCE_KEY',        '`/sW|&^H[SRLI/bkN7Q;&00lGpeP`D{R3URc6#?/0(J!O/nlT&PFE8d0?Zh=8,~j');
define('AUTH_SALT',        'Mt#[~9cl5-8#[o9@>JdkKfKhkz/*hcHejlJ*6ywRF^wa5<O59NjA8ph*nwg3Ha6&');
define('SECURE_AUTH_SALT', 'm$N33 ?sP8V{18#5Rz~Z+(G$uFg`5(~o  NEKSxZu-,k&/[:&Qj%GCfu&Q9Ac>Oi');
define('LOGGED_IN_SALT',   'R;V[B ^Z4TB+XHVf:vHlY<sa5foHy$AffY/hJ Y]D![4~..wX`A]]yr(%;I0zKY^');
define('NONCE_SALT',       '$Q&2{SF>x)L/ YtpJ!0X3!)9(*N#~oRD</`iP3EDU%z%$REWPx{30>T4bVa?iU49');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'kmt_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
