VivaGyM_PostVenta
======

Desarrollo del sistema de post-venta para grupo VivaGyM


##Angular-App
An AngularJS app for rendering calendars for VivaGym


###Installation

####Local Machine
Note: you need Node, NPM, Bower, and PhantomJS to install this app. Also, this only works
if your in the angular directory.

```console
npm install
bower install
npm install -g phantomjs
```

####Ubuntu Server

Ubuntu does not have the latest version of Node needed for all the node
packages. You'll need to go around apt-get by using nvm instead. First run these
commands:

```console
sudo apt-get update
sudo apt-get install build-essential libssl-dev
```

To install the latest version of nvm, take a look at this [Github Repo]

[Github Repo]: https://github.com/creationix/nvm

You're looking for something that looks like this:

```console
curl https://raw.githubusercontent.com/creationix/nvm/v0.13.0/install.sh | bash
```

This will download the script and run it. It will install the software into a
subdirectory of your home directory at ~/.nvm. It will also add the necessary
lines to your ~/.profile file to use the file.

To gain access to the nvm functionality, you'll need to log out and log back in
again, or you can source the ~/.profile file so that your current session knows
about the changes:

```console
source ~/.profile
```

Now that you have nvm installed, you can install isolated Node.js versions.

To find out the versions of Node.js that are available for installation, you can
type:

```console
nvm ls-remote
```

```
. . .
 v0.11.6
 v0.11.7
 v0.11.8
 v0.11.9
v0.11.10
v0.11.11
v0.11.12
v0.11.13
```

As you can see, the newest version at the time of this writing is v0.11.13. You
can install that by typing:

```console
nvm install 0.11.13
```

Usually, nvm will switch to use the most recently installed version. You can
explicitly tell nvm to use the version we just downloaded by typing:

```console
nvm use 0.11.13
```

When you install Node.js using nvm, the executable is called node. You can see
the version currently being used by the shell by typing:

```console
node -v
```

Now you can go to the root of the Angular app and install the dependencies:

```console
npm install
npm install -g bower
bower install
```

##Development Servers and Testing

###Set up

For integration testing, you need to set up Apache to take www.vivagym.dev for
development. Here's how you set it up:

First, add these snippets of code to your their respective files, replacing for
the path to your copy of VivaGym

In /etc/apache2/extra/httpd-vhosts.conf

```
<VirtualHost *:80>
    ServerName vivagym.dev
    ServerAlias www.vivagym.dev
    DocumentRoot "path to vivagym"

    <Directory "path to vivagym">
        Options Indexes FollowSymLinks
        Allow From All
        AllowOverride All
    </Directory>
</VirtualHost>
```

In /etc/apache2/httpd.conf

```
127.0.0.1       vivagym.dev
127.0.0.1       www.vivagym.dev
```

Uncomment out this line in /etc/apache2/httpd.conf

```
Include /private/etc/apache2/extra/httpd-vhosts.conf
```

Then restart Apache

```
sudo apachectl restart
```

###Grunt Server

Grunt serve will automatically start the angular server for development and run
your test in the background.

```console
grunt serve
```

To just run just your tests:

```console
grunt test
```
