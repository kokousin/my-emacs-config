(add-to-list 'load-path "/Users/guoxx/.emacs.d/el-get/pymacs/")
(require 'pymacs)

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path "~/.emacs.d/el-get/pymacs/"))
(add-to-list 'pymacs-load-path "/Users/guoxx/.emacs.d/el-get/pymacs/contrib/")

(add-to-list 'load-path "/Users/guoxx/.emacs.d/el-get/python-mode/")
(require 'python-mode)

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                   interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

(require 'pycomplete)
(require 'doctest-mode)