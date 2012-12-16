;;shell 配置
(global-set-key [(f8)] 'eshell)

(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key (kbd "C-c C-t")  'multi-term)

(provide 'init-shell)
