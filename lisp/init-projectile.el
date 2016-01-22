(require-package 'projectile)
(require-package 'project-explorer)
(require-package 'helm-projectile)

(after-load 'projectile
	;;
	(projectile-global-mode)
	(setq projectile-indexing-method 'native)
	(setq projectile-enable-caching nil)
	(setq projectile-require-project-root t))
	
(defun sr-open-file ()
	"Open file using projectile+Helm or ido"
	(interactive)
	(if (projectile-project-p)
		(helm-projectile)
		(helm-for-files)))
	

(provide 'init-projectile)