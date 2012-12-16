;; 一些杂项配置
;;
(setq inhibit-startup-message t) ;;不显示启动信息
(fset 'yes-or-no-p 'y-or-n-p)    ;;用y和n来代替yes和no。
(setq debug-on-error nil)        ;;关闭调试
(put 'upcase-region 'disabled nil)
(transient-mark-mode t)          ;;高亮mark区域
(setq kill-ring-max 200)         ;;kill ring 长度
(global-auto-revert-mode t)      ;;设置自动重载文件
(menu-bar-mode -1)               ;;隐藏菜单栏
(show-paren-mode t)              ;;显示括号匹配
(setq make-backup-files nil)     ;;不产生备份文件
(tool-bar-mode 0)                ;;不显示工具栏

;;去除掉多余的空格
;;(require 'whitespace)
;;(add-hook 'before-save-hook 'whitespace-cleanup)
;;(whitespace-global-mode t)

;设置时间在状态栏的显示
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time)


(provide 'init-misc)
