(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            ;; now '-' is not considered a word-delimiter
            (modify-syntax-entry ?- "w")))

(add-to-list 'auto-mode-alist '("\\.el?$" . emacs-lisp-mode))

;;;
(provide 'init-elisp)

