(require 'sourcepair)

(global-ede-mode t)
(setq semantic-default-submodes '(global-semantic-idle-summary-mode
                                  global-semantic-idle-completions-mode
                                  global-semantic-idle-scheduler-mode
                                  global-semanticdb-minor-mode
                                  global-semantic-mru-bookmark-mode))
(semantic-mode 1)

(global-semantic-show-unmatched-syntax-mode 1)
(global-semantic-show-parser-state-mode 1)

(defconst user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public"))

(let ((include-dirs user-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

(defadvice push-mark (around semantic-mru-bookmark activate)
  "Push a mark at LOCATION with NOMSG and ACTIVATE passed to `push-mark'.
If `semantic-mru-bookmark-mode' is active, also push a tag onto
the mru bookmark stack."
  (semantic-mrub-push semantic-mru-bookmark-ring
                      (point)
                      'mark)
  ad-do-it)

(defun semantic-ia-fast-jump-back ()
  (interactive)
  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
      (error "Semantic Bookmark ring is currently empty"))
  (let* ((ring (oref semantic-mru-bookmark-ring ring))
         (alist (semantic-mrub-ring-to-assoc-list ring))
         (first (cdr (car alist))))
    (if (semantic-equivalent-tag-p (oref first tag) (semantic-current-tag))
        (setq first (cdr (car (cdr alist)))))
    (semantic-mrub-switch-tags first)))

(defun semantic-ia-fast-jump-or-back (&optional back)
  (interactive "P")
  (if back
      (semantic-ia-fast-jump-back)
    (semantic-ia-fast-jump (point))))
(define-key semantic-mode-map [s-f12] 'semantic-ia-fast-jump-or-back)
(define-key semantic-mode-map [s-f11] 'semantic-ia-fast-jump-back)

;; -- key-binding
(defun my-eassist-mode-key-binding ()
  (define-key c-mode-base-map (kbd "<M-s-up>") 'sourcepair-load)
  (define-key c-mode-base-map (kbd "C-c s-p") 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-hook 'my-eassist-mode-key-binding)
(define-key semantic-mode-map (kbd "<C-escape>") 'complete-symbol)
(global-set-key (kbd "s-/") 'comment-region)
(global-set-key (kbd "C-s-/") 'uncomment-region)

;; -- setting of ect
;; -- load ecb and close the ect tip
(add-to-list 'load-path "~/.emacs.d/el-get/ecb/")
(require 'ecb)
(setq ecb-tip-of-the-day nil)