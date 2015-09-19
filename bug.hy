(defclass TestClass [] 
  "why are methods gone?"

  ;;if you do that, it won't compile.
  ;;[waaat (fn [self] (print "eeeeeeh?"))]
  []

  (defn pls_call_me [self] (print "oh hi~")))

(-> (dir TestClass) (print))

(setv TestClass.pls_call_me_x2 (fn [self] (print "we see each other! yeee~")))

(-> (dir TestClass) (print))
