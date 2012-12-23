;;shell 配置
(global-set-key [(f8)] 'eshell)

(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key (kbd "C-c C-t")  'multi-term)
(setq multi-term-dedicated-select-after-open-p t)

(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)
                            ;;(linum-mode 0)
                            ))

(provide 'init-shell)
