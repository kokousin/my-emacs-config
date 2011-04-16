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

;; custom key
(load "~/.emacs.d/config/emacs.el/CustomCommomEditKey.el")
(require 'CustomKey)

;; disable toolbar
(tool-bar-mode 0)
;; disable backup file like this file~
(setq-default make-backup-files nil)
;; add /usr/local/bin to eshell path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; frame
(load "~/.emacs.d/el-get/maxframe/maxframe.el")
(require 'maxframe)
;; (add-hook 'window-setup-hook 'maximize-frame t)
;; (add-to-list 'default-frame-alist '(left . 0)
;; (add-to-list 'default-frame-alist '(top . 0))
;; (add-to-list 'default-frame-alist '(height . 80))
;; (add-to-list 'default-frame-alist '(width . 60))
(defvar maxFrame-p nil "Check if fullscreen is on or off")
(defun maxOrMin-frame ()
  (interactive)
  (setq maxFrame-p (not maxFrame-p))
  (if maxFrame-p
      (restore-frame)
    (maximize-frame)))
(global-set-key (kbd "s-M") 'maxOrMin-frame)