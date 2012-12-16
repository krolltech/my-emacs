;; your Lisp system
(setq inferior-lisp-program "/Users/zhuoyikang/Source/ccl/dx86cl64")

;; your SLIME directory
(add-to-list 'load-path "~/.emacs.d/plugins/slime-2012-11-06/")

(require 'slime)
(slime-setup)

;;;
(provide 'init-slime)
