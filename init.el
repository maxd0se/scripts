;; .emacs.d/init.el
;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)
;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'load-path "/opt/emacs-libvterm")
(require 'vterm)

;; Initializes the package infrastructure
(package-initialize)
;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))
;; Installs packages
;;
;; myPackages contains a list of package names
(defvar myPackages
  '(cyberpunk-theme
    imenu-list
    treemacs
    better-defaults
    elpy
    magit
    flycheck
    python-mode
    )
  )
;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      myPackages)
;; ===================================
;; Basic Customization
;; ===================================
(setq inhibit-startup-message t);; Hide the startup message
(add-hook 'emacs-startup-hook 'treemacs)
(setq treemacs-width 20)
(setq treemacs-git-mode 'simple)
(setq treemacs-show-hidden-files t)
(setq treemacs-follow-after-init t)
(imenu-list-minor-mode)
(global-set-key (kbd "C-i") #'imenu-list-smart-toggle)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize t)
(load-theme 'cyberpunk t)           ;; Load cyberpunk theme
(elpy-enable)
;;(imenu-list-minor-mode)
(setq python-shell-interpreter "/usr/bin/python3")
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(desktop-save-mode 1)
;; User-Defined init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elpy imenu-list-minor-mode better-defaults magit flycheck python-mode cyberpunk-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
