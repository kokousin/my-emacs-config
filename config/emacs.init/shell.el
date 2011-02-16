(setq multi-term-program "/bin/bash")
(setq multi-term-buffer-name "term")
(global-set-key "\C-x." 'multi-term)
(global-set-key "\C-x," 'multi-term-dedicated-open)

(custom-set-variables
  '(term-default-bg-color "#dddddd")        ;; background color (black)
  '(term-default-fg-color "#000000"))       ;; foreground color (yellow)

(setq multi-term-dedicated-select-after-open-p t)