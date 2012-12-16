
;; ;;yasippet config ,代码补全插件
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

(provide  'init-yasnippet)
