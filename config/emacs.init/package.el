;;; packages.el --- Dimitri Fontaine
;;
;; Set el-get-sources and call el-get to init all those packages we need.
(require 'el-get)
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get/recipes")

(setq el-get-sources
	'(
	el-get
		package
		auto-complete
		auto-complete-clang
;;		color-theme-twilight
        color-theme-almost-monokai
        color-theme-chocolate-rain
		color-theme
		yasnippet
;;		ipython
;;		pymacs
;;		python-mode
        multi-term
;;        slime
;;        ac-slime
;;        cedet
        ecb
    )
)
(el-get)
;; that could/should be (el-get 'sync)

(provide 'packages)