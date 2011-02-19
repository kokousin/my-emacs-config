(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/el-get/auto-complete/dict")

(add-to-list 'load-path "~/.emacs.d/el-get/auto-complete-clang")
(require 'auto-complete-clang)

(setq ac-auto-start nil)
(setq ac-quick-help-delay 0.15)
(ac-set-trigger-key "TAB")
(define-key ac-mode-map  [(control tab)] 'auto-complete)

(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(add-to-list 'load-path "~/.emacs.d/el-get/yasnippet")
(require 'yasnippet)
(yas/initialize)
(setq yas/indent-line 'fixed)
(yas/load-directory "~/.emacs.d/el-get/yasnippet/snippets")

;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/el-get/auto-complete-extension"))
;;(require 'auto-complete-extension)

