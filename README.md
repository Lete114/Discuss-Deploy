目前未经过测试，由于 [@Lete 乐特](https://github.com/Lete114) 对 Docker 的了解甚少，所以只能做到这一步

所以，如果你对 Docker 比较了解的话，我希望你能够帮助我完成 Discuss 评论系统的 Docker 部署方式，谢谢



# Usage

## Docker

```bash
docker run --name discuss -p 6870:6870 -e DISCUSS_DB_TYPE=mongodb -d lete114/discuss

# 或

docker run --name discuss -p 6870:6870 --env-file .env.example -d lete114/discuss
```


## Docker Compose

```bash
wget -O docker-compose.yml https://raw.githubusercontent.com/lete114/Discuss-Deploy/Docker/docker-compose.yml
wget -O init-mongo.js https://raw.githubusercontent.com/lete114/Discuss-Deploy/Docker/init-mongo.js

docker-compose up -d
```
