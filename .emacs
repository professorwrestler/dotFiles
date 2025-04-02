(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox))
 '(custom-safe-themes
   '("5a0ddbd75929d24f5ef34944d78789c6c3421aa943c15218bac791c199fc897d"
     "d5fd482fcb0fe42e849caba275a01d4925e422963d1cd165565b31d3f4189c87"))
 '(package-selected-packages
   '(## acme-theme cider dashboard exec-path-from-shell geiser-guile
	gruvbox-theme lua-mode paredit plan9-theme python-mode
	smartparens)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Mono for Powerline" :foundry "nil" :slant normal :weight regular :height 140 :width normal)))))

;;start dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
;;set splash image
(setq dashboard-startup-banner "~/.emacs.d/logos/kawaii-sm.png")
;;center content
(setq dashboard-center-content t)

;;MELPA setup for installing packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;;lets me to properly use zshell in an emacs window 
(require 'exec-path-from-shell) ;; if not using the ELPA package
(exec-path-from-shell-initialize)

;;move backup files to trash
(setq backup-directory-alist            '((".*" . "~/.Trash")))

;;make font bigger (14 px)
(set-face-attribute 'default nil :height 140)

;;add smartparens
(require 'smartparens-config)

;;show line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;;allow autocomplete at startup
(require 'auto-complete)
(global-auto-complete-mode t)

;;allow access to node libraries
(setenv "NODE_PATH" "/usr/local/lib/node_modules")
;;use prettier to auto-format code
(add-hook 'after-init-hook #'global-prettier-mode)

;;add slime for sbcl
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

;;add paredit for lisp to close parentheses
;;(add-hook 'lisp-mode-hook 'enable-paredit-mode)

;;and for guile/scheme
;;(add-hook 'scheme-mode-hook 'enable-paredit-mode)

;;automatically closes parens for non-lisp languages
(electric-pair-mode)

;;syntax highlighting for elisp
;;(add-hook 'elisp-mode-hook 'font-lock-mode)
