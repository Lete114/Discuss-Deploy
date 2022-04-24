目前未经过测试，由于 [@Lete 乐特](https://github.com/Lete114) 对 Docker 的了解甚少，所以只能做到这一步

所以，如果你对 Docker 比较了解的话，我希望你能够帮助我完成 Discuss 评论系统的 Docker 部署方式，谢谢

# Usage

## Docker

克隆当前仓库，然后自己进行构建镜像

> 1. 自定义 discuss 的版本可在 Dockerfile 内修改 npm 安装的版本
> 2. 启动经镜像容器时，你需要设置环境变量，具体环境内容请看[.env.example](https://github.com/Lete114/Discuss/blob/dev/.env.example)
> 3. 设置环境变量，可以使用 docker 的`--env-file`命令属性
>
> ```bash
> docker run --name discuss -d -p 6870:6870 镜像id --env-file .env
> ```

```bash
## 构建镜像
docker build -t discuss .

## 启动镜像容器
docker run --name discuss -d -p 6870:6870 镜像id
```

## Docker Compose

> 注意: 这只是个例子

```bash
wget -O docker-compose.yml https://raw.githubusercontent.com/lete114/Discuss-Deploy/Docker/docker-compose.yml
wget -O init-mongo.js https://raw.githubusercontent.com/lete114/Discuss-Deploy/Docker/init-mongo.js

docker-compose up -d
```
