LATEST_WORDPRESS_URL=https://wordpress.org/latest.tar.gz

setup/remote-add:
	source .env && git remote add lolipop ssh://$LOLIPOP_SSH_ACCOUNT@$LOLIPOP_SSH_HOST:$LOLIPOP_SSH_PORT$LOLIPOP_GIT_REMOTE_PATH

public:
	git push lolipop master

download-wordpress:
	curl $(LATEST_WORDPRESS_URL) | tar -xzv
	mv wordpress/* ./
	rm -df wordpress
