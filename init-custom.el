;;选中当前单词
(defun select-word ()
  "复制当前光标所在的单词"
  (interactive)
  (backward-word)
  (push-mark (point))
  (forward-word)
  (kill-ring-save (region-beginning)  (region-end)))

;;选中当前行...
(defun select-line ()
  "复制当前行"
  (interactive)
  (beginning-of-line)
  (push-mark (point))
  (end-of-line)
  (kill-ring-save (region-beginning)  (region-end)))

(defun copy-line ()
  "复制当前行到下一行"
  (interactive)
  (beginning-of-line)
  (push-mark (point))
  (end-of-line)
  (kill-ring-save (region-beginning)  (region-end))
  (newline)
  (yank)
  (beginning-of-line))

(global-set-key (kbd "C-c C-w") 'select-word)
(global-set-key (kbd "C-c C-l") 'select-line)
(global-set-key (kbd "C-c C-n") 'copy-line)

(defun tr-test()
  (interactive)
  (forward-word)
  (while (string= " " (thing-at-point 'char))
    (forward-word)))

(provide 'init-custom)
