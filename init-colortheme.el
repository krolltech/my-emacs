(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/plugins/color-theme-6.6.0")


(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)))

(color-theme-initialize)
;;(color-theme-matrix)
;; (if window-system
;;     (progn
;;       (load "color-theme")
;;       (color-theme-calm-forest)))

(provide  'init-colortheme)
