# automated puppet fix (to find out why Apache is returning a 500 error)

exec { 'Fix wordpress_site':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell,
}
