(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/other-packages")
;(add-to-list 'custom-theme-load-path "~/.emacs.d/custom-themes")

(setq package-enable-at-startup nil)
(package-initialize)

;(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
;    (require 'evil)
;    (evil-mode 1)

; install my own packages
;(defvar my-packages '(evil
;		      clojure-mode
;		      cider))

(defvar my-packages
  '(
    evil
    ;; makes handling lisp expressions much, much easier
    ;; Cheatsheet: http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    ;clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider
    ;;ac-cider
    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description
    ;; of ido
    ;ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    ;smex

    ;; project navigation
    projectile

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    ;tagedit

    ;; git integration
    magit
    ;; for scheme
    ;quack
    ;scala-mode
    ;sanityinc-tomorrow-bright
    ;ensime
    haskell-mode
    elm-mode
    ;powerline
    flycheck
    ein
    base16-theme
    color-theme-sanityinc-tomorrow
    cyberpunk-theme
    ))




(dolist (p my-packages)
  (unless (package-installed-p p)
        (package-install p)))

(evil-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq-default mode-line-format nil) ; turn off status line
(blink-cursor-mode 0)
;(setq x-select-enable-primary t)
;(setq x-select-enable-clipboard t)

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
;(setq backup-directory-alist '(("" . "/tmp/emacs-backup")))

;(setq base16-theme-256-color-source "terminal")
;(setq base16-theme-256-color-source "colors")
;(setq base16-theme-256-color-source "base16-shell")
;(load-theme 'base16-bright t)
;(load-theme 'base16-3024 t)
;(load-theme 'base16-irblack t)
;(load-theme 'base16-isotope t)
;(load-theme 'base16-macintosh t)
;(load-theme 'base16-pop t)
;(load-theme 'cyberpunk t)
(load-theme 'sanityinc-tomorrow-bright t)

;(load "evil-noautochdir.el")
(require 'evil-noautochdir)

(global-linum-mode t)
; add a space after linenumber
;(setq linum-format "%d ")
;(setq linum-format "%d\u2502")
;(setq linum-format "%7d ")
;(setq linum-format 'dynamic)
(defadvice linum-update-window (around linum-dynamic activate)
  (let* ((w (length (number-to-string
                     (count-lines (point-min) (point-max)))))
         (linum-format (concat "%" (number-to-string w) "d ")))
    ad-do-it))

; unbind C-w in evil
;(eval-after-load "evil-maps"
;  (dolist (map '(evil-motion-state-map
;		 evil-insert-state-map
;		 evil-emacs-state-map))
;        (define-key (eval map) "\C-w" nil)))


(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-tab>") 'previous-buffer)
(global-set-key (kbd "<C-iso-lefttab>") 'previous-buffer)

(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-q") 'evil-quit)
;(global-unset-key (kbd "C-w"))
;(global-unset-key "\C-w")
;(global-set-key (kbd "C-w") 'evil-delete-buffer)
(eval-after-load "evil-maps"
  (dolist (map '(evil-motion-state-map
                 evil-insert-state-map
                 evil-emacs-state-map))
    (define-key (eval map) "\C-w" 'evil-delete-buffer)))
(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)))

(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)



(set-default 'truncate-lines t)
(savehist-mode 1)
(setq scroll-step            1
      scroll-conservatively  10000)

;(define-key evil-normal-state-map (kbd "return") nil)
(evil-define-key 'normal clojure-mode-map (kbd "RET") 'cider-eval-last-sexp-to-repl)

;(with-eval-after-load 'evil-maps
;  (define-key evil-normal-state-map (kbd "o") 'evil-end-of-line))






; scheme config
;------------------------------------------------------
;;; Always do syntax highlighting
(global-font-lock-mode 1)
;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)
;;; This is the binary name of my scheme implementation
(setq scheme-program-name "scheme")
;------------------------------------------------------

;(load-theme 'sanityinc-tomorrow-bright)
;(require 'sanityinc-tomorrow-bright)
;(require 'color-theme-sanityinc-tomorrow)

;(powerline-default-theme)
(setq vc-follow-symlinks nil)
(add-hook 'after-init-hook #'global-flycheck-mode)
;; store all backup and autosave files in the tmp dir
;(setq backup-directory-alist
      ;`((".*" . ,temporary-file-directory)))
;(setq auto-save-file-name-transforms
      ;`((".*" ,temporary-file-directory t)))

;(setq noautochdir t) ; wrong
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default-frame-alist
    (quote
     ((vertical-scroll-bars)
      (left-fringe . 0)
      (right-fringe . 0)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq cider-cljs-lein-repl
      "(do (require 'figwheel-sidecar.repl-api)
           (figwheel-sidecar.repl-api/start-figwheel!)
           (figwheel-sidecar.repl-api/cljs-repl))")
