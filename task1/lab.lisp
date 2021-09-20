(setq student `(STUDENT (LEARNER
                        (
                        (NAME (TEXT (DJURA OKSANA PETRIVNA)))
                        (GROUP (TEXT (IP-91)))
                       (FACULTY (TEXT (ICT)))
                       (BIRTHDAY (DATE (31 06 2000)))
                       (PHONE (TEXT (044-567-43-26)))
                       (ADDRESS (TEXT ("Luke Skywalker Str")))
                        )
                        )))


(setq me `(STUDENT (LEARNER
                        (
                        (NAME (TEXT (LEONID SLUPSKY)))
                        (GROUP (TEXT (IP-91)))
                       (FACULTY (TEXT (ICT)))
                       (BIRTHDAY (DATE (28 09 2002)))
                       (PHONE (TEXT (044-234-09-85)))
                       (ADDRESS (TEXT ("Darth Vader Str")))
                        )
                        )))

(defun get-address (x) (caadr (cadadr (cddddr (cadadr x)))))

(defun get-phone (x) (caar (cdadar (cddddr (cadadr x)))))

(defun print-details (x)
  (format T "Phone: ~s" (get-phone x))
  (fresh-line)
  (format T "Address: ~s" (get-address x))
  (fresh-line)
)

(print-details student)
(print-details me)
