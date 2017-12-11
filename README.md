# operate-servers-synchronously

A tool used to operate multiple servers and operate synchronously,
using simple `oss -l host_list`

![](https://raw.githubusercontent.com/chenzz/static-resource/master/0CE23A0B-0592-449A-918B-76BF1037A845.gif)

## 1、Recommend Usage

### 1.1 set environment variables 

```shell
export PATH=${PATH}:/path/to/oss
```

### 1.2 set config file

```shell
cd /path/to/oss
touch config.sh
cat "user=zhangsan" >> config.sh
cat "port=1046" >> config.sh
cat "key=~/.ssh/id_rsa" >> config.sh
```

### 1.3 use oss

```shell
touch host_list
echo "10.165.124.1" >> host_list
echo "10.165.124.2" >> host_list

oss -l host_list
```

## 2、Other Usage

* syntax

```shell
oss [-u user] [-p port] [-i identify_key] [-l ip_list_file] [ip1 ip2 ... ipn]

```
* example

```shell
oss test12 test13
oss 10.165.124.18 10.165.124.34
oss -u zhangsan -p 1000 10.165.124.18 10.165.124.34
oss -l ip_list_file
```

## 3、Config

If you want set default value for `username`/`port`/etc, 
jus add a config file named `config.sh` and add following config:

```shell
username=zhangsan2
port=2222
key=~/.ssh/id_rsa
```

Oss will load it from the file.


## 4、Reference
1. NeteaseSshScript
2. [TMUX – The Terminal Multiplexer (Part 2)](http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#tmux-shell-scripting)
3. [a script to ssh multiple servers over multiple tmux panes](https://gist.github.com/johnko/a8481db6a83ec5ea2f37)


