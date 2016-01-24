;;; package --- easy-kill
;;; Commentary: Provide commands easy-kill and easy-mark to let users kill or mark things easily.
;;; Github: https://github.com/leoliu/easy-kill

;;; Code:
(require-package 'easy-kill)

(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)


(provide 'init-easy-kill)
