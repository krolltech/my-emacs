;;自定义函数

;;选中当前单词
(defun select-word ()
  (interactive)
  (backward-word)
  (push-mark (point))
  (forward-word)
  (kill-ring-save (region-beginning)  (region-end)))

;;选中当前行...
(defun select-line ()
  (interactive)
  (beginning-of-line)
  (push-mark (point))
  (end-of-line)
  (kill-ring-save (region-beginning)  (region-end)))

(global-set-key (kbd "C-c C-w") 'select-word)
(global-set-key (kbd "C-c C-l") 'select-line)

(provide 'init-custom)
