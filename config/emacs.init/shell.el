(setq multi-term-program "/bin/bash")
(setq multi-term-buffer-name "term")
(global-set-key "\C-x." 'multi-term)
(global-set-key "\C-x," 'multi-term-dedicated-open)

(custom-set-variables
  '(term-default-bg-color "#000000")        ;; background color (black)
  '(term-default-fg-color "#dd00dd"))       ;; foreground color (yellow)

(setq multi-term-dedicated-select-after-open-p t)