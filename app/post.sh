wget https://github.com/iikira/BaiduPCS-Go/releases/download/v3.6.2/BaiduPCS-Go-v3.6.2-linux-386.zip
unzip BaiduPCS-Go-v3.6.2-linux-386.zip
cd BaiduPCS-Go-v3.6.2-linux-386
chmod 777 ./BaiduPCS-Go
./BaiduPCS-Go login -bduss=${BDUSS}
./BaiduPCS-Go config set -savedir=./ -user_agent="Mozilla;5.0" -max_parallel=2048 -cache_size=256KB
./BaiduPCS-Go cd "/$FILE_DIR"
./BaiduPCS-Go d "$FILE_NAME"
cd ./$(find ./ -name '*_*' -type d)
cd "./$FILE_DIR"
curl https://api.telegram.org/bot${BOT_TOKEN}/sendDocument -X POST -F chat_id="$GROUP_ID" -F document="@$FILE_NAME"