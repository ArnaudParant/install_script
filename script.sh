sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install libev-dev libgdbm-dev libncurses5-dev libpcre3-dev libssl-dev libsqlite3-dev libcairo-ocaml-dev m4 libev-dev ocaml ocaml-compiler-libs camlp4 camlp4-extra ocaml-findlib libfindlib-ocaml-dev libreact-ocaml-dev libssl-ocaml-dev libcryptokit-ocaml-dev libtext-ocaml-dev libcalendar-ocaml-dev libocamlnet-dev libzip-ocaml-dev libtype-conv-camlp4-dev ocamlduce libpam0g postgresql libextlib-ocaml-dev libcsv-ocaml-dev libpgocaml-ocaml-dev libpam-ocaml-dev mongodb-10gen

git clone https://github.com/Pumgrana/prototype.git
echo "Installing OPAM"
sleep 2
mv .opam $HOME/
sudo mv opam /usr/local/bin/
sudo mv opam-admin /usr/local/bin/
eval `opam config env`
echo "End of install"
sleep 2
echo "Setting Pumgrana Parameters"
sleep 2
cd prototype
sudo /etc/init.d/mongodb start
mongorestore export_db/pumgrana
make test.byte &
cd ..