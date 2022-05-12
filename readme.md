## 使用方式

请按照步骤来，顺序很重要

### 0. 下载 grasscutter.jar

可到 https://github.com/Grasscutters/Grasscutter/releases 下载，或者自行编译。

下载后，移动到 `GrasscutterDocker/grasscutter.jar` 这里。

### 1. 更改配置

`config.json`

```json
{
  "GameServer": {
    "PublicIp": "your public id, LAN IP if local network"
  },
  "DispatchServer": {
    "PublicIp": "your public id, LAN IP if local network"
  }
}
```

### 2. 构建 `GrasscutterDocker/Dockerfile`

```sh
docker build --pull --rm -f "GrasscutterDocker/Dockerfile" -t grasscutter:latest "GrasscutterDocker"
```

### 3. 手动启动一次 `GrasscutterDocker/docker-compose.yaml`

```yaml
services:
  app:
    image: grasscutter
    # entrypoint: java -jar grasscutter.jar
    entrypoint: tail -f /dev/null
```

```sh
docker compose -f "GrasscutterDocker/docker-compose.yaml" up -d --build
docker exec -it <container-id>
```

然后在 docker 容器中执行：

```sh
java -jar grasscutter.jar
```

当看到这一行，表示这表示成功了。

```
[13:26:06] [INFO] Game Server started on port 22102
```

这个时候，关闭整个 docker-compose

```sh
docker compose -f "GrasscutterDocker/docker-compose.yaml" down
```

### 4. 更改 `GrasscutterDocker/docker-compose.yaml`

```yaml
services:
  app:
    image: grasscutter
    entrypoint: java -jar grasscutter.jar
    # entrypoint: tail -f /dev/null
```

然后再启动

```sh
docker compose -f "GrasscutterDocker/docker-compose.yaml" up -d --build
```

### 5. 设置代理

启动代理

```sh 
sh ./proxy.sh
```

然后设置代理 http://ip:8080

访问： http://mitm.it/ 下载证书（必须要设置代理，才能访问)

选择对应设备，安装并信任证书

最后，启动游戏！