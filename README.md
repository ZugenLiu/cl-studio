# cl-studio
IDE for Common Lisp based on Emacs (24.x or above) and [emacs.d](http://coderwall.com/purcell).

# Prelude
This distribution contains set plugins for productive work on Common Lisp by my opinion. You can add support for the other languages yourself using standard emacs way.

# Installation

To install, clone this repo to `~/.emacs.d`, i.e. ensure that the
`init.el` contained in this repo ends up at `~/.emacs.d/init.el`:

```
git clone https://github.com/avatar29A/cl-studio.git ~/.emacs.d
```

Upon starting up Emacs for the first time, further third-party
packages will be automatically downloaded and installed. If you
encounter any errors at that stage, try restarting Emacs, and possibly
running `M-x package-refresh-contents` before doing so.

# Quick Start

1. Install sbcl

See official documentations http://www.sbcl.org/getting.htm

2. Install quicklisp

See https://www.quicklisp.org/beta/#installation

Last action should be **(ql:add-to-init-file)**

3. Run Lisp into Emacs

Run emasc,then press **F12** and input **slime**, then press enter. Repl will be opened.

try it, just input:

```lisp
CL-USER> (+ 2 3)
```

*Output:*

```
5
```

# Features

in progress

# Hot keys

### Navigations by code:

|   Key    | Descripton|
| -------- |:---------:|
|  Alt+J   | move Left |
|  Alt+L   | move Right|
|  Alt+I   | move Up   |
|  Alt+K   | move Down |

or you could use avy mode:

|   Key    | Descripton|
| -------- |:---------:|
|  C-:     | goto char |
|  C-:     | goto char |
|  C-c f   | goto line |
|  C-c w   | goto word |

### Selections:

Alt+Shift+(J | L | I | K)

### Navigation between windows:

M+x O 

or 

M+x Up | Down | Left | Right *(arrows)*

### Navigation by project

F8 - open NeoTree mode it's simple mode for view files and directories.

F9 - open projectile mode. More complicated mode for work with project's structure.

More learn about supported functions and keybindgs you could if will see **init-keibindings.el** and other '**init-**' files.

## Troubles

Some Windows users might need to follow
[these instructions](http://xn--9dbdkw.se/diary/how_to_enable_GnuTLS_for_Emacs_24_on_Windows/index.en.html)
to get TLS (ie. SSL) support included in their Emacs.


