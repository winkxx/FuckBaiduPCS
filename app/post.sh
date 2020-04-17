wget https://github.com/iikira/BaiduPCS-Go/releases/download/v3.6.2/BaiduPCS-Go-v3.6.2-linux-386.zip
unzip BaiduPCS-Go-v3.6.2-linux-386.zip
cd BaiduPCS-Go-v3.6.2-linux-386
chmod 777 ./BaiduPCS-Go
./BaiduPCS-Go login -bduss=mVmdEtYTzNSSmUtZHBnNmcwM2pWOXNMMndmLVF2LU9UVVo1U0JudUQxfnM1Y0JlSVFBQUFBJCQAAAAAAAAAAAEAAABuZqA7wc6369S0zdvAss3bwLIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOxYmV7sWJleU
./BaiduPCS-Go config set -savedir=./ -user_agent="Mozilla;5.0" -max_parallel=500 -cache_size=256KB
./BaiduPCS-Go cd "/$FILE_DIR"
./BaiduPCS-Go d "$FILE_NAME"
cd ./$(find ./ -name '*_*' -type d)
cd "./$FILE_NAME"
curl https://api.telegram.org/bot${BOT_TOKEN}/sendDocument -X POST -F chat_id="$SMCI_CHANNEL_ID" -F document="@$FILE_NAME"