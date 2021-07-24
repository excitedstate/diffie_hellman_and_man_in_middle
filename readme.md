
# 中间人攻击

> 本代码仅供交流和学习，由其他使用方法引发的纠纷与作者无关 

## 需求

### 第一阶段：`Diffie-Hellman` 协议的实现

1. 客户端与服务器之间通过` TCP Socket `通信；

2. 客户端与服务器之间通过 `Diffie-Hellman` 协议协商出对称密钥；

3. 客户端使用协商出的对称密钥对传输内容做加密，并发送给服务端； 

4. 服务端接受客户端发送过来的内容，进行解密；

5. 对称加密算法采用 `AES256-GCM`；

   ```c
   typedef struct dh_head{
       uint8_t type;
       uint8_t para_size;
   }DH_HEAD;
   typedef struct dh_body_item{
       uint8_t item_length;
       char item[256];
   }DH_BODY_ITEM;
   typedef struct dh_body{
       DH_BODY_ITEM body_item[256];
       uint8_t valid_length;
   }DH_BODY;
   typedef struct dh_mes{
       DH_HEAD head;
       DH_BODY body;
   }DH_MES;
   ```

   

### 第二阶段：`Diffie-Hellman` 中间人攻击方法研究与实现 

研究 `Diffie-Hellman `协议，研究中间人攻击方法并完成相关代码。当通信双方进行通信时，中间人攻击程序可以解密出传输内容；

### 第三阶段：`Diffie-Hellman` 协议改进 

基于预共享密钥的方式对 `Diffie-Hellman `做改进，使协议抵抗中间人攻击。完成协议设计，实现代码并用第 2 阶段的中间人攻击程序做验证

## 需求分析

1. `TCP`并发服务器和客户端
2. 日志系统设计(所有的输出采用日志，用控制字符加上颜色)
3. 加解密函数以及大数类设计
4. 协议设计
5. 中间人攻击(一种可能会成功的方法，用`NIDS`去做)
   1. 原始套接字编程 发送特定TCP报文，截获TCP连接。
      1. C网卡开启混杂模式
      2. 当检测到A到B的SYN报文时，向A发`SYNACK`，同时等待B返回的`SYNACK`
      3. 当得到B返回的`SYNACK`以及A返回的`ACK`，TCP截获就完成了
   2. 完成TCP连接截获后，分别和A和B建立连接，整个过程就完成了
   3. 这里的关键就是：如何确保C发送伪造报文比A和B快
6. 中间人攻击：`ARP欺骗`，这个好像更好实现一点

7. `PSK`

## 概要设计

1. 使用函数库
   1. 加密/解密/DH协议模拟: `openssl`
   2. 抓包/解包：`libpcap`或者`libnids`
   3. `ARP`欺骗：先用命令行(`arpspoof`)模拟，再用C语言实现
2. 公共模块设计
   1. 协议解析和生成模块
   2. 日志模块

## 协议设计

| 位置 | 字段名称 | 说明                                                         |
| ---- | -------- | ------------------------------------------------------------ |
| +0   | 类型     | 报文头，说明本条报文的类型                                   |
| +1   | 参数长度 | 报文头，说明本条报文的字段数量                               |
| +2   | 数据区   | 由参数长度个数据组成，其中包括数据项长度(1字节)n和数据项(n字节)，如`"\x05hello"` |

## 协议规定的报文类型之后在做讨论

```c
typedef enum {
    HEARTBREAK_REQ,
    HEARTBREAK_RES,
    // ...
} DH_MSG_TYPE;
const char MSG[255][16] = {
    "heartbreak request",
    ""
}
printf("%d, %s", a->type, MSG[a->type]);
```



### 心跳包请求(已弃用)

| 位置 | 字段值 | 说明                         |
| ---- | ------ | ---------------------------- |
| +0   | 0x01   | 发送心跳包                   |
| +1   | 0x00   | 无参数，验证连接存在         |
|      | 0x01   | 带认证参数，证明对端连接正常 |

### 心跳包应答(已弃用)

| 位置 | 字段值 | 说明                               |
| ---- | ------ | ---------------------------------- |
| +0   | 0x02   | 心跳包响应                         |
| +1   | 0x00   | 无参数                             |
|      | 0x01   | 带计算后的字符串，证明对端连接正常 |

### 请求协商密钥

| 位置 | 字段值 | 说明          |
| ---- | ------ | ------------- |
| +0   | 0x03   | 请求协商密钥  |
| +1   | 0x03   | 参数为g, p, A |

### 回应协商密钥

| 位置 | 字段值 | 说明         |
| ---- | ------ | ------------ |
| +0   | 0x02   | 请求协商密钥 |
| +1   | 0x01   | 参数为B      |

### 密钥协商成功标志

| 位置 | 字段值 | 说明           |
| ---- | ------ | -------------- |
| +0   | 0x05   | 密钥协商成功   |
| +1   | 0x00   | 无参数         |
|      | 0x01   | 可附加一条消息 |

### 会话报文

| 位置 | 字段值 | 说明     |
| ---- | ------ | -------- |
| +0   | 0x06   | 会话报文 |
| +1   | 0x01   | 消息内容 |

### 失败报文

| 位置 | 字段值 | 说明                           |
| ---- | ------ | ------------------------------ |
| +0   | 0xff   | 失败报文                       |
| +1   | 0x00   | 无参数，默认输出日志“ failed ” |
|      | 0x01   | 错误标志字                     |

---

## 编译
```sh
./rebuild.sh
```

## 运行

### 运行通信程序

> 基于DH协议的安全通信程序

```sh
## server
cd ./bin
./server [ip] [port]

## client
cd ./bin
./client [ip] [port]
```

### 运行安全通信程序

> 基于DH协议和PSK的安全通信协议 psk两方传的一定要一样

```sh
## server
cd ./bin
./server_safe [psk] [ip] [port]
## client
cd ./bin
./client_safe [psk] [ip] [port]
```

### arp欺骗

```sh
## arp_spoof
cd ./bin
./arp_spoof ip1 ip2
```

### 中间人攻击

```sh
cd ./bin
./man_in_middle