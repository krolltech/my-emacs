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

;;----------------------------------------------------------------------------
;; distel
;;----------------------------------------------------------------------------

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


;;----------------------------------------------------------------------------
;; Some Erlang customizations
;;----------------------------------------------------------------------------

(add-hook 'erlang-mode-hook
	  (lambda ()
	    ;; when starting an Erlang shell in Emacs, default in the node name
	    (setq inferior-erlang-machine-options
		  '("-sname" "emacs" "-setcookie" "abc" ))
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

;;----------------------------------------------------------------------------
;; indent
;;----------------------------------------------------------------------------

(setq erlang-indent-level 2)
(add-hook 'erlang-mode-hook
	  (lambda ()
	    ;; for erlang
	    (setq default-tab-width 2)
	    (setq tab-width 2)
	    (setq-default indent-tabs-mode nil)))


(provide  'init-erlang)
