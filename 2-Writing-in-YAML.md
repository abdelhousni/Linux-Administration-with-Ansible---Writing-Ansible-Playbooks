# Writing in YAML

## Course Overview
- Understanding YAML
- Playbooks vs Scripts
- Linting YAML
- Common Playbook Solutions

## Module Overview
- Configuring Editors for YAML

---

**Y**AML<br>
**A**in't<br>
**M**arkup<br>
**L**anguage.<br>

YAML Represents Data Structures in Text Files

## Parsing YAML

### Online YAML Parser
http://www.yaml-online-parser.appspot.com/
https://jsonformatter.org/yaml-parser

> ⚠ Significant White Space ⚠

In YAML, leading whitespace is significant, meaning we do not need the array of brackets
seen in JSON. Indent related keys with two spaces, convert tabs to spaces to make life easier

```sh
cat file

user :
    name: bob
    dept: sales
user :
    name: bob
    dept: sales
```

```sh
cat -vet file

user :
    name: bob
    dept: sales
user :
    name: bob
    dept: sales
```

## Choosing Text Editors and IDEs for YAML

### Creating a .nanorc File
```
set autoindent
set tabsize 2
set tabstospaces
```

### Creating a .vimrc File
```
"syntax on: This line enables syntax highlighting. This makes different parts of your code (like keywords, variables, comments) appear in different colors, which can make it easier to read and understand.
syntax on
" set bg=dark: This line sets the background color of your Vim editor to dark. This is useful if you prefer a dark theme for your coding environment.
set bg=dark
" autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul: This line is a bit more complex. It’s an autocommand that applies certain settings whenever you open a file of type ‘yaml’. Here’s what each setting does:
" ai (autoindent): This turns on automatic indentation, which means Vim will automatically indent new lines to the same level as the previous line.
" et (expandtab): This makes Vim use spaces instead of tabs for indentation.
" ts=2 (tabstop): This sets the width of a tab character to 2 spaces.
" sw=2 (shiftwidth): This sets the number of spaces used for each step of (auto)indent. Setting it to 2 means each indent will be 2 spaces.
" cuc (cursorcolumn): This highlights the screen column of the cursor with a different color.
" cul (cursorline): This highlights the screen line of the cursor with a different color.
autocmd FileType yaml setlocal ai et ts=2 sw=2 cuc cul
```

### Working with VS Code
 Microsoft Visual Studio Code (community edition) is ready go with YAML files and is free

### The Problem with Tabs

### Understanding Playbooks

```sh
$ mkdir —p ansible/simple
$ cd ansible/simple
$ vim FirstPlay.yam1
- name: My First Play
  hosts: all
  become: true
  tasks:
    - name: My First Task
      package:
        name: tree
        state: present
```

#### Creating Playbooks
Using Playbooks, we can reference the same configuration and inventory used with ad-hoc commands. 
A Playbook will contain at least one Play and one of more Tasks within the Play


#### Linting YAML
We can install the ansible-lint Python modules that Will check you Playbook against style
guidelines. Here there are no errors.

```sh
sudo apt install python3-pip
python3 -m pip install --upgrade ansible-lint --user
# or
sudo apt install ansible-lint
```

#### Syntax Check
We can also check the correct syntax is  employed in the playbook

```sh
$ ansible—playbook FirstPlay.yaml --syntax-check
```

##### Implementing a No-Operation Check
Going beyond syntax checking we can try the option `-C` to check the operation without implementing change.
This works best with the verbose option `-v`

```sh
$ ansible-playbook -C -v FirstP1ay.yam1
```

### Using Variables and Debugging Playbooks

#### Default Task
The default task collects facts about the operating system. If these facts are not needed, we can turn it off in the Play

#### Debug and Show Progress
In many languages, being able to print variables and the progress is very useful in ensuring the correct operation. 
We can use the gathered facts as variables in the Playbook.

```yaml
- name: My First Play
    hosts : all
    become: true
    tasks :
        - name: My First Task
          package :
            name: tree
            state : present
- name: Print Progress
    debug:
    msg: "This is {{ ansible_os_family }}"
```