# symfony-docker
base symfony project with docker features

# Requirements:
- *nix environnment
- docker installed
- current user in docker group
- php cli enabled

# How to use it
clone this project
<pre>
  git clone git@github.com:jguido/symfony-docker.git
</pre>

Install dependencies
<pre>
  composer install
</pre>

Answer composer's question for the database connection, smtp and others (you can set database information to default, you will need to return to the parameters file after)

After installation with composer finish run

<pre>
  sh run.sh env
  or
  sh run.sh prod
</pre>

You can specify some options in the sh file

- port => the external port use for accesing the database
- DOMAIN_NAME the name of the project
- FILE_NAME the name of the folder user for the docker persistence

The script will give you information about the database connection from the docker image

that's all folks
