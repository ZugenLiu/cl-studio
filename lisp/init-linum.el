;;; pakcage ---  Linum plug-in
;;; Commentary:
;;; GitHub

;;; Code:
(require-package 'linum)

(line-number-mode   t)
(global-linum-mode  t)
(column-number-mode t)
(setq linum-format " %d")

(provide 'init-linum)
;;; init-linum.el ends here
