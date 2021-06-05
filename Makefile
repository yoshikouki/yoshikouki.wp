setup/remote-add:
	source .env && git remote add lolipop ssh://$LOLIPOP_SSH_ACCOUNT@$LOLIPOP_SSH_HOST:$LOLIPOP_SSH_PORT$LOLIPOP_GIT_REMOTE_PATH

public:
	git push lolipop master
