;;; personal --- Uncomment the modules you'd like to use and restart Prelude afterwards

;;';(setv ispell-change-dictionary RET deutsch8 RET)
;(require 'ox-html)



;; Emacs IRC client
;;(require 'prelude-erc)
(require 'prelude-ido) ;; Super charges Emacs completion for C-x C-f and more
;; (require 'prelude-helm) ;; Interface for narrowing and search
;; (require 'prelude-helm-everywhere) ;; Enable Helm everywhere
(require 'prelude-company)
;; (require 'prelude-key-chord) ;; Binds useful features to key combinations
;; (require 'prelude-mediawiki)
;; (require 'prelude-evil)

;;; Programming languages support
(require 'prelude-c)
;; (require 'prelude-clojure)
;; (require 'prelude-coffee)
;; (require 'prelude-common-lisp)
;; (require 'prelude-css)
(require 'prelude-emacs-lisp)
;; (require 'prelude-erlang)
;; (require 'prelude-elixir)
;; (require 'prelude-go)
;; (require 'prelude-haskell)
(require 'prelude-js)
(require 'prelude-latex)
;; (require 'prelude-lisp)
;; (require 'prelude-ocaml)
(require 'prelude-org) ;; Org-mode helps you keep TODO lists, notes and more
(require 'prelude-perl)
(require 'prelude-python)
;; (require 'prelude-ruby)
;; (require 'prelude-scala)
;; (require 'prelude-scheme)
(require 'prelude-shell)
;; (require 'prelude-scss)
;; (require 'prelude-web) ;; Emacs mode for web templates
(require 'prelude-xml)
;; (require 'prelude-yaml)


;; enable reftex:
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)   ; with AUCTeX LaTeX mode
;;(add-hook 'latex-mode-hook 'turn-on-reftex)   ; with Emacs latex mode



;;; Code:
;; tell ipythona not to use colour with elpy
(setq ansi-color-for-comint-mode t)

;; activate elpy
;;(elpy-enable)

;;
;;; Code
(global-flycheck-mode)
;;; hans.el ends here

;; below are attempts to make babel mode work (Feb 2017), but with
;; no success

;;  (with-eval-after-load 'org
;;    (require 'ob-python)
;;    (org-babel-do-load-languages
;;     'org-babel-load-languages
;;     '((C . t)
;;       (python . t)))
;;    )
;;
;;
;;  (org-babel-do-load-languages
;;   'org-babel-load-languages
;;   '((python . t)))
;;
;;  ;; not working? ;;
;;  ;; not working? ;;(require 'ob-python)
;;  ;; not working? ;;(require 'ob-clojure)
;;  ;; not working? ;;(require 'ob-perl)
;;  ;; not working? ;;(require 'ob-dot)
;;  ;; not working? ;;(require 'ob-R)
;;  ;; not working? ;;(require 'ob-gnuplot)
;;  ;; not working? ;;(require 'ob-lisp)
;;  ;; not working? ;;(require 'ob-org)
;;  ;; not working? ;;(require 'ob-screen)
;;  ;; not working? ;;(require 'ob-calc)
;;  ;; not working? ;;(require 'ob-js)
;;  ;; not working? ;;(require 'ob-latex)
;;  ;; not working? ;;(require 'ob-plantuml)
;;  ;; not working? ;;(require 'ob-sh)
;;  ;; not working? ;;(require 'ob-shell)
;;  ;; not working? ;;(require 'ob-ditaa)
;;  ;; not working? ;;(require 'ob-awk)
;;  ;; not working? ;;(require 'ob-octave)
;;  ;; not working? ;;(require 'ob-sed)
;;  ;; not working? ;;(require 'ob-sql)
;;  ;; not working? ;;(require 'ob-sqlite)
;;  ;; not working? ;;
;;  ;; not working? ;;(org-babel-do-load-languages
;;  ;; not working? ;; 'org-babel-load-languages
;;  ;; not working? ;; '( (perl . t)
;;  ;; not working? ;;    (dot . t)
;;  ;; not working? ;;    (R . t)
;;  ;; not working? ;;    (gnuplot . t)
;;  ;; not working? ;;    (clojure . t)
;;  ;; not working? ;;    ;;    (graphviz . t)
;;  ;; not working? ;;    (lisp . t)
;;  ;; not working? ;;    ;;    (stan . t)
;;  ;; not working? ;;    (org . t)
;;  ;; not working? ;;    (screen . t)
;;  ;; not working? ;;    (calc . t)
;;  ;; not working? ;;    (js . t)
;;  ;; not working? ;;    (latex . t)
;;  ;; not working? ;;    (plantuml . t)
;;  ;; not working? ;;    (ruby . t)
;;  ;; not working? ;;    (sh . t)
;;  ;; not working? ;;    (python . t)
;;  ;; not working? ;;    (emacs-lisp . t)
;;  ;; not working? ;;    (ditaa . t)
;;  ;; not working? ;;    (awk . t)
;;  ;; not working? ;;    (octave . t)
;;  ;; not working? ;;    (sed . t)
;;  ;; not working? ;;    (shell . t)
;;  ;; not working? ;;    (sh . t)
;;  ;; not working? ;;    (sql . t)
;;  ;; not working? ;;    (sqlite . t)
;;  ;; not working? ;;    ))
;;  ;; not working? ;;
;;
(setq org-agenda-include-all-todo t)
;; (setq org-agenda-files '("~/xfel/xfel"))
(load-library "find-lisp")
(setq org-agenda-files
      (find-lisp-find-files "~/xfel" "\.org$"))

;; (require 'color-theme)
;; (setq color-theme-is-global t)
;; (color-theme-initialize)
;;
;; (load "color-theme-colorful-obsolescence")
;; (load "color-theme-zenburn")
;; (load "color-theme-tangotango")
;; (load "color-theme-railscast")
;; (load "color-theme-leuven")
;; (load "color-theme-folio")
;; (load "color-theme-zenash")
;; (load "color-theme-manoj")
;;
;; (setq my-color-themes (list
;;   'color-theme-tangotango
;;   'color-theme-colorful-obsolescence 'color-theme-zenburn
;;   'color-theme-leuven 'color-theme-folio
;;   'color-theme-manoj 'color-theme-zenash
;;   'color-theme-railscast
;; ))
;;
;; (defun my-theme-set-default () ; Set the first row
;;       (interactive)
;;       (setq theme-current my-color-themes)
;;       (funcall (car theme-current)))
;;
;;     (defun my-describe-theme () ; Show the current theme
;;       (interactive)
;;       (message "%s" (car theme-current)))
;;
;;    ; Set the next theme (fixed by Chris Webber - tanks)
;;     (defun my-theme-cycle ()
;;       (interactive)
;;       (setq theme-current (cdr theme-current))
;;       (if (null theme-current)
;;       (setq theme-current my-color-themes))
;;       (funcall (car theme-current))
;;       (message "%S" (car theme-current)))
;;
;;     (setq theme-current my-color-themes)
;;     (setq color-theme-is-global nil) ; Initialization
;;     (my-theme-set-default)
;; (global-set-key [f4] 'my-theme-cycle)
;;
;;
;;(load-theme 'leuven t)
;;
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings. See https://github.com/hlissner/emacs-doom-themes/tree/screenshots
;;(load-theme 'doom-one t)
;;(load-theme 'doom-city-lights t)
(load-theme 'doom-molokai t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; (setq doom-font (font-spec :family "Menlo" :size 18))

(setq doom-font (font-spec :family "Inconsolata" :size 18))

(setq org-startup-indented t)

;;
(set-default-font "Inconsolata")
;; (set-frame-font "Inconsolata-12")
;; follow https://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly
;; to set font for 'emacs --daemon' mode
(setq default-frame-alist '((font . "Inconsolata-14")))
