(require 'init-org)
(require 'ox-publish)

(setq org-html-mathjax-options
      '((path "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML")))

(setq org-publish-project-alist
      '(("org-math-org"
	 :base-directory "~/projects/org-math/"
	 :base-extension "org"
	 :publishing-directory "/srv/http/org-math/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 4
	 :auto-sitemap t
	 :sitemap-filename "index.org"
	 :with-author nil
	 :with-creator nil
	 :with-email nil
	 :with-toc t
	 :html-head-include-default-style nil
	 :html-preamble nil
	 :html-postamble nil
	 :html-html5-fancy t
	 :html-doctype "html5"
	 )
	("org-math-static"
	 :base-directory "~/projects/org-math/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "/srv/http/org-math/"
	 :recursive t
	 :publishing-function org-publish-attachment)
	("org-math" :components ("org-math-org" "org-math-static"))))

(provide 'init-org-publish)
