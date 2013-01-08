;; -*- Emacs-Lisp -*-
 
;; Time-stamp: <2009-11-22 17:49:25 Sunday by ahei>
 
;; 在mode-line上用彩色显示当前buffer行数
(defun get-lines-4-mode-line ()
  (let ((lines (count-lines (point-min) (point-max))))
    (concat (propertize
             (format "%dL" lines)
             'mouse-face 'mode-line-highlight
             ;; 加上颜色
             'face 'mode-line-lines-face
             'help-echo (format "%d lines" lines)) " ")))
 
(size-indication-mode 1)
(setq is-after-emacs-23 1)
(setq-default mode-line-buffer-identification (propertized-buffer-identification "%b"))
 
(if is-after-emacs-23
    (setq-default
     mode-line-position
     `((:eval (get-lines-4-mode-line))
       (1 ,(propertize
            "%p"
            'local-map mode-line-column-line-number-mode-map
            'mouse-face 'mode-line-highlight
            'help-echo "Size indication mode\n\
mouse-1: Display Line and Column Mode Menu"))
       (size-indication-mode
        (" "
         (:eval
          (propertize
           (if (and transient-mark-mode mark-active)
               (format "%d chars" (abs (- (mark t) (point))))
             "%I")
           'face (and transient-mark-mode mark-active 'region)
           'local-map mode-line-column-line-number-mode-map
           'mouse-face 'mode-line-highlight
           'help-echo "Buffer position, mouse-1: Line/col menu"))))
       (line-number-mode
        ((column-number-mode
          (1 ,(propertize
               " (%l,%c)"
               'local-map mode-line-column-line-number-mode-map
               'mouse-face 'mode-line-highlight
               'help-echo "Line number and Column number\n\
mouse-1: Display Line and Column Mode Menu"))
          (1 ,(propertize
               " L%l"
               'local-map mode-line-column-line-number-mode-map
               'mouse-face 'mode-line-highlight
               'help-echo "Line Number\n\
mouse-1: Display Line and Column Mode Menu"))))
        ((column-number-mode
          (1 ,(propertize
               " C%c"
               'local-map mode-line-column-line-number-mode-map
               'mouse-face 'mode-line-highlight
               'help-echo "Column number\n\
mouse-1: Display Line and Column Mode Menu")))))))
  (let* ((help-echo "mouse-1: select (drag to resize), mouse-2 = C-x 1, mouse-3 = C-x 0"))
    (setq-default
     mode-line-position
     `((:eval (get-lines-4-mode-line))
       (1 ,(propertize "%p" 'help-echo help-echo))
       (size-indication-mode
        (1 ,(propertize " %I" 'help-echo help-echo)))
       (line-number-mode
        ((column-number-mode
          (1 ,(propertize " (%l,%c)" 'help-echo help-echo))
          (1 ,(propertize " L%l" 'help-echo help-echo))))
        ((column-number-mode
          (1 ,(propertize " C%c" 'help-echo help-echo)))))))))
 
(let* ((help-echo
        "mouse-1: Select (drag to resize)\n\
mouse-2: Make current window occupy the whole frame\n\
mouse-3: Remove current window from display")
       (recursive-edit-help-echo "Recursive edit, type C-M-c to get out")
       (standard-mode-line-modes
        (list
         " "
         (propertize "%[" 'help-echo recursive-edit-help-echo)
         (propertize "(" 'help-echo help-echo)
         `(:propertize ("" mode-name)
                       help-echo "Major mode\n\
mouse-1: Display major mode menu\n\
mouse-2: Show help for major mode\n\
mouse-3: Toggle minor modes"
                       mouse-face mode-line-highlight
                       local-map ,mode-line-major-mode-keymap)
         '("" mode-line-process)
         `(:propertize ("" minor-mode-alist)
                       mouse-face mode-line-highlight
                       help-echo "Minor mode\n\
mouse-1: Display minor mode menu\n\
mouse-2: Show help for minor mode\n\
mouse-3: Toggle minor modes"
                       local-map ,mode-line-minor-mode-keymap)
         (propertize "%n" 'help-echo "mouse-2: Remove narrowing from the current buffer"
                     'mouse-face 'mode-line-highlight
                     'local-map (make-mode-line-mouse-map
                                 'mouse-1 #'mode-line-widen))
         (propertize ")" 'help-echo help-echo)
         (propertize "%]" 'help-echo recursive-edit-help-echo))))
  (setq-default mode-line-modes standard-mode-line-modes)
  (setq-default mode-line-format
                `("%e%t"
                  mode-line-mule-info
                  mode-line-client
                  mode-line-modified
                  mode-line-remote
                  " "
                  mode-line-buffer-identification
                  ,(propertize " " 'help-echo help-echo)
                  mode-line-position
                  (vc-mode vc-mode)
                  mode-line-modes
                  (which-func-mode (" " which-func-format))
                  (working-mode-line-message (" " working-mode-line-message))
                  ,(propertize "-%-" 'help-echo help-echo))))
 
(setq mode-line-format-bak mode-line-format)
(setq mode-line t)
(defun toggle-mode-line ()
  "Toggle mode-line."
  (interactive)
  (if mode-line
      (setq-default mode-line-format nil)
    (setq-default mode-line-format mode-line-format-bak))
  (setq mode-line (not mode-line)))
 
;; 在标题栏显示登陆名称和文件名
(setq frame-title-format
      '((:eval
         (let ((login-name (getenv-internal "LOGNAME")))
           (if login-name (concat login-name "@") "")))
        (:eval (system-name))
        ":"
        (:eval (or (buffer-file-name) (buffer-name)))))


;; 
(setq default-mode-line-format 
      (list "%Z" 
            'mode-line-modified 
            " <%b> " 
            ;; 'xx-update-time-string 
            " (%l,%c,%P) " 
            'which-func-format 
            'vc-mode 
            " %[{" 
            'mode-name 
            'minor-mode-alist 
            "}%n%] " 
            ") %"))
