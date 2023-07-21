
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "fibo" :depends-on ("_package_fibo"))
    (:file "_package_fibo" :depends-on ("_package"))
    (:file "velocity" :depends-on ("_package_velocity"))
    (:file "_package_velocity" :depends-on ("_package"))
  ))