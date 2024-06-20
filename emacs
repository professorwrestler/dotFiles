(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("9fb561389e5ac5b9ead13a24fb4c2a3544910f67f12cfcfe77b75f36248017d0" "a1c18db2838b593fba371cb2623abd8f7644a7811ac53c6530eebdf8b9a25a8d" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" default))
 '(package-selected-packages
   '(prettier elune-theme dream-theme melancholy-theme cyberpunk-theme birds-of-paradise-plus-theme commentary-theme constant-theme company nordless-theme nordic-night-theme nord-theme js2-mode smartparens dummyparens jazz-theme autumn-light-theme rimero-theme poet-theme grayscale-theme greymatters-theme grey-paper-theme timu-spacegrey-theme zenburn-theme tok-theme exec-path-from-shell anti-zenburn-theme ample-theme ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;non automated stuff:

;;MELPA setup for installing packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;adds python autocomplete
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;lets me to properly use zshell in an emacs window 
(require 'exec-path-from-shell) ;; if not using the ELPA package
(exec-path-from-shell-initialize)
;;move backup files to trash
(setq backup-directory-alist            '((".*" . "~/.Trash")))

;;make font bigger (14 px)
(set-face-attribute 'default nil :height 140)

;;add smartparens
(require 'smartparens-config)
;; Always start smartparens mode in js-mode.
(add-hook 'js-mode-hook #'smartparens-mode)

;;show line numbers
;;(global-display-line-numbers-mode 1)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;;set js indent level to two spaces
(setq js-indent-level 2)

;;allow autocomplete at startup
(require 'auto-complete)
(global-auto-complete-mode t)

;;allow access to node libraries
(setenv "NODE_PATH" "/usr/local/lib/node_modules")
;;use prettier to auto-format code
(add-hook 'after-init-hook #'global-prettier-mode)
