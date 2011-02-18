(add-hook 'c-mode-common-hook
  '(lambda ()
     (semantic-mode 1)))

(add-hook 'py-mode-hook
  '(lambda ()
     (semantic-mode 1)))

(add-hook 'lisp-mode-hook
  '(lambda ()
     (semantic-mode 1)))

(add-hook 'emacs-lisp-mode-hook
  '(lambda ()
     (semantic-mode 1)))
