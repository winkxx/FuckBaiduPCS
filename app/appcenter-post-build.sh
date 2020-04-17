if [ "$AGENT_JOBSTATUS" == "Succeeded" ]; then
	wget https://github.com/iikira/BaiduPCS-Go/releases/download/v3.6.2/BaiduPCS-Go-v3.6.2-linux-amd64.zip
	unzip BaiduPCS-Go-v3.6.2-linux-amd64.zip
	cd BaiduPCS-Go-v3.6.2-linux-amd64
	chmod 777 ./BaiduPCS-Go
	./BaiduPCS-Go login -bduss=${BDUSS}
	./BaiduPCS-Go config set -savedir=./ -user_agent="Mozilla;5.0" -max_parallel=500 -cache_size=256KB
	./BaiduPCS-Go d "$FILE_DIR"
	cd $(find ./ -name '*_*' -type d)
    curl https://api.telegram.org/bot${BOT_TOKEN}/sendDocument -X POST -F chat_id="$SMCI_CHANNEL_ID" -F document="@$FILE_DIR"
fi