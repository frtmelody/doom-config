;;; .local/custom.el -*- lexical-binding: t; -*-


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("728eda145ad16686d4bbb8e50d540563573592013b10c3e2defc493f390f7d83" default)))
 '(forge-alist
   (quote
    (("github.com" "api.github.com" "github.com" forge-github-repository)
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
     ("git.sr.ht" nil "git.sr.ht" forge-srht-repository))))
 '(git-link-open-in-browser t)
 '(git-link-remote-alist
   (quote
    (("code.inke.cn" git-link-gitlab)
     ("git.inke.cn" git-link-gitlab)
     ("git.sr.ht" git-link-sourcehut)
     ("github" git-link-github)
     ("bitbucket" git-link-bitbucket)
     ("gitorious" git-link-gitorious)
     ("gitlab" git-link-gitlab)
     ("visualstudio\\|azure" git-link-azure))))
 '(projectile-auto-update-cache t)
 '(projectile-find-dir-includes-top-level t)
 '(projectile-globally-ignored-files (quote (".DS_Store" "Icon" "TAGS" "class" "log"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
