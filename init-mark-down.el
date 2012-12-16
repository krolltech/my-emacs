;;mark down mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/model/markdown-mode"))

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)

(setq auto-mode-alist
      (cons '("\\.\\(md\\|markdown\\)$" . markdown-mode) auto-mode-alist))

(provide 'init-mark-down)
