;; Linum plug-in
(require 'linum)

(line-number-mode   t)
(global-linum-mode  t)
(column-number-mode t)
(setq linum-format " %d")

(provide 'init-linum)