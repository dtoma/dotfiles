(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'default-frame-alist
             '(font . "Roboto Mono Light for Powerline-10"))

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq c-default-style "Stroustrup"
      c-basic-offset 4)
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)
(show-paren-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (intero powerline monokai-theme molokai-theme solarized-theme sml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

(require 'ido)
(ido-mode t)


(require 'powerline)
(powerline-default-theme)
;; (powerline-center-theme)
;; (powerline-center-evil-theme)
;; (powerline-vim-theme)
;; (powerline-nano-theme)

;; ocp-indent
(add-to-list 'load-path "/home/dtoma/.opam/4.02.1/share/emacs/site-lisp")
(require 'ocp-indent)

;; tuareg
(load "/home/dtoma/.opam/4.02.1/share/emacs/site-lisp/tuareg-site-file")

;; merlin
(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
 (when (and opam-share (file-directory-p opam-share))
  (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
  (autoload 'merlin-mode "merlin" nil t nil)
  (add-hook 'tuareg-mode-hook 'merlin-mode t)
  (add-hook 'caml-mode-hook 'merlin-mode t)))

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
