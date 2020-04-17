# FuckBaiduPCS

使用 Github actoins 脚本并利用 [BaiduPCS-Go](https://github.com/iikira/BaiduPCS-Go) 下载百度网盘的文件，然后将其推送到 Telegram 群组。

> 注意：经过实测发现即使使用 Github 的服务器下载，效果也不尽人意，大概在 100kb/s 左右，请按需使用，请勿传播。
>
> 唯一的优点大概就是不浪费本地资源，可以挂很久。

## 食用教程

**1.Fork一份本项目**

**2.部署一个 Telegram bot**

在 telegram中搜索 BotFather，创建一个 Bot，拿到 `BOT_TOKEN`。大概长这样：`123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11`。

将这个 Bot 添加到任意一个群组，然后拿到群组的 ID。大概长这样：`-1002333333333`。

**3.配置 Repo 的 Secrets**

在 Repo 的 Secrets 区域添加以下值：

|           |                             说明                             |
| :-------: | :----------------------------------------------------------: |
|   BDUSS   | 通过此值登录百度账号，详见[关于 获取百度 BDUSS]([https://github.com/iikira/BaiduPCS-Go/wiki/%E5%85%B3%E4%BA%8E-%E8%8E%B7%E5%8F%96%E7%99%BE%E5%BA%A6-BDUSS](https://github.com/iikira/BaiduPCS-Go/wiki/关于-获取百度-BDUSS)) |
| BOT_TOKEN |                    之前申请的`BOT_TOKEN`                     |
| GROUP_ID  |                      之前获取的群组 ID                       |

**4.修改流程文件并 commit**

文件在 `.github/workflow/android.yml`，将文件中的 `FILE_DIR` 和 `FILE_NAME` 分别改成需要下载的文件所在的目录和文件名称即可。随后 commit。

**5.坐与放宽**

## 免责声明

- 本项目可能违反 Github 相关条款规定，请酌情使用，由于您使用此项目造成包括且不限于你号没了等不可预料情况，请自行承担责任。