(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(manoj-dark))
 '(custom-safe-themes
   '("b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "0ed3d96a506b89c1029a1ed904b11b5adcebeb2e0c16098c99c0ad95cb124729" "b273cc6a1d492660fff886a3cae1f00d5fd2d53b55fb374a21a14afd74fdec92" default))
 '(package-selected-packages
   '(exec-path-from-shell virtualenv jedi anti-zenburn-theme ample-theme ##)))
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
