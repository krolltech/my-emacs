;;winner mode
(define-key global-map (kbd "<select>") 'windmove-up)
(when (fboundp 'winner-mode)
      (winner-mode 1))
(windmove-default-keybindings)

(global-set-key (kbd "<f7> ") 'winner-undo)

(provide 'init-winner)
