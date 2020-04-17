if [ "$AGENT_JOBSTATUS" == "Succeeded" ]; then
	wget https://github.com/iikira/BaiduPCS-Go/releases/download/v3.6.2/BaiduPCS-Go-v3.6.2-linux-amd64.zip
    export name=$(find $APPCENTER_OUTPUT_DIRECTORY -name '*.apk')
    curl https://api.telegram.org/bot${BOT_TOKEN}/sendDocument -X POST -F chat_id="$SMCI_CHANNEL_ID" -F document="@BaiduPCS-Go-v3.6.2-linux-amd64.zip"
fi