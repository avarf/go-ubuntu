
GOVERSION=$(curl https://golang.org/VERSION?m=text).linux-amd64.tar.gz
echo "go release: "
echo $GOVERSION

wget "https://dl.google.com/go/$GOVERSION"

tar xvf $GOVERSION