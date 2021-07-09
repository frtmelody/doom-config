;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom
;; quickstart' will do this for you). The `doom!' block below controls what
;; modules are enabled and in what order they will be loaded. Remember to run
;; 'doom refresh' after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom! :completion
       (company                         ; the ultimate code completion backend
        +auto                           ; as-you-type code completion
        +childframe                     ; a nicer company UI (Emacs 26+ only)
        )
       ;; (helm             ; the *other* search engine for love and life
       ;; +fuzzy)          ; enable fuzzy search backend for helm
       ;; ido               ; the other *other* search engine...
       (ivy                             ; a search engine for love and life
        +icons
        +prescient
        +childframe)

       :ui
       doom                     ; what makes DOOM look the way it does
       doom-dashboard           ; a nifty splash screen for Emacs
       doom-quit                ; DOOM quit-message prompts when you quit Emacs
       ;;fill-column       ; a `fill-column' indicator
       hl-todo                  ; highlight TODO/FIXME/NOTE tags
       ;; indent-guides     ; highlighted indent columns
       (modeline +light) ; snazzy, Atom-inspired modeline, plus API
       nav-flash                ; blink the current line after jumping
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints                  ; highlight the region an operation acts on
       (popup                   ; tame sudden yet inevitable temporary windows
        +all                    ; catch all popups that start with an asterix
        +defaults)              ; default popup rules
       ;;pretty-code       ; replace bits of code with pretty symbols
       ;;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       treemacs                 ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       ;; vc-gutter                        ; vcs diff in the fringe
       vi-tilde-fringe                  ; fringe tildes to mark beyond EOB
       window-select                    ; visually switch windows
       ;; workspaces                       ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere)               ; come to the dark side, we have cookies
       file-templates                   ; auto-snippets for empty files
       fold                             ; (nigh) universal code folding
       (format +onsave)                 ; automated prettiness
       lispy                            ; vim for lisp, for people who dont like vim
       multiple-cursors                 ; editing in many places at once
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text                      ; cycle region at point between text candidates
       snippets                         ; my elves. They type so I don't have to

       :emacs
       (dired                           ; making dired pretty [functional]
        +ranger                         ; bringing the goodness of ranger to dired
        +icons)                         ; colorful icons for dired-mode
       electric                         ; smarter, keyword-based electric-indent
       vc                               ; version-control and Emacs, sitting in a tree

       ; :term
       ;; eshell                           ; a consistent, cross-platform shell (WIP)
       ;;term              ; terminals in Emacs
       ; vterm                            ; another terminals in

       :tools
       debugger                         ; FIXME stepping through code, to help you add bugs
       direnv
       docker
       eval                             ; run code, run (also, repls)
       (lookup                          ; helps you navigate your code and documentation
        +devdocs                        ; ...on devdocs.io online
        +docsets)                       ; ...or in Dash docsets locally
       macos
       (lsp +eglot)
       (magit +forge) ; a git porcelain for Emacs
       make                             ; run make tasks from Emacs
       pdf                              ; pdf enhancements
       prodigy                          ; FIXME managing external services & code builders
       rgb                              ; creating color strings
       tmux                             ; an API for interacting with tmux
       upload                           ; map local to remote projects via ssh/ftp

       :checkers
       syntax
       ;; (spell +flyspell)

       :lang
       (cc +lsp)                 ; C/C++/Obj-C madness
       data                       ; config/data formats
       emacs-lisp                   ; drown in parentheses
       yaml
       (go +lsp) ; the hipster dialect
       (java +lsp)                  ; the poster child for carpal tunnel syndrome ;(java +meghanada)
       javascript                   ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       kotlin                           ; a better, slicker Java(Script)
       latex                            ; writing papers in Emacs has never been so fun
       ;;ledger            ; an accounting system in Emacs
       lua                              ; one-based indices? one-based indices
       markdown                         ; writing docs for people to ignore
       (org
        +dragndrop
        +ipython
        +pandoc
        +present)
       raku
       php
       (python
        +pyenv
        +conda
        +lsp)
       (ruby +lsp)
       (rust +lsp)
       (dart +lsp +flutter)
       scala
       sh
       swift
       nix

       :app
       (rss +org)
       :collab

       :config

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.

       ;;terra             ; Earth and Moon in alignment for performance.
                                        ; the tubes                              web
       ;;vala              ; GObjective-C
       ;;(email +gmail)    ; emacs as an email client
       ;;irc               ; how neckbeards socialize
       ;;; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       ;; (write                           ; emacs as a word processor (latex + org + markdown)
       ;;  +wordnut                        ; wordnet (wn) search
       ;;  +langtool)                      ; a proofreader (grammar/style check) for Emacs
       ;;floobits          ; peer programming for a price
       ;;impatient-mode    ; show off code over HTTP
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate
       (default +bindings +snippets +smartparens)

       :private
       lsp-intellij
       )

(setq custom-file (expand-file-name "custom.el" doom-private-dir))
(load custom-file 'no-error 'no-message)
