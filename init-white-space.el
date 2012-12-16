;;去除掉多余的空格
;;(require 'whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)
;;(whitespace-global-mode t)

(provide 'init-white-space)
