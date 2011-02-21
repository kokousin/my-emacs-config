(load "~/.emacs.d/el-get/cedet/common/cedet.el")
(add-to-list 'load-path "~/.emacs.d/el-get/cedet/")

(require 'cedet)
(require 'cedet-build)
(require 'semantic)
(require 'semantic-ia)
(require 'cedet-contrib)
(require 'eassist nil 'noerror)
(require 'srecode)
;;(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
;;(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)

(global-ede-mode t)
(global-srecode-minor-mode 1)


;;key-binding
(defun my-eassist-mode-key-binding ()
  (define-key c-mode-map (kbd "<M-s-up>") 'eassist-switch-h-cpp))
(add-hook 'c-mode-hook 'my-eassist-mode-key-binding)