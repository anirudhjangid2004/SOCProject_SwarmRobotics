
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "firstmsg" :depends-on ("_package_firstmsg"))
    (:file "_package_firstmsg" :depends-on ("_package"))
  ))