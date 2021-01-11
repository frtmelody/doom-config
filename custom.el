;;; .local/custom.el -*- lexical-binding: t; -*-


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-at-remote-remote-type-domains
   '(("bitbucket.org" . "bitbucket")
     ("github.com" . "github")
     ("gitlab.com" . "gitlab")
     ("git.savannah.gnu.org" . "gnu")
     ("gist.github.com" . "gist")
     ("git.sr.ht" . "sourcehut")
     ("pagure.io" . "pagure")
     ("src.fedoraproject.org" . "pagure")
     ("code.inke.cn" . "gitlab")
     ("git.inke.cn" . "gitlab")))
 '(company-box-show-single-candidate 'when-no-other-frontend)
 '(exec-path-from-shell-arguments '("-l"))
 '(forge-alist
   '(("github.com" "api.github.com" "github.com" forge-github-repository)
     ("gitlab.com" "gitlab.com/api/v4" "gitlab.com" forge-gitlab-repository)
     ("git.inke.cn" "git.inke.cn/api/v4" "git.inke.cn" forge-gitlab-repository)
     ("code.inke.cn" "code.inke.cn/api/v4" "code.inke.cn" forge-gitlab-repository)
     ("salsa.debian.org" "salsa.debian.org/api/v4" "salsa.debian.org" forge-gitlab-repository)
     ("framagit.org" "framagit.org/api/v4" "framagit.org" forge-gitlab-repository)
     ("codeberg.org" "codeberg.org/api/v1" "codeberg.org" forge-gitea-repository)
     ("code.orgmode.org" "code.orgmode.org/api/v1" "code.orgmode.org" forge-gogs-repository)
     ("bitbucket.org" "api.bitbucket.org/2.0" "bitbucket.org" forge-bitbucket-repository)
     ("git.savannah.gnu.org" nil "git.savannah.gnu.org" forge-cgit*-repository)
     ("git.kernel.org" nil "git.kernel.org" forge-cgit-repository)
     ("repo.or.cz" nil "repo.or.cz" forge-repoorcz-repository)
     ("git.suckless.org" nil "git.suckless.org" forge-stagit-repository)
     ("git.sr.ht" nil "git.sr.ht" forge-srht-repository)))
 '(git-link-open-in-browser t)
 '(git-link-remote-alist
   '(("code.inke.cn" git-link-gitlab)
     ("git.inke.cn" git-link-gitlab)
     ("git.sr.ht" git-link-sourcehut)
     ("github" git-link-github)
     ("bitbucket" git-link-bitbucket)
     ("gitorious" git-link-gitorious)
     ("gitlab" git-link-gitlab)
     ("visualstudio\\|azure" git-link-azure)))
 '(go-packages-function 'go-packages-find)
 '(gofmt-command "goimports")
 '(org-agenda-files
   '("/Users/melody/org-notes/gtd.org" "/Users/melody/org-notes/inbox.org" "/Users/melody/org-notes/journal.org" "/Users/melody/org-notes/notes.org" "/Users/melody/org-notes/snippet.org" "/Users/melody/org-notes/todo.org"))
 '(projectile-auto-update-cache t)
 '(projectile-find-dir-includes-top-level t)
 '(projectile-globally-ignored-files '(".DS_Store" "Icon" "TAGS" "class" "log"))
 '(wakatime-api-key "a7457a6f-34ca-493d-b7dc-5f1e59c90cb8"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-button ((t nil))))
(put 'customize-group 'disabled nil)
