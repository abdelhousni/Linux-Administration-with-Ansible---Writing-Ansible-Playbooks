# Introducing YAML and Playbooks

> In this course you will learn to create repeatably correct configurations in Ansible using Playbooks

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


### Configuring Nano
```
set autoindent
set tabsize 2
set tabstospaces
```

### Configuring Vim
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

### Microsoft Visual Studio Code (community edition) is ready go with YAML files and is free