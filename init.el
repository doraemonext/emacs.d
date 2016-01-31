(add-to-list 'load-path (expand-file-name "~/.emacs.d/config"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("marmalade" . "https://marmalade-repo.org/packages/")
             )
(package-initialize)

(defconst my-packages
  '(better-defaults
    auto-complete
    darcula-theme
    exec-path-from-shell
    anzu
    company
    duplicate-thing
    ggtags
    helm
    helm-projectile
    helm-gtags
    helm-swoop
    function-args
    clean-aindent-mode
    comment-dwim-2
    dtrt-indent
    ws-butler
    iedit
    yasnippet
    smartparens
    sml-mode
    projectile
    volatile-highlights
    undo-tree
    zygospore))

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package my-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
(exec-path-from-shell-copy-env "PYTHONPATH")

;; this variables must be set before load helm-gtags
;; you can change to any prefix key of your choice
(setq helm-gtags-prefix-key "\C-cg")

;; 主题及字体设置
(require 'init-themes)
;; 个人自定义信息设置
(require 'init-personal)
;; C++
(require 'init-cpp)
;; Auto Complete
(require 'init-autocomplete)

;; 导航设置
(require 'init-helm)
(require 'init-helm-gtags)
;; CEDET设置
(require 'init-cedet)
;; 编辑设置
(require 'init-editing)
;; C/C++自动补全设置
(require 'init-autocomplete)
