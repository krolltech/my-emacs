;;
(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/plugins/ruby-misc")

;;rhtml mode.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/rhtml-minor-mode"))
(require 'rhtml-mode)

;;yaml-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/yaml-mode"))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(provide 'init-ruby)
