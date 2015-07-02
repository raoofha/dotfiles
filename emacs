(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
    (require 'evil)
    (evil-mode 1)

(custom-set-variables '(coffee-tab-width 4))

;(tool-bar-mode -1)
(menu-bar-mode -1)

; unbind C-w in evil
(eval-after-load "evil-maps"
  (dolist (map '(evil-motion-state-map
		 evil-insert-state-map
		 evil-emacs-state-map))
        (define-key (eval map) "\C-w" nil)))


(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-tab>") 'previous-buffer)

(global-set-key (kbd "C-w") 'kill-buffer)

(global-set-key (kbd "C-j") 'evil-window-down)
(global-set-key (kbd "C-k") 'evil-window-up)
(global-set-key (kbd "C-h") 'evil-window-left)
(global-set-key (kbd "C-l") 'evil-window-right)

(global-set-key (kbd "C-s") 'save-buffer)
