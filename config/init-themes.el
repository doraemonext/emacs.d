;; 主题设置
(require 'darcula-theme)

;; 字体设置
(if (display-graphic-p)
    (progn
      (set-face-attribute 'default nil :font "Menlo 12")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
                          charset
                          (font-spec :family "Hiragino Sans GB" :size 12)))
      ))

(provide 'init-themes)
