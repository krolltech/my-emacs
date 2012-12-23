(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            ;; now '-' is not considered a word-delimiter
            (modify-syntax-entry ?- "w")       
            ))
;;;
(provide 'init-elisp)

