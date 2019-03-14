
### How to run the code

**With Emacs+Slime+SBCL**
1. Install Emacs using the following

- sudo apt-get install emacs
 
2. Install SBCL

- download from here: http://www.sbcl.org/platform-table.html
- sudo ./install.sh

3. Setup Slime in Emacs

- create .emacs  in your home folder.
- add following to this file:

'(require 'package)
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
(setq slime-contribs '(slime-fancy))'

4. Clone this repo
5. In Emacs, open slime 
4. 