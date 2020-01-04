;;; .local/custom.el -*- lexical-binding: t; -*-


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-at-remote-remote-type-domains
   (quote
    (("bitbucket.org" . "bitbucket")
     ("github.com" . "github")
     ("gitlab.com" . "gitlab")
     ("git.savannah.gnu.org" . "gnu")
     ("gist.github.com" . "gist")
     ("git.sr.ht" . "sourcehut")
     ("git.inke.cn" . "gitlab")
     ("code.inke.cn" . "gitlab"))))
 '(custom-safe-themes
   (quote
    ("fe76f3d5094967034192f6a505085db8db6deb0e135749d9a54dc488d6d3ee2f" "7f74a3b9a1f5e3d31358b48b8f8a1154aab2534fae82c9e918fb389fca776788" "1728dfd9560bff76a7dc6c3f61e9f4d3e6ef9d017a83a841c117bd9bebe18613" "0fe9f7a04e7a00ad99ecacc875c8ccb4153204e29d3e57e9669691e6ed8340ce" "423435c7b0e6c0942f16519fa9e17793da940184a50201a4d932eafe4c94c92d" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "f30aded97e67a487d30f38a1ac48eddb49fdb06ac01ebeaff39439997cbdd869" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "70ed3a0f434c63206a23012d9cdfbe6c6d4bb4685ad64154f37f3c15c10f3b90" "728eda145ad16686d4bbb8e50d540563573592013b10c3e2defc493f390f7d83" default)))
 '(exec-path-from-shell-arguments (quote ("-l")))
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
 '(go-packages-function (quote go-packages-find))
 '(gofmt-command "goimports")
 '(projectile-auto-update-cache t)
 '(projectile-find-dir-includes-top-level t)
 '(projectile-globally-ignored-files (quote (".DS_Store" "Icon" "TAGS" "class" "log")))
 '(wakatime-api-key "a7457a6f-34ca-493d-b7dc-5f1e59c90cb8"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
