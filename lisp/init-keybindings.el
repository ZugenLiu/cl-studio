;; Key-bindings


;;
;;
;; Navigation (by code)

;; Stop using the arrow keys
(global-unset-key [up])
(global-unset-key [down])
(global-unset-key [left])
(global-unset-key [right])

;;
;; Motion

(defvar motion-keys-minor-mode-map (make-keymap) "motion-keys-minor-mode keymap.")

;; Motion by chars
(define-key motion-keys-minor-mode-map (kbd "M-i") 'previous-line) ;; Go to previous line
(define-key motion-keys-minor-mode-map (kbd "M-j") 'backward-char) ;; Backward char
(define-key motion-keys-minor-mode-map (kbd "M-l") 'forward-char)  ;; Forward char

;; Motion by words
(define-key motion-keys-minor-mode-map (kbd "M-k") 'next-line)     ;; Go to next line
(define-key motion-keys-minor-mode-map (kbd "M-u") 'backward-word) ;; Backward word
(define-key motion-keys-minor-mode-map (kbd "M-o") 'forward-word)  ;; Forward word

(define-minor-mode motion-keys-minor-mode "Fix conflict motion bindings with ather modes." t "motion-keys" 'motion-keys-minor-mode-map)
(motion-keys-minor-mode 1)

;; Motion by lines
(global-set-key (kbd "M-a") 'beginning-of-visual-line)  ;; Go to line beginning
(global-set-key (kbd "M-e") 'end-of-visual-line)        ;; Go to line end

;; Motion by defun
(global-set-key (kbd "C-a") 'beginning-of-defun)  ;; Go to function beginning
(global-set-key (kbd "C-e") 'end-of-defun)        ;; Go to function end

;; Motion beetwen windows
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; ~Motion

;;
;; Scroll

(global-set-key (kbd "M-n") 'scroll-up-command)   ;; Scroll up
(global-set-key (kbd "M-h") 'scroll-down-command) ;; Scroll down

(global-set-key (kbd "M-,") 'beginning-of-buffer) ;; Beginning of buffer
(global-set-key (kbd "M-.") 'end-of-buffer)       ;; End of buffer

(global-set-key (kbd "M-[") 'backward-list)  ;; Backward list
(global-set-key (kbd "M-]") 'forward-list)   ;; Forward list

;; ~Scroll
;; ~Navigation

;;
;;
;; Editing code

(global-set-key (kbd "M-z") 'undo)  ;; Undo
(global-set-key (kbd "RET") 'newline-and-indent)  ;; Newline and indent

(defun function-newline-and-indent ()
    "Clever newline."
    (interactive)
    (end-of-visual-line)
    (newline-and-indent))
(global-set-key (kbd "M-RET") 'function-newline-and-indent)

;;
;; Kill & Deleting

;; Chars
(global-set-key (kbd "M-d") 'kill-whole-line)       ;; Kill whole line
(global-set-key (kbd "M-f") 'kill-visual-line)      ;; Kill visual line

;; Words
(global-set-key (kbd "M-w") 'kill-word)          ;; Kill word
(global-set-key (kbd "M-t") 'transpose-words)    ;; Transpose words

;; Lines
(global-set-key (kbd "M-;") 'delete-backward-char)  ;; Delete backward char
(global-set-key (kbd "M-'") 'delete-forward-char)   ;; Delete forward char

;; Regions
(global-set-key (kbd "M-x") 'kill-region)        ;; Kill ring and save
(global-set-key (kbd "M-c") 'kill-ring-save)     ;; Kill ring and save
(global-set-key (kbd "M-v") 'yank)               ;; Yank

;; ~Kill & Deleting

;;
;; Comments

(global-set-key (kbd "M-/") 'comment-dwim)          ;; Add comment according major mode
(global-set-key (kbd "M-m") 'set-mark-command)      ;; Set mark command
(global-set-key (kbd "M-\\") 'back-to-indentation)  ;; Back to indentation

;; ~Comments

;; ~Editing code


;;
;;
;; Files & Buffers

(global-set-key (kbd "C-f") 'ido-find-file)       ;; Find or create file
(global-set-key (kbd "M-b") 'ido-switch-buffer)   ;; Switch buffer
(global-set-key (kbd "C-d") 'ido-kill-buffer)     ;; Ido kill buffer

;;
;; Save file
(global-set-key (kbd "M-g") 'save-buffer)                 ;; Save buffer
(global-set-key (kbd "C-w") 'ido-write-file)              ;; Ido write file
(global-set-key (kbd "C-q") 'save-buffers-kill-terminal)  ;; Save buffers and kill terminal (Exit from Emacs)

;;
;; Windows

(global-set-key (kbd "C-0") 'delete-window)        ;; Delete window
(global-set-key (kbd "C-1") 'delete-other-windows) ;; Delete other window
(global-set-key (kbd "C-2") 'split-window-below)   ;; Split window bellow
(global-set-key (kbd "C-3") 'split-window-right)   ;; Split window right

;; ~Windows
;; ~ Files & Buffers


;;
;;
;; Commands

;; Keyboard quit
(global-set-key (kbd "M-q") 'keyboard-quit)

;; Functional keys:


(global-set-key (kbd "<f2>") 'bs-show)               ;; Buffer selection

;; Bookmark key-bindings
(global-set-key (kbd "<f3>") 'bookmark-set)
(global-set-key (kbd "<f4>") 'bookmark-jump)
(global-set-key (kbd "<f5>") 'bookmark-bmenu-list)

(global-set-key (kbd "<f6>") 'imenu)                 ;; Imenu key-bindings

;; Keyboard macros
(global-set-key (kbd "<f7>") 'kmacro-start-macro)
(global-set-key (kbd "<f8>") 'kmacro-end-macro)
(global-set-key (kbd "<f9>") 'kmacro-call-macro)

(global-set-key (kbd "<f10>") 'menu-bar-open)             ;; Menu bar
(global-set-key (kbd "<f11>") 'ido-dired)                 ;; Ido dired
(global-set-key (kbd "<f12>") 'execute-extended-command)  ;; Execute command

(global-set-key [f8] 'neotree-toggle)

;; ~Commands




(provide 'init-keybindings)