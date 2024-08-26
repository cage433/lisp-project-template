(asdf:defsystem "new-project"
  :author ""
  :depends-on ()
  :components ((:module "src"
                :components
                (
                 (:file "package")
                 (:file "main" :depends-on ("package"))
                 )))
  :description ""
  :in-order-to ((asdf:test-op (asdf:test-op "new-project/tests")))
  )

(asdf:defsystem "new-project/tests"
  :author ""
  :license ""
  :depends-on ("new-project"
               "parachute")
  :components ((:module "tests"
                :components
                (
                 (:file "package")
                 (:file "main" :depends-on ("package"))
                 )))
  :description "Test system for new-project"
  :perform (asdf:test-op (op c) (uiop:symbol-call :parachute :test :new-project/tests))
  )
