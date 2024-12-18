# Caddy

![pull](https://img.shields.io/docker/pulls/wjqserver/caddy.svg) ![size](https://img.shields.io/docker/image-size/wjqserver/caddy)

项目简介
---
本项目使用Github Action对Caddy进行编译并打包Docker镜像

#### 插件列表:
 - github.com/caddyserver/cache-handler
 - github.com/ueffel/caddy-brotli
 - github.com/caddyserver/transform-encoder
 - github.com/WJQSERVER/caddy-ext/ratelimit@2412182247(forked from github.com/RussellLuo/caddy-ext/ratelimit)
 - github.com/caddy-dns/cloudflare
 - github.com/mholt/caddy-l4(仅在L4固件内包含)

## 安装

### Docker-CLI
    
- Debian-slim构建

```
docker run -d -p 80:80 -p 443:443 -v ./caddy/config:/data/caddy/config -v ./caddy/config.d:/data/caddy/config.d -v ./caddy/log:/data/caddy/log --restart always wjqserver/caddy:latest
```

- Alpine构建

    
```
docker run -d -p 80:80 -p 443:443 -v ./caddy/config:/data/caddy/config -v ./caddy/config.d:/data/caddy/config.d -v ./caddy/log:/data/caddy/log --restart always wjqserver/caddy:alpine
```    
        
   ### Docker-Compose
    
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
      
## 许可证(License)

本仓库使用双重许可证，详细说明请参看[LICENSE_README](https://github.com/WJQSERVER-STUDIO/caddy/blob/main/LICENSE_README.md)文件，：

- Releases中的二进制文件`Caddy`继承[Caddy](https://github.com/caddyserver/caddy)的[Apache 2.0许可证](https://github.com/WJQSERVER-STUDIO/caddy/blob/main/LICENSE_caddy)
- 仓库内文件(除demo页面外)使用[WSL 1.2许可证](https://github.com/WJQSERVER-STUDIO/caddy/blob/main/LICENSE)

相关链接
---

[Caddy官方Github仓库](https://github.com/caddyserver/caddy)

[Docker鏡像](https://hub.docker.com/r/wjqserver/caddy)
