
# Getting started
+++ 
1. Register for an account on github.com
2. Download, install and configure git
3. Configure Git in your terminal

But first ...

+++ 

### Work with SSH keys

1. Make sure Git Bash is installed
2. Create an SSH key pair (`ssh-keygen`)
3. Register public key (`~/ssh/id_rsa.pub`) on Github


<https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>

+++

### Work with SSH keys

Volg de link en voer de stappen uit.

<https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>

+++

### Git basic configuration

@code[bash zoom-07](assets/src/gettingstarted/config.sh)

or short 

```console
git config --global --edit
```


+++

### Output

@code[bash zoom-03](assets/src/gettingstarted/output.txt)
@[18, zoom-12](This is a nice feature to have beautiful output)


+++
### Check if everything is correct

```console
git config --list
```


+++

### `git status` FTW!


- current state
- next step
- step back


