;;session and desktop

;;开启session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;;开启desktop.
(load "desktop")
(setq-default desktop-load-locked-desktop t) ; ==> 就是加入这句解决了问题。
(desktop-load-default)
(desktop-read)
(desktop-save-mode 1)

(provide 'init-session)
