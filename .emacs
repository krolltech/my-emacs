(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/site-lisp")
(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/plugins/popup")
(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/plugins/ruby-misc")

(setq default-buffer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(prefer-coding-system 'utf-8)

;;
;;(autoload 'table-insert "table" "WYGIWYS table editor")

;;开启session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(load "desktop")
(setq-default desktop-load-locked-desktop t) ; ==> 就是加入这句解决了问题。
(desktop-load-default)
(desktop-read)
(desktop-save-mode 1)



;;rhtml mode.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/rhtml-minor-mode"))
(require 'rhtml-mode)

;;rspec mode.
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/rspec-mode"))
;;(require 'rspec-mode)

;;yaml-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/yaml-mode"))
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;;auto-complete 自动补全插件
(add-to-list 'load-path "/Users/zhuoyikang/.emacs.d/plugins/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/zhuoyikang/.emacs.d/plugins/auto-complete/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(global-auto-complete-mode t)
;;(setq ac-auto-start 2)
;;(setq ac-menu-height 20)

;;slime lisp=====

;; your Lisp system
(setq inferior-lisp-program "/Users/zhuoyikang/Source/ccl/dx86cl64")

;; your SLIME directory
(add-to-list 'load-path "~/.emacs.d/plugins/slime-2012-11-06/")

(require 'slime)
(slime-setup)


;; ;;yasippet config ,代码补全插件
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet-0.6.1c/")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")


(add-to-list 'load-path "~/.emacs.d/plugins/tabbar")
(require 'tabbar)
(tabbar-mode t)
(global-set-key [(meta k)] 'tabbar-backward)
(global-set-key [(meta l)] 'tabbar-forward)
(setq mode-line-format nil)

;;git 配置
(setq load-path (cons "~/.emacs.d/plugins/git" load-path))
(require 'git)

;; ;;加入MultiTerm
;; ;;(setq system-uses-terminfo nil)
(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key (kbd "C-c C-t")  'multi-term)
;; (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)



;;注释和去掉注释
;;(global-set-key (kbd "M-c")   'comment-region)
;;(global-set-key (kbd "M-u")   'desktop-save)

;;不显示启动信息，看起来舒服点，但好像并不能加快启动速度
(setq inhibit-startup-message t)

 ;;用y和n来代替yes和no。
(fset 'yes-or-no-p 'y-or-n-p)

;格式化行号形式
(setq linum-format "%d  ")

;把滚动条显示在右边
(setq scroll-bar-mode "right")

;;winner mode
(define-key global-map (kbd "<select>") 'windmove-up)
(when (fboundp 'winner-mode)
      (winner-mode 1))
(windmove-default-keybindings)
;;(windmove-default-keybindings 'meta)

;;关闭调试
(setq debug-on-error nil)
(put 'upcase-region 'disabled nil)

;;高亮mark区域
(transient-mark-mode t)

;设置启动大小
;;(set-frame-height (selected-frame) 65)
;;(set-frame-width (selected-frame) 170)

;;-----kill ring 长度
(setq kill-ring-max 200)

;;mark按键设置
(global-set-key (kbd "C-c u") 'goto-line)
(global-set-key (kbd "C-c v") 'set-mark-command)
(global-set-key (kbd "C-z") 'set-mark-command)
;;隐藏菜单栏.
(menu-bar-mode -1)

(setq x-select-enable-clipboard t);支持emacs和外部程序的粘贴

(show-paren-mode t);显示括号匹配
(setq mouse-yank-at-point t);支持中键粘贴


;;去除掉多余的空格
;;(require 'whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)
;;(whitespace-global-mode t)

;设置自动重载文件，当文件被外部修改时，比如git切换分支时
(global-auto-revert-mode t)

;设置时间在状态栏的显示
(setq display-time-day-and-date t display-time-24hr-format t)
(display-time)

;加入显示行号插件
(require 'linum)
(global-linum-mode 1)

;;不产生备份文件~.
(setq make-backup-files nil)

;;按键指定加速，执行外部命令M+X
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-g")   'git-status)

;;自定义快捷键
(global-set-key (kbd "C-w") 'delete-char)
(global-set-key (kbd "C-q") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)



;; erlang model
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.6.8/emacs" load-path))
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
;; add the home of the erlang binaries to the exec-path
(setq exec-path (cons "/usr/local/lib/bin" exec-path))
(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app?$" . erlang-mode))

;; load and eval the erlang-start package to set up
(require 'erlang-start)

;; distel
;; This is needed for Distel setup
(let ((distel-dir "/usr/local/share/distel/elisp"))
  (unless (member distel-dir load-path)
    ;; Add distel-dir to the end of load-path
    (setq load-path (append load-path (list distel-dir)))))
(require 'distel)
(distel-setup)
(setq derl-cookie "abc")
(setq erl-nodename-cache 'develop@127.0.0.1)
;;(setq erl-nodename-cache 'develop@42.120.48.49)


;; Some Erlang customizations
(add-hook 'erlang-mode-hook
    (lambda ()
      ;; when starting an Erlang shell in Emacs, default in the node name
      (setq inferior-erlang-machine-options '("-sname" "emacs" "-setcookie" "abc" ))
      ;; add Erlang functions to an imenu menu
      (imenu-add-to-menubar "imenu")))

;; A number of the erlang-extended-mode key bindings are useful in the shell too
(defconst distel-shell-keys
  '(("\C-\M-i"   erl-complete)
    ("\M-?"      erl-complete)
    ("\M-."      erl-find-source-under-point)
    ("\M-,"      erl-find-source-unwind)
    ("\M-*"      erl-find-source-unwind)
    )
  "Additional keys to bind when in Erlang shell.")

(add-hook 'erlang-shell-mode-hook
    (lambda ()
      ;; add some Distel bindings to the Erlang shell
      (dolist (spec distel-shell-keys)
  (define-key erlang-shell-mode-map (car spec) (cadr spec)))))

(setq erlang-indent-level 2)
(add-hook 'erlang-mode-hook
    (lambda ()
      ;; for erlang
      (setq default-tab-width 2)
      (setq tab-width 2)
      (setq-default indent-tabs-mode nil)))


;;括号自动配对
;;自动补全括号

;; (global-set-key (kbd "(")  'skeleton-pair-insert-maybe)
;; (global-set-key (kbd "{")  'skeleton-pair-insert-maybe)
;; ;;(global-set-key (kbd "\'") 'skeleton-pair-insert-maybe)
;; ;;(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
;; (global-set-key (kbd "[")  'skeleton-pair-insert-maybe)

;;阻止每次进入ruby代码提示编码覆盖的提示.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;common lisp 自动补全
(defun lisp-indent-or-complete (&optional arg)
  (interactive "p")
  (if (or (looking-back "^\\s-*") (bolp))
      (call-interactively 'lisp-indent-line)
      (call-interactively 'slime-indent-and-complete-symbol)))
(eval-after-load "lisp-mode"
  '(progn
     (define-key lisp-mode-map (kbd "TAB") 'lisp-indent-or-complete)))


;;(defun open-eshell-other-buffer ()  "Open eshell in other buffer"
;;  (interactive)
;;  (split-window-vertically)
;;  (eshell))
(global-set-key [(f8)] 'eshell)


;;设置F10为撤销
(global-set-key [f10] 'undo)


;;;;高亮当前行
;;(require 'hl-line)
;;(global-hl-line-mode t)
;;(set-face-background hl-line-face "#330066")

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(setq ansi-color-for-comint-mode t)


;;emacs erlang node name
(defun erl_choose_debug ()
  (erl-choose-nodename 'develop@42.120.48.49))
(global-set-key [(f9)] 'erl_choose_debug)


;; (require 'speedbar)
;; (defconst my-speedbar-buffer-name "SPEEDBAR")
;;                                         ; (defconst my-speedbar-buffer-name " SPEEDBAR") ; try this if you get "Wrong type argument: stringp, nil"
;; (defun my-speedbar-no-separate-frame ()
;;   (interactive)
;;   (when (not (buffer-live-p speedbar-buffer))
;;     (setq speedbar-buffer (get-buffer-create my-speedbar-buffer-name)
;;           speedbar-frame (selected-frame)
;;           dframe-attached-frame (selected-frame)
;;           speedbar-select-frame-method 'attached
;;           speedbar-verbosity-level 0
;;           speedbar-last-selected-file nil)
;;     (set-buffer speedbar-buffer)
;;     (speedbar-mode)
;;     (speedbar-reconfigure-keymaps)
;;     (speedbar-update-contents)
;;     (speedbar-set-timer 1)
;;     (make-local-hook 'kill-buffer-hook)
;;     (add-hook 'kill-buffer-hook
;;               (lambda () (when (eq (current-buffer) speedbar-buffer)
;;                            (setq speedbar-frame nil
;;                                  dframe-attached-frame nil
;;                                  speedbar-buffer nil)
;;                            (speedbar-set-timer nil)))))
;;   (set-window-buffer (selected-window)
;;                      (get-buffer my-speedbar-buffer-name)))

(load-file "~/.emacs.d/plugins/cedet-1.0pre6/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
;;(semantic-highlight-func-mode 1)
;;(semantic-decoration-mode 1)

(add-to-list 'load-path
       "/Users/zhuoyikang/.emacs.d/plugins/ecb-2.40")
(load-file "/Users/zhuoyikang/.emacs.d/plugins/ecb-2.40/ecb.el")
(require 'ecb)
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil)
(setq ecb-windows-width 0.25)

;;; 使某一ecb窗口最大化
(global-set-key (kbd "C-c C-v d")  'ecb-maximize-window-directories)
(global-set-key (kbd "C-c C-v s")  'ecb-maximize-window-sources)
(global-set-key (kbd "C-c C-v f")  'ecb-maximize-window-methods)
(global-set-key (kbd "C-c C-v h")  'ecb-maximize-window-history)
(global-set-key (kbd "C-c C-v b")  'ecb-restore-default-window-sizes)
;;(ecb-layout-window-sizes nil)
;;(ecb-options-version "2.40")
;;(ecb-windows-width 0.3)

;;(define-key global-map (kbd "C-c C-d") 'ecb-maximize-window-directories)
;;(define-key global-map (kbd "C-c C-s") 'ecb-maximize-window-sources)
;;(define-key global-map (kbd "C-c C-m") 'ecb-maximize-window-methods)
;;(define-key global-map (kbd "C-c C-b") 'ecb-maximize-window-history)
;;;; 恢复原始窗口布局
;;(define-key global-map "/C-c`" 'ecb-restore-default-window-sizes)

;;默认工作目录
(setq default-directory "/Users/zhuoyikang/Project/galaxy-empire-2" )
;;(cd "/Users/zhuoyikang/Project/galaxy-empire-2" )

;;templates
(require 'template)
(template-initialize)

;;安装el-get。
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(el-get 'sync)

;;lua 模式.
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list `ac-modes `(lua-mode))