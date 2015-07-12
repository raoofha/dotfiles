(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

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
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider
    ac-cider
    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description
    ;; of ido
    ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; project navigation
    projectile

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    tagedit

    ;; git integration
    magit))




(dolist (p my-packages)
  (unless (package-installed-p p)
        (package-install p)))

(evil-mode 1)


(custom-set-variables '(coffee-tab-width 4))

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(global-linum-mode t)

; unbind C-w in evil
;(eval-after-load "evil-maps"
;  (dolist (map '(evil-motion-state-map
;		 evil-insert-state-map
;		 evil-emacs-state-map))
;        (define-key (eval map) "\C-w" nil)))


(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-tab>") 'previous-buffer)

;(global-set-key (kbd "C-w") 'kill-buffer)

(global-set-key (kbd "C-j") 'evil-window-down)
(global-set-key (kbd "C-k") 'evil-window-up)
(global-set-key (kbd "C-h") 'evil-window-left)
(global-set-key (kbd "C-l") 'evil-window-right)

(global-set-key (kbd "C-s") 'save-buffer)
