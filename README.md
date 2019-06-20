### 注意
- Makefile里面的对齐都是原始的TAB，如果是空格，会出现猥琐的错误。
- 驱动编译之前，需要使用同样的架构编译内核，否则会出现错误

### 编译流程
- 解压内核源码-，解压patch
```
cd linux-source-4.9
patch -p1 < ../xxx.patch
```
- make menuconfig，选择
```
general setup
local version， 这里填写uname -r的结果
```
- 复制symbol
```
sudo cp /usr/src/linux-headers-4.9.0-9-amd64/Module.symvers ../linux-source-4.9
sudo chown -R `whoami`  ../linux-source-4.9/Module.symvers
```

需要先make一下，否则会报找不到某些文件的错误