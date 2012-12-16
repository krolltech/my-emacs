;;指定各种编辑快捷键.

;;mark按键设置
(global-set-key (kbd "C-c u") 'goto-line)
(global-set-key (kbd "C-c v") 'set-mark-command)
(global-set-key (kbd "C-z") 'set-mark-command)
(global-set-key (kbd "C-c m w") 'mark-word)

;;按键指定加速，执行外部命令M+X
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-g")   'git-status)

;;自定义快捷键
(global-set-key (kbd "C-w") 'delete-char)
(global-set-key (kbd "C-q") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

(provide 'init-key-press)
