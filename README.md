# CtCI-6th-Edition
Solutions for [Cracking the Coding Interview 6th Edition](http://www.amazon.com/Cracking-Coding-Interview-6th-Edition/dp/0984782850) by [Gayle Laakmann McDowell](http://www.gayle.com/).

## Contributing

### Work Flow
1. Fork the appropriate repo for your language to your GitHub user.
2. Write quality code and lint if applicable.
3. Add tests if applicable.
4. Open a pull request and provide a descriptive comment for what you did.

## How to run the code

I personally found the combination of Emacs and Slime on top of SBCL gives the best IDE for common Lisp.  

**With Emacs+Slime+SBCL**
1. Install Emacs using the following

**Linux:**
```
sudo apt-get install emacs
```

**Windows & MacOS:**

https://www.gnu.org/software/emacs/download.html

2. Install SBCL (also on Windows and MacOS)

- download from here: http://www.sbcl.org/platform-table.html
```
sudo ./install.sh
```
3. Setup Slime in Emacs

- create .emacs  in your home folder.
- add following to this file:
```
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)
;; Setting lisp system
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
```
and then restart emacs and run the following:
```
M-x package-refresh-contents
M-x package-install RET slime RET
```

4. Clone this repo
5. In Emacs, open slime 
```
M-x slime
```
SLIME starts the Lisp system with the current directory taken from the directory where the file associated with the current buffer is. If you want to exit from slime:
```
, sayoonara
```
6. In slime REPL run:
```
(load "Tester.lisp")
```

### For Help
Best resource for Common Lisp can be found here: https://github.com/norvig/paip-lisp
