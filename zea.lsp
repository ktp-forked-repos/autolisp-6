{code}(defun c:ZEA (/ acad acdoc aclay)
(vl-load-com)
(setq	acad (vlax-get-acad-object)
acdoc (vla-get-ActiveDocument acad)
aclay (vla-get-ActiveLayout acdoc)
)
(vlax-for layout (vla-get-Layouts acdoc)
(vla-put-ActiveLayout acdoc layout)
(vla-ZoomExtents acad)
)
(vla-put-ActiveLayout acdoc aclay)
(princ)
){code}