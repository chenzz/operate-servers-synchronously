# operate-servers-synchronously

A tool used to ssh multi servers and operate synchronizely

## Usage

```shell
oss [-u user] [-p port] [-i identify_key] [-l ip_list_file] [ip1 ip2 ... ipn]

```
example

```shell
oss test12 test13
oss -l ip_list_file
```

### Reference
NeteaseSshScript
[TMUX – The Terminal Multiplexer (Part 2)](http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/#tmux-shell-scripting)
[a script to ssh multiple servers over multiple tmux panes](https://gist.github.com/johnko/a8481db6a83ec5ea2f37)
