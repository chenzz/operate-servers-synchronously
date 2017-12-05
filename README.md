# operate-servers-synchronously

A tool used to ssh multi servers and operate synchronizely

## Usage

* syntax

```shell
oss [-u user] [-p port] [-i identify_key] [-l ip_list_file] [ip1 ip2 ... ipn]

```
* example

```shell
oss test12 test13
oss -l ip_list_file
```

## Config

If you want set default value for `username`/`port`/etc, 
jus add a config file named `config.sh` and add following config:

```shell
username=zhangsan2
port=2222
key=~/.ssh/id_rsa
```

Oss will load it from the file.


### Reference
NeteaseSshScript
[TMUX – The Terminal Multiplexer (Part 2)](http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#tmux-shell-scripting)
[a script to ssh multiple servers over multiple tmux panes](https://gist.github.com/johnko/a8481db6a83ec5ea2f37)


