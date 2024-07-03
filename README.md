# Caddy

![pull](https://img.shields.io/docker/pulls/wjqserver/caddy.svg) ![size](https://img.shields.io/docker/image-size/wjqserver/caddy)

项目简介
---
本项目使用Github Action对Caddy进行编译并打包Docker镜像

#### 插件列表:
 - github.com/caddyserver/cache-handler
 - github.com/ueffel/caddy-brotli
 - github.com/caddyserver/transform-encoder
 - github.com/RussellLuo/caddy-ext/ratelimit
 - github.com/caddy-dns/cloudflare

## 安装

    ### Docker-CLI
    
    - Debian-slim底包
      ```
      docker run -d -p 80:80 -p 443:443 -v ./caddy/config:/data/caddy/config -v ./caddy/config.d:/data/caddy/config.d -v ./caddy/log:/data/caddy/log --restart always wjqserver/caddy:latest
      ```
    - Alpine底包
    
      ```
      docker run -d -p 80:80 -p 443:443 -v ./caddy/config:/data/caddy/config -v ./caddy/config.d:/data/caddy/config.d -v ./caddy/log:/data/caddy/log --restart always wjqserver/caddy:alpine
      ```    
        
   ## Docker-Compose
    
   - Debian-slim底包
    
      ```
      version: '3.9'
      services:
          caddy:
              image: 'wjqserver/caddy:latest'
              restart: always
              volumes:
                  - './caddy/log:/data/caddy/log'
                  - './caddy/config.d:/data/caddy/config.d'
                  - './caddy/config:/data/caddy/config'
              ports:
                  - '443:443'
                  - '80:80'

      ```
      
   - Alpine底包
      ```
      version: '3.9'
      services:
          caddy:
              image: 'wjqserver/caddy:alpine'
              restart: always
              volumes:
                  - './caddy/log:/data/caddy/log'
                  - './caddy/config.d:/data/caddy/config.d'
                  - './caddy/config:/data/caddy/config'
              ports:
                  - '443:443'
                  - '80:80'      
      ```   
      
相关链接
---

[Caddy官方Github仓库](https://github.com/caddyserver/caddy)
