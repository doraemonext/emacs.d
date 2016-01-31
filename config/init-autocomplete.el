(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(provide 'init-autocomplete)


;; ;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'moo-complete)
;; (define-key c++-mode-map  [(tab)] 'moo-complete)

;; ;; company
;; (require 'company)
;; (add-hook 'after-init-hook 'global-company-mode)
;; (delete 'company-semantic company-backends)
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; ;; company-c-headers
;; (add-to-list 'company-backends 'company-c-headers)

;; ;; hs-minor-mode for folding source code
;; (add-hook 'c-mode-common-hook 'hs-minor-mode)

;; ;; set style to "linux"
;; (setq c-default-style "linux")

;; (global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; ;; activate whitespace-mode to view all whitespace characters
;; (global-set-key (kbd "C-c w") 'whitespace-mode)

;; ;; show unncessary whitespace that can mess up your diff
;; (add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; ;; use space to indent by default
;; (setq-default indent-tabs-mode nil)

;; ;; set appearance of a tab that is represented by 4 spaces
;; (setq-default tab-width 4)

;; ;; Compilation
;; (global-set-key (kbd "<f5>") (lambda ()
;;                                (interactive)
;;                                (setq-local compilation-read-command nil)
;;                                (call-interactively 'compile)))

;; ;; setup GDB
;; (setq
;;  ;; use gdb-many-windows by default
;;  gdb-many-windows t

;;  ;; Non-nil means display source file containing the main routine at startup
;;  gdb-show-main t
;;  )

;; ;; Package: clean-aindent-mode
;; (require 'clean-aindent-mode)
;; (add-hook 'prog-mode-hook 'clean-aindent-mode)

;; ;; Package: dtrt-indent
;; (require 'dtrt-indent)
;; (dtrt-indent-mode 1)

;; ;; Package: ws-butler
;; (require 'ws-butler)
;; (add-hook 'prog-mode-hook 'ws-butler-mode)

;; ;; Package: yasnippet
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; ;; Package: smartparens
;; ;; (require 'smartparens-config)
;; ;; (setq sp-base-key-bindings 'paredit)
;; ;; (setq sp-autoskip-closing-pair 'always)
;; ;; (setq sp-hybrid-kill-entire-symbol nil)
;; ;; (sp-use-paredit-bindings)

;; ;; (show-smartparens-global-mode +1)
;; ;; (smartparens-global-mode 1)

;; ;; Package: projejctile
;; (require 'projectile)
;; (projectile-global-mode)
;; (setq projectile-enable-caching t)

;; (require 'helm-projectile)
;; (helm-projectile-on)
;; (setq projectile-completion-system 'helm)
;; (setq projectile-indexing-method 'alien)

;; ;; Package zygospore
;; (global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

;; (provide 'init-autocomplete)
