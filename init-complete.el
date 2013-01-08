;;智能补全.
(add-to-list 'load-path
	     "/Users/zhuoyikang/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "/Users/zhuoyikang/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(global-auto-complete-mode t)


(provide 'init-complete)
