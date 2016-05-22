;;; package --- anzu
;;; Commentary:
;;anzu.el is an Emacs port of anzu.vim. anzu.el provides a minor mode which displays current match and total matches information in the mode-line in various search modes.
;; GitHub: https://github.com/syohex/emacs-anzu

;;; Code:
(require-package 'anzu)

(anzu-mode +1)

(provide 'init-anzu)
