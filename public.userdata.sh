#!/usr/bin/env bash
su ec2-user
sudo yum install httpd -y
sudo systemctl start httpd
sudo su -c "cat > /var/www/html/index.html <<EOL
<html>
  <head>
     <title>Call to Arms</title>
     <style>
       html, body { background: #000; padding 0; margin: 0; }
       img { display: block; margin: 0px auto; }
     </style>
  </head>
  <body>
    <img src='https://i.giphy.com/media/9MFsKQ8A6HCN2/giphy.webp' height='100%'/>
  </body>
</html>
EOL"
