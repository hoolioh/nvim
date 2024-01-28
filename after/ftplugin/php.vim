"PHP
let g:php_folding = 2
"Vdebug
let g:vdebug_options= {
\    "port" : 10000,
\    "server" : '',
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 0,
\    "ide_key" : 'netbeans-xdebug',
\    "watch_window_style" : 'compact',
\    "marker_default"     : '⬦',
\    "marker_closed_tree" : '▸',
\    "marker_open_tree" : '▾',
\    "path_maps" : {
\       "/var/www/html": '/home/julio/projects/php/hdiv-php-agent/integration-tests/target/466b81c5-393a-37c7-8cb8-960ec2795f8f/php_5_3_fpm/apps/html/',
\       "/usr/local/lib/php/HTML/Template/" : '/home/julio/projects/php/hdiv-php-agent/integration-tests/HTML_Template_Sigma/HTML/Template',
\       "/opt/hdiv/php/agent/src" : '/home/julio/projects/php/hdiv-php-agent/src/'
\    }
\}

"Ctags generation
let g:gutentags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml', 
            \ '*.phar', '*.ini', '*.rst', '*.md',
            \ '*.cmd',
            \ '*build/*', '*travis/*', '*dist/*',
            \ '*var/cache*', '*var/log*']

let g:gutentags_ctags_extra_args = ['--fields=+aimlS --PHP-kinds=+cdfint-av']
