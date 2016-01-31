;; 设置Emacs标题栏
(setq frame-title-format "Emacs @ %b")
;; 保存某个文件中的退出位置
(require 'saveplace)
(setq-default save-place t)
;; 自动打开上次的文件
(desktop-save-mode 1)
;; 显示时间
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
;; 高亮要拷贝的区域
(transient-mark-mode t)
;; 取消显示yes/no
(fset 'yes-or-no-p 'y-or-n-p)
;; 取消警告声音
(setq visible-bell nil)
;; 支持 emacs 和外部程序的粘贴
(setq x-select-enable-clipboard t)
;; 取消滚动条
(scroll-bar-mode -1)
;; 显示列号
(column-number-mode t)
;; 高亮显示选择区域
(setq-default transient-mark-mod t)
;; 括号匹配显示
(show-paren-mode t)
;; 隐藏菜单栏
(menu-bar-mode -1)
;; 隐藏工具栏
(tool-bar-mode -1)
;; 语法高亮
(global-font-lock-mode t)
;; 关闭启动画面
(setq inhibit-startup-message t)
;; 换行后自动缩进
(global-set-key "\r" 'newline-and-indent)
;; 手工对齐文本
(global-set-key (kbd "C-,") 'align)
;; 使 buffer name 唯一
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
;; 保存时自动清除行尾空格及文件结尾空行
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; 快捷切换窗口
(windmove-default-keybindings)

(provide 'init-personal)
