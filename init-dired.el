;;窗口管理器.

(require 'dired+)

(define-key global-map (kbd "C-x C-j") 'dired-jump)
(define-key global-map (kbd "C-x 4 C-j") 'dired-jump-other-window)


(provide 'init-dired)
