;;窗口管理器.
(require 'dired+)

(define-key global-map (kbd "C-x C-j") 'dired-jump)
(define-key global-map (kbd "C-x 4 C-j") 'dired-jump-other-window)

;; ;; 颜色
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(diredp-date-time ((((type tty)) :foreground "yellow") (t :foreground "#F0DFAF")))
;;  '(diredp-dir-heading ((((type tty)) :background "black" :foreground "yellow") (t :background "#41363C" :foreground "#ECBCBC")))
;;  '(diredp-dir-priv ((t (:background "black" :foreground "thistle"))))
;;  '(diredp-display-msg ((((type tty)) :foreground "blue") (t :foreground "#93B3A3")))
;;  '(diredp-file-name ((t (:foreground "#8CD0D3"))))
;;  '(diredp-file-suffix ((t (:foreground "#7F9F7F"))))
;;  '(diredp-flag-mark-line ((t (:background "green"))))
;;  '(diredp-ignored-file-name ((t (:foreground "#80D4AA"))))
;;  '(diredp-number ((t (:foreground "#8F8F8F"))))
;;  '(diredp-symlink ((t (:foreground "#F0DFAF"))))
;;  '(slime-repl-inputed-output-face ((t :background "#41363C" :foreground "#ECBCBC"))))

(provide 'init-dired)
