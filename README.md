Requirements
sudo apt-get install apache2
sudo apt-get install curl (Optional for tests)
Enable cgi
$ cd /etc/apache2/mods-enabled
$ sudo ln -s ../mods-available/cgi.load
sudo service apache2 reload

Enable execution:
sudo chmod +x /usr/lib/cgi-bin/example.sh

Test it:
curl http://127.0.0.1/cgi-bin/example.sh
curl http://127.0.0.1/cgi-bin/example.sh?name=yourname

You can also test on your browser: http://127.0.0.1/cgi-bin/example.sh?name=yourname or http://127.0.0.1/cgi-bin/example.sh
