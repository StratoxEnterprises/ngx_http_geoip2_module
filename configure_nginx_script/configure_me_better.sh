#!/bin/bash

./configure \
--with-cc-opt='-g -O2 -fPIE -fstack-protector-strong -Wformat -Werror=format-security -fPIC -Wdate-time -D_FORTIFY_SOURCE=2' \
--with-ld-opt='-Wl,-Bsymbolic-functions -fPIE -pie -Wl,-z,relro -Wl,-z,now -fPIC' \
--prefix=/usr/share/nginx                 \
--conf-path=/etc/nginx/nginx.conf         \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--lock-path=/var/lock/nginx.lock          \
--pid-path=/run/nginx.pid                 \
--modules-path=/usr/lib/nginx/modules     \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi  \
--http-proxy-temp-path=/var/lib/nginx/proxy      \
--http-scgi-temp-path=/var/lib/nginx/scgi        \
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi      \
--with-debug                     \
--with-pcre-jit                  \
--with-http_ssl_module           \
--with-http_stub_status_module   \
--with-http_realip_module        \
--with-http_auth_request_module  \
--with-http_v2_module            \
--with-http_dav_module           \
--with-http_slice_module         \
--with-threads                   \
--with-http_addition_module      \
--with-http_gunzip_module        \
--with-http_gzip_static_module   \
--with-http_sub_module           \
--with-http_xslt_module=dynamic  \
--with-stream=dynamic            \
--with-stream_ssl_module         \
--with-mail=dynamic              \
--with-mail_ssl_module           \
--add-dynamic-module=/usr/local/src/ngx_http_geoip2_module-3.0

