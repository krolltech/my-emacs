(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (setq ibuffer-filter-groups
                  '(
                    ("*buffer*" (name . "\\*.*\\*"))
                    ;;("TAGS" (name . "^TAGS\\(<[0-9]+>\\)?$"))
                    ("dired" (mode . dired-mode))
                    ("erlang" (mode . erlang-mode))
                    ("elisp" (mode . emacs-lisp-mode))
                    ("csv" (mode . csv-mode))
                    ))))

(provide 'init-ibuffer)
