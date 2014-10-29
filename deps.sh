apt-get -y update
apt-get -y upgrade

#adduser --firstuid 100 --ingroup nogroup --shell /etc/false --disabled-password --gecos "" --no-create-home mongodb;
#Add new user mongodb which is a system user, no home dir, in nogroup
useradd -r -s /bin/false --no-user-group --gid nogroup mongodb

#Install mongodb from pre-compiled binaries based on http://www.widriksson.com/install-mongodb-raspberrypi/
cp -R ./mongodb-rpi-binaries/mongo /opt;
chmod +x /opt/mongo/bin/*;

mkdir /var/log/mongodb;
chown mongodb:nogroup /var/log/mongodb;
mkdir /var/lib/mongodb;
chown mongodb:nogroup /var/lib/mongodb;

cp mongodb-rpi-binaries/debian/init.d /etc/init.d/mongod;
cp mongodb-rpi-binaries/debian/mongodb.conf /etc/;

ln -s /opt/mongo/bin/mongod /usr/bin/mongod;
chmod u+x /etc/init.d/mongod;

#Pull PJ source and install deps
mkdir /src && cd /src  && git clone https://github.com/ni-c/heimcontrol.js
cd /src/heimcontrol.js && npm install