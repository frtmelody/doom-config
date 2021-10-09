;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom
;; quickstart' will do this for you). The `doom!' block below controls what
;; modules are enabled and in what order they will be loaded. Remember to run
;; 'doom refresh' after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom!
 :app
 (rss +org)

 :checkers
 (syntax +childframe)

 :completion
 (company
  +auto
  +childframe
  )

 (ivy                                   ; a search engine for love and life
  ;; +fuzzy
  +icons
  +prescient
  +childframe)

 :ui
 doom                                   ; what makes DOOM look the way it does
 doom-dashboard                         ; a nifty splash screen for Emacs
 doom-quit                              ; DOOM quit-message prompts when you quit Emacs
 hl-todo                                ; highlight TODO/FIXME/NOTE tags
 (modeline +light)                      ; snazzy, Atom-inspired modeline, plus API
 nav-flash                              ; blink the current line after jumping
 ophints                                ; highlight the region an operation acts on
 (popup                                 ; tame sudden yet inevitable temporary windows
  +all                                  ; catch all popups that start with an asterix
  +defaults)                            ; default popup rules
 ( treemacs +lsp)                       ; a project drawer, like neotree but cooler
 vi-tilde-fringe                        ; fringe tildes to mark beyond EOB
 window-select                          ; visually switch windows

 :editor
 (evil +everywhere)
 file-templates
 fold                                   ; (nigh) universal code folding
 (format +onsave)                       ; automated prettiness
 lispy                                  ; vim for lisp, for people who dont like vim
 multiple-cursors                       ; editing in many places at once
 rotate-text                            ; cycle region at point between text candidates
 snippets                               ; my elves. They type so I don't have to

 :emacs
 (dired                                 ; making dired pretty [functional]
  +ranger                               ; bringing the goodness of ranger to dired
  +icons)                               ; colorful icons for dired-mode
 electric                               ; smarter, keyword-based electric-indent
 vc                                     ; version-control and Emacs, sitting in a tree
 (undo +tree)

 :os
 (macos)

 :tools
 debugger                               ; FIXME stepping through code, to help you add bugs
 direnv
 docker
 eval                                   ; run code, run (also, repls)
 (lookup                                ; helps you navigate your code and documentation
  +dictionary
  +docsets
  +offline)

 (lsp
  +peek
  )
 (magit +forge)                         ; a git porcelain for Emacs
 make                                   ; run make tasks from Emacs
 pdf                                    ; pdf enhancements
 prodigy                                ; FIXME managing external services & code builders
 rgb                                    ; creating color strings
 tmux                                   ; an API for interacting with tmux
 upload                                 ; map local to remote projects via ssh/ftp


 :lang
 (cc +lsp)                              ; C/C++/Obj-C madness
 data                                   ; config/data formats
 emacs-lisp                             ; drown in parentheses
 yaml
 (go +lsp)                          ; the hipster dialect
 (java +lsp)                        ; the poster child for carpal tunnel syndrome ;(java +meghanada)
 ( javascript +lsp)                 ; all(hope(abandon(ye(who(enter(here))))))

 ( lua +moonscript)
 markdown

 (org
  +dragndrop
  +ipython
  +pandoc
  +present)

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
 (swift +lsp)
 nix
 (web +lsp)


 :config
 (default +bindings +snippets +smartparens)

 )

(setq custom-file (expand-file-name "custom.el" doom-private-dir))
(load custom-file 'no-error 'no-message)
