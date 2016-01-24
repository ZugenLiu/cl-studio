;; This is a global minor mode for entering Emacs commands without modifier keys. It's similar to Vim's separation of commands and insertion mode.

;; Github: https://github.com/chrisdone/god-mode

(require-package 'god-mode)

(global-set-key (kbd "<escape>") 'god-local-mode)

(provide 'init-god-mode)
