(setq inhibit-startup-message t)                       ;;不显示启动信息
(fset 'yes-or-no-p 'y-or-n-p)                          ;;用y和n来代替yes和no
(transient-mark-mode t)                                ;;高亮mark区域
(setq kill-ring-max 200)                               ;;kill ring 长度
(menu-bar-mode -1)                                     ;;隐藏菜单栏
(show-paren-mode t)                                    ;;显示括号匹配
(global-auto-revert-mode t)                            ;;当文件被外部修改时,自动载入
(setq make-backup-files nil)                           ;;不产生备份文件

;; (setq dired-listing-switches "-aluh")                  ;;传给 ls 的参数
;; (setq directory-free-space-args "-Pkh")                ;;目录空间选项
;; (setq dired-omit-size-limit nil)                       ;;dired忽略的上限
;; (setq dired-dwim-target t)                             ;;Dired试着猜处默认的目标目录
;; (setq my-dired-omit-status t)                          ;;设置默认忽略文件
;; (setq my-dired-omit-regexp "^\\.?#\\|^\\..*")          ;;设置忽略文件的匹配正则表达式
;; (setq my-dired-omit-extensions '(".cache"))            ;;设置忽略文件的扩展名列表
;; (add-hook 'dired-after-readin-hook 'dired-sort-method) ;;先显示目录, 然后显示文件
;; (add-hook 'dired-mode-hook 'dired-omit-method)         ;;隐藏文件的方法


;;设置时间在状态栏的显示
(setq display-time-day-and-date t display-time-24hr-format t) 
(display-time)


(provide 'init-misc)
