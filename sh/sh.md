# sh
### ubuntu
1. ubuntu默认的shell是dash！！！需要将其改为bash
* 查看自己的ubuntu系统的shell是否为bash
```sh
$ ls -l /bin/sh
/bin/sh -> dash
```
* 更改为bash
```sh
$ sudo dpkg-reconfigure dash
然后选择“否”
```
* 检测是否更改
```sh
$ ls -l /bin/sh
/bin/sh -> bash
```
