
(cl:in-package :asdf)

(defsystem "turn_msg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Turn" :depends-on ("_package_Turn"))
    (:file "_package_Turn" :depends-on ("_package"))
  ))