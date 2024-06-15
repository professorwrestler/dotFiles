(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(poet))
 '(custom-safe-themes
   '("c7737b9fc3471779c8e51ea0a37834d24aa80a0d6a79b215e7501227ada39855" "2d035eb93f92384d11f18ed00930e5cc9964281915689fa035719cab71766a15" "f490984d405f1a97418a92f478218b8e4bcc188cf353e5dd5d5acd2f8efd0790" "35c096aa0975d104688a9e59e28860f5af6bb4459fd692ed47557727848e6dfe" "28a104f642d09d3e5c62ce3464ea2c143b9130167282ea97ddcc3607b381823f" "11d7091bbb9ba07b9a948f51ff424fbeaf79d914b69566e0b5768bec9efe0841" "d92c1c36a5181cf629749bf6feee1886cf6bce248ab075c9d1b1f6096fea9539" "f56e81765ccd0ee403860bd1d0a2f9967aa132b4a6f40517dd5eb13f7726eaba" "b6a32f5bbe3c636432bdaa0bb7a5e24f7419cb1787135cc6295ac07d2fac628a" "96005f97499f0549f921f81588f190f189b7acb8bbebbcbb9033cdd340118f80" "7e1b614af1e8e06d5dba84728088ac0dac9dcdc45407edf2bc0ccee0a8a7a9c8" "b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "0ed3d96a506b89c1029a1ed904b11b5adcebeb2e0c16098c99c0ad95cb124729" "b273cc6a1d492660fff886a3cae1f00d5fd2d53b55fb374a21a14afd74fdec92" default))
 '(package-selected-packages
   '(smartparens dummyparens jazz-theme autumn-light-theme rimero-theme poet-theme grayscale-theme greymatters-theme grey-paper-theme timu-spacegrey-theme zenburn-theme tok-theme exec-path-from-shell virtualenv jedi anti-zenburn-theme ample-theme ##)))
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
