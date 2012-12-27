;; 一些杂项配置
;;
(setq inhibit-startup-message t)      ;; 不显示启动信息
(fset 'yes-or-no-p 'y-or-n-p)         ;; 用y和n来代替yes和no。
(setq debug-on-error nil)             ;; 关闭调试
(put 'upcase-region 'disabled nil)
(transient-mark-mode t)               ;; 高亮mark区域
(setq kill-ring-max 200)              ;; kill ring 长度
(global-auto-revert-mode t)           ;; 设置自动重载文件
(menu-bar-mode -1)                    ;; 隐藏菜单栏
(show-paren-mode t)                   ;; 显示括号匹配
(setq make-backup-files nil)          ;; 不产生备份文件
(tool-bar-mode 0)                     ;; 不显示工具栏
(setq visible-bell t)                 ;; 我不想听见emacs 一个劲的叫
(setq column-number-mode t)           ;; 显示列号 
(setq default-fill-column 60)         ;; 
(global-set-key [f10] 'undo)          ;; 设置F10为撤销
(put 'erase-buffer 'disabled nil)     ;; 执行erase_buffer时不提示 
(put 'set-goal-column 'disabled nil)  ;; 
(put 'narrow-to-region 'disabled nil) ;;  
(put 'upcase-region 'disabled nil)    ;; 
(put 'downcase-region 'disabled nil)  ;; 
(global-set-key [(f8)] 'eshell)       ;; 


;;;;高亮当前行
;;(require 'hl-line)
;;(global-hl-line-mode t)
;;(set-face-background hl-line-face "#330066")

;;去除掉多余的空格
;;(require 'whitespace)
;;(add-hook 'before-save-hook 'whitespace-cleanup)
;;(whitespace-global-mode t)

;;设置时间在状态栏的显示
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time)

(global-set-key (kbd "C-c C-c")   'comment-region)
(global-set-key (kbd "C-c C-u")   'uncomment-region)

;;分割窗口
;;(split-window-horizontally)



(provide 'init-misc)

