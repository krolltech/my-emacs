(add-to-list 'load-path "~/.emacs.d/el-get/lua-mode")
(require 'lua-mode)

;;lua 模式.
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list `ac-modes `(lua-mode))

(provide 'init-lua)
