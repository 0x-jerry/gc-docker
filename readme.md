## 使用方式

直接使用 `test/docker-compose.yaml` 即可启动。

具体配置请参考：[test](./test)

### 1. 更改配置

修改配置 `test/config.json`

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

### 2. 启动服务

```sh
docker compose -f "test/docker-compose.yaml" up -d --build
```

### 3. 设置代理

启动代理

```sh
sh ./proxy.sh
```

然后设置代理 http://ip:8080

访问： http://mitm.it/ 下载证书（必须要设置代理，才能访问)

选择对应设备，安装并信任证书

最后，启动游戏！
