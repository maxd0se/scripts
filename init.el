;; .Emacs.d/init.el
;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
(require 'package)
(require 'symon)
(require 'all-the-icons)
(require 'org)
;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
    auto-complete
    treemacs
    magit
    flycheck
    python-mode
    pdf-tools
    which-key
    terraform-mode
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
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
(setq treemacs-width 30)
(setq treemacs-git-mode 'simple)
(setq treemacs-show-hidden-files t)
(setq treemacs-follow-after-init t)
(imenu-list-minor-mode)
(defun ml/zsh ()
  "Start a terminal emulator in a new window."
  (interactive)
  (split-window-sensibly)
  (other-window 1)
  (ansi-term (executable-find "bash")))
(global-set-key (kbd "C-i") #'imenu-list-smart-toggle)
(global-set-key (kbd "M-w") #'treemacs-select-window)
(global-set-key (kbd "C-s") #'ml/zsh)
(global-set-key (kbd "M-o") #'split-window-horizontally)
(windmove-default-keybindings)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize t)
(setq sml/theme 'dark)
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "/Users/charles.ragland/org/tasking.org"))
(global-set-key (kbd "C-a") #'org-agenda)
(which-key-mode)
(symon-mode)
(load-theme 'cyberpunk t)           ;; Load cyberpunk theme
;;(elpy-enable)
;;(imenu-list-minor-mode)
;;(setq python-shell-interpreter "/usr/bin/python3")
;;(when (require 'flycheck nil t)
;;  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
;;  (add-hook 'elpy-mode-hook 'flycheck-mode))
;;(desktop-save-mode 1)
;; User-Defined init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org-super-agenda org-agenda-property yaml-mode docker all-the-icons ## which-key symon pdf-tools auto-complete smart-mode-line terraform-mode cyberpunk-theme imenu-list-minor-m$
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
