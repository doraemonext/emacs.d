;; 主题设置


;; 字体设置
(if (display-graphic-p)
    (progn
      (require 'darcula-theme)
      (set-face-attribute 'default nil :font "Monaco 12")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font)
                          charset
                          (font-spec :family "Hiragino Sans GB" :size 14)))
      ))

(provide 'init-themes)
