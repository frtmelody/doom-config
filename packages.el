;; -*- no-byte-compile: t; -*-
;;; private/my/packages.el

;; disabled packages
(disable-packages! solaire-mode
                   anaconda-mode
                   company-anaconda
                   dired-k
                   pyimport)

;; misc
(package! avy)
(package! helm)
(package! dired-narrow)
(package! edit-indirect)
(package! atomic-chrome)
(package! link-hint)
(package! symbol-overlay)
(package! tldr)
(package! youdao-dictionary)
(package! wucuo)
(package! grip-mode)
(package! org-wild-notifier)
(package! copy-as-format)
(package! ox-jira)
;; (package! vterm-toggle :recipe (:host github :repo "jixiuf/vterm-toggle"))
(package! counsel-etags)
(package! ibuffer-projectile)
;; 
;; programming
(package! import-js)
(package! indium)
(package! importmagic)
(package! py-isort)
(package! flycheck-mypy)
(package! dash-at-point)
(package! flycheck-google-cpplint :recipe (:host github :repo "flycheck/flycheck-google-cpplint"))
(package! ox-confluence-en :recipe (:host github :repo "correl/ox-confluence-en"))
;;(package! git-link)

;;os
(package! exec-path-from-shell)
;; ui
(package! winum)
