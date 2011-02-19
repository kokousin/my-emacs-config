(defun kill-the-string-before-current-point ()
  (interactive)
  (setq end (point))
  (move-beginning-of-line 1)
  (kill-region (point) end))

(global-set-key (kbd "S-C-k") 'kill-the-string-before-current-point)

(provide 'CustomKey)