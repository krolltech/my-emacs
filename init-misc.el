;;杂项

;;不显示启动信息，看起来舒服点，但好像并不能加快启动速度
(setq inhibit-startup-message t)

;;用y和n来代替yes和no。
(fset 'yes-or-no-p 'y-or-n-p)


;;高亮mark区域
(transient-mark-mode t)

;;-----kill ring 长度
(setq kill-ring-max 200)

;;隐藏菜单栏.
(menu-bar-mode -1)

;显示括号匹配
(show-paren-mode t)



;;设置自动重载文件，当文件被外部修改时，比如git切换分支时
(global-auto-revert-mode t)

;;设置时间在状态栏的显示
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time)

;;不产生备份文件~.
(setq make-backup-files nil)

(provide 'init-misc)
