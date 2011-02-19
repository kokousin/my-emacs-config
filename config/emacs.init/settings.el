;; language environment
(setq current-language-environment "UTF-8")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; show line number
;;(global-linum-mode t)
(global-linum-mode 1) ; always show line numbers                              
(setq linum-format "%d|")  ;set format

;; set Tab
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq c-basic-offset 4)

;;(mouse-avoidance-mode 'animate)

(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 999))
(add-to-list 'default-frame-alist '(width . 999))