;;;  -*- lexical-binding: t; -*-

(add-hook! 'text-mode-hook (setq-local truncate-lines nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ORG
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (setq org-directory (expand-file-name "~/org-notes")
;;       org-agenda-files (list org-directory)
;;       org-ellipsis " ▼ "

;;       ;; The standard unicode characters are usually misaligned depending on the
;;       ;; font. This bugs me. Markdown #-marks for headlines are more elegant.
;;       org-bullets-bullet-list '("#"))

(use-package! ox-confluence-en
  :defer t
  )

(after! org
  (require 'ox-confluence-en)
  (setq org-todo-keywords
        (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
                (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))
  (setq org-plantuml-jar-path (expand-file-name "plantuml.jar" doom-private-dir))
  (setq org-ditaa-jar-path (expand-file-name "ditaa.jar" doom-private-dir))
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((perl . t)
     (ruby . t)
     (shell . t)
     (dot . t)
     (js . t)
     (latex .t)
     (python . t)
     (emacs-lisp . t)
     (plantuml . t)
     (C . t)
     (ditaa . t)))
  (setq org-directory (expand-file-name "~/org-notes"))
  (setq org-ellipsis " ▼ ")
  (setq org-agenda-file-note (expand-file-name "notes.org" org-directory))
  (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-directory))
  (setq org-agenda-file-journal (expand-file-name "journal.org" org-directory))
  (setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-directory))
  (setq org-default-notes-file (expand-file-name "gtd.org" org-directory))
  (setq org-agenda-files (list org-directory))

  (setq org-directory "~/org-notes/")
  (setq org-mobile-directory "~/Documents/MobileOrg")
  (setq org-mobile-inbox-for-pull "~/org-notes/inbox.org")

  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline org-agenda-file-gtd "Workspace")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("n" "Notes" entry (file+headline org-agenda-file-note "Quick notes")
           "* %?\n  %i\n %U"
           :empty-lines 1)
          ("i" "Ideas" entry (file+headline org-agenda-file-note "Ideas")
           "* TODO [#B] %?\n  %i\n %U"
           :empty-lines 1)
          ("s" "Code Snippet" entry
           (file org-agenda-file-code-snippet)
           "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
          ("w" "Work Project" entry (file+headline org-agenda-file-gtd "WorkProject")
           "* TODO [#A] %?\n  %i\n %U"
           :empty-lines 1)
          ("c" "Chrome" entry (file+headline org-agenda-file-note "Quick notes")
           "* TODO [#C] %?\n %(frtmelody/retrieve-chrome-current-tab-url)\n %i\n %U"
           :empty-lines 1)
          ("l" "Links" entry (file+headline org-agenda-file-note "Quick notes")
           "* TODO [#C] %?\n  %i\n %a \n %U"
           :empty-lines 1)
          ("j" "Journal Entry"
           entry (file+datetree org-agenda-file-journal)
           "* %?"
           :empty-lines 1)))
  (setq org-agenda-custom-commands
        '(
          ("w" . "任务安排")
          ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
          ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
          ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
          ("b" "Blog" tags-todo "BLOG")
          ("p" . "项目安排")
          ("pw" tags-todo "PROJECT+WORK+CATEGORY=\"work\"")
          ("pl" tags-todo "PROJECT+DREAM+CATEGORY=\"frtmelody\"")
          ("W" "Weekly Review"
           ((stuck "")            ;; review stuck projects as designated by org-stuck-projects
            (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
            ))))
  (setq org-log-into-drawer "LOGBOOK")


  ;; Schedule/deadline popup with default time
  (defvar org-default-time "10:30"
    "The default time for deadlines.")

  (defun advise-org-default-time (func arg &optional time)
    (let ((old-time (symbol-function #'org-read-date)))
      (cl-letf (((symbol-function #'org-read-date)
                 #'(lambda (&optional a b c d default-time f g)
                     (let ((default-time (or default-time
                                             org-default-time)))
                       (apply old-time a b c d f default-time g)
                       ))))
        (apply func arg time))))



  (setq org-latex-classes
        '(("ctexart"
           "\\documentclass[UTF8,a4paper]{ctexart}"
           ("\\section{%s}" . "\\section*{%s}")
           ("\\subsection{%s}" . "\\subsection*{%s}")
           ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
           ("\\paragraph{%s}" . "\\paragraph*{%s}")
           ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
          ("ctexrep"
           "\\documentclass[UTF8,a4paper]{ctexrep}"
           ("\\part{%s}" . "\\part*{%s}")
           ("\\chapter{%s}" . "\\chapter*{%s}")
           ("\\section{%s}" . "\\section*{%s}")
           ("\\subsection{%s}" . "\\subsection*{%s}")
           ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
          ("ctexbook"
           "\\documentclass[UTF8,a4paper]{ctexbook}"
           ("\\part{%s}" . "\\part*{%s}")
           ("\\chapter{%s}" . "\\chapter*{%s}")
           ("\\section{%s}" . "\\section*{%s}")
           ("\\subsection{%s}" . "\\subsection*{%s}")
           ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
          ("beamer"
           "\\documentclass{beamer}
               \\usepackage[UTF8,a4paper]{ctex}"
           org-beamer-sectioning)))
  (setq org-latex-default-class "ctexart")
  (setq org-latex-pdf-process
        '(
          "xelatex -interaction nonstopmode -output-directory %o %f"
          "xelatex -interaction nonstopmode -output-directory %o %f"
          "xelatex -interaction nonstopmode -output-directory %o %f"
          "rm -fr %b.out %b.log %b.tex auto"))
  (advice-add #'org-deadline :around #'advise-org-default-time)
  (advice-add #'org-schedule :around #'advise-org-default-time))


(use-package! org-wild-notifier
  :defer t
  :init
  (add-hook 'doom-post-init-hook #'org-wild-notifier-mode t)
  :config
  (setq org-wild-notifier-alert-time 15
        alert-default-style (if IS-MAC 'osx-notifier 'libnotify)))


(after! elfeed
  (setq rmh-elfeed-org-files (list "~/Documents/feed.org"))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MARKDOWN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(after! markdown-mode
  (remove-hook 'markdown-mode-hook #'auto-fill-mode))


(use-package! grip-mode :defer t)


(use-package! edit-indirect :defer t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; OTHERS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package! youdao-dictionary
  :defer t
  :config
  ;; Enable Cache
  (setq url-automatic-caching t
        ;; Set file path for saving search history
        youdao-dictionary-search-history-file
        (concat doom-cache-dir ".youdao")
        ;; Enable Chinese word segmentation support
        youdao-dictionary-use-chinese-word-segmentation t))

(use-package! tldr
  :defer t
  :config
  (setq tldr-directory-path (concat doom-etc-dir "tldr/"))
  (set-popup-rule! "^\\*tldr\\*" :side 'right :select t :quit t)
  )

(use-package! link-hint :defer t)

(use-package! symbol-overlay :defer t)
