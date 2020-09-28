;;; private/my/+ui.el -*- lexical-binding: t; -*-

;; (load-theme 'doom-one t)



;; (
;;   setq doom-themes-enable-bold t   ; if nil, bold is universally disabled
;;        doom-themes-enable-italic t ; if nil, italics is universally disabled
;;  )

;; (set-face-attribute 'font-lock-comment-face nil :foreground "#5B6268" :slant 'italic)
;; (set-face-attribute 'font-lock-function-name-face nil :foreground "#c678dd" :slant 'italic)
;; (set-face-attribute 'font-lock-variable-name-face nil :foreground "#dcaeea" :slant 'italic)

;; (load-theme 'doom-one t)
(load-theme 'doom-vibrant t)

(when (display-graphic-p)
  (cond (IS-MAC
         (setq doom-font (font-spec :family "Source Code Pro" :size 12 :weight 'normal)
               doom-big-font (font-spec :family "Source Code Pro" :size 16 :weight 'normal)
               doom-modeline-height 32))
        (IS-LINUX
         (resolution-factor setq (eval (/ (x-display-pixel-height) 1080.0)))
         (setq doom-font (font-spec :family "Operator Mono" :size (eval (round (* 14 resolution-factor))) :weight 'light)
               doom-big-font (font-spec :family "Operator Mono" :size (eval (round (* 20 resolution-factor))))
               doom-modeline-height (eval (round (* 32 resolution-factor))))))

  ;; set initl screen size
  (setq initial-frame-alist
        '((width . 110)
          (height . 65))))

(setq doom-modeline-buffer-file-name-style 'relative-to-project)

(setq +workspaces-on-switch-project-behavior t)

(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)
(winum-mode)

;; disable line-numbers by default
(setq display-line-numbers-type nil)


(when IS-MAC
  ;; enable ligatures support
  ;; details here: https://github.com/tonsky/FiraCode/wiki/Emacs-instructions
  (ignore-errors
    (mac-auto-operator-composition-mode)))

  ;; set ibuffer name column width
(after!
  ibuffer
  (define-ibuffer-column size-h
    (:name "Size" :inline t)
    (cond
     ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
     ((> (buffer-size) 1000) (format "%7.1fk" (/ (buffer-size) 1000.0)))
     (t (format "%8d" (buffer-size)))))
  (add-hook 'ibuffer-hook
  (lambda ()(ibuffer-projectile-set-filter-groups)
    (unless (eq ibuffer-sorting-mode 'alphabetic)
      (ibuffer-do-sort-by-alphabetic) )))

  (setq ibuffer-formats
        '((mark modified read-only " "
                (name 50 50 :left :nil) " "
                (size-h 9 -1 :right) " "
                (mode 16 16 :left :elide) " "
                filename-and-process)))
    )

(add-hook! 'process-menu-mode-hook
  (setq-local tabulated-list-format [("Process" 30 t)
                                     ("PID"      7 t)
                                     ("Status"   7 t)
                                     ("Buffer"  15 t)
                                     ("TTY"     12 t)
                                     ("Command"  0 t)]))
