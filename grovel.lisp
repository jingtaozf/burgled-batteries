(in-package #:python.cffi)

(include "Python.h")
(include "structmember.h") ; needed for member type flags

;; Sizes
(ctype ssize-t "Py_ssize_t")
(ctype size-t  "size_t")

;; Evaluation Context Flags
(constantenum evaluation-context
  ((:expression "Py_eval_input"))
  ((:statement  "Py_single_input"))
  ((:file       "Py_file_input")))
(constant (+eval-input+   "Py_eval_input"  ) :type integer)
(constant (+file-input+   "Py_file_input"  ) :type integer)
(constant (+single-input+ "Py_single_input") :type integer)

;; Profiling and Tracing
(constantenum trace-what
  ((:call        "PyTrace_CALL"))
  ((:exception   "PyTrace_EXCEPTION"))
  ((:line        "PyTrace_LINE"))
  ((:return      "PyTrace_RETURN"))
  ((:c-call      "PyTrace_C_CALL"))
  ((:c-exception "PyTrace_C_EXCEPTION"))
  ((:c-return    "PyTrace_C_RETURN")))
(constant (+trace-call+        "PyTrace_CALL")        :type integer)
(constant (+trace-exception+   "PyTrace_EXCEPTION")   :type integer)
(constant (+trace-line+        "PyTrace_LINE")        :type integer)
(constant (+trace-return+      "PyTrace_RETURN")      :type integer)
(constant (+trace-c-call+      "PyTrace_C_CALL")      :type integer)
(constant (+trace-c-exception+ "PyTrace_C_EXCEPTION") :type integer)
(constant (+trace-c-return+    "PyTrace_C_RETURN")    :type integer)

;; Comparison Operator Flags
(constantenum comparison-operator
  ((:<  "Py_LT"))
  ((:<= "Py_LE"))
  ((:=  "Py_EQ"))
  ((:/= "Py_NE"))
  ((:>  "Py_GT"))
  ((:>= "Py_GE")))
(constant (+lt+ "Py_LT") :type integer)
(constant (+le+ "Py_LE") :type integer)
(constant (+eq+ "Py_EQ") :type integer)
(constant (+ne+ "Py_NE") :type integer)
(constant (+gt+ "Py_GT") :type integer)
(constant (+ge+ "Py_GE") :type integer)

;; Type Flags
(bitfield (type-flags :base-type :long)
  (:have-get-char-buffer     "Py_TPFLAGS_HAVE_GETCHARBUFFER")
  (:have-sequence-in         "Py_TPFLAGS_HAVE_SEQUENCE_IN")
  (:gc                       "Py_TPFLAGS_GC")
  (:have-in-place-ops        "Py_TPFLAGS_HAVE_INPLACEOPS")
  (:check-types              "Py_TPFLAGS_CHECKTYPES")
  (:have-rich-compare        "Py_TPFLAGS_HAVE_RICHCOMPARE")
  (:have-weak-refs           "Py_TPFLAGS_HAVE_WEAKREFS")
  (:have-iter                "Py_TPFLAGS_HAVE_ITER")
  (:have-class               "Py_TPFLAGS_HAVE_CLASS")
  (:heap-type                "Py_TPFLAGS_HEAPTYPE")
  (:base-type                "Py_TPFLAGS_BASETYPE")
  (:ready                    "Py_TPFLAGS_READY")
  (:readying                 "Py_TPFLAGS_READYING")
  (:have-gc                  "Py_TPFLAGS_HAVE_GC")
  (:have-stackless-extension "Py_TPFLAGS_HAVE_STACKLESS_EXTENSION")
  (:have-index               "Py_TPFLAGS_HAVE_INDEX")
  (:have-version-tag         "Py_TPFLAGS_HAVE_VERSION_TAG")
  (:valid-version-tag        "Py_TPFLAGS_VALID_VERSION_TAG")
  (:is-abstract              "Py_TPFLAGS_IS_ABSTRACT")
  (:have-new-buffer          "Py_TPFLAGS_HAVE_NEWBUFFER")
  (:int-subclass             "Py_TPFLAGS_INT_SUBCLASS")
  (:long-subclass            "Py_TPFLAGS_LONG_SUBCLASS")
  (:list-subclass            "Py_TPFLAGS_LIST_SUBCLASS")
  (:tuple-subclass           "Py_TPFLAGS_TUPLE_SUBCLASS")
  (:string-subclass          "Py_TPFLAGS_STRING_SUBCLASS")
  (:unicode-subclass         "Py_TPFLAGS_UNICODE_SUBCLASS")
  (:dict-subclass            "Py_TPFLAGS_DICT_SUBCLASS")
  (:base-exception-subclass  "Py_TPFLAGS_BASE_EXC_SUBCLASS")
  (:type-subclass            "Py_TPFLAGS_TYPE_SUBCLASS")
  (:default-external         "Py_TPFLAGS_DEFAULT_EXTERNAL")
  (:default-core             "Py_TPFLAGS_DEFAULT_CORE")
  (:default                  "Py_TPFLAGS_DEFAULT"))
(constant (+tpflags.have-get-char-buffer+     "Py_TPFLAGS_HAVE_GETCHARBUFFER")       :type integer)
(constant (+tpflags.have-sequence-in+         "Py_TPFLAGS_HAVE_SEQUENCE_IN")         :type integer)
(constant (+tpflags.gc+                       "Py_TPFLAGS_GC")                       :type integer)
(constant (+tpflags.have-inplaceops+          "Py_TPFLAGS_HAVE_INPLACEOPS")          :type integer)
(constant (+tpflags.checktypes+               "Py_TPFLAGS_CHECKTYPES")               :type integer)
(constant (+tpflags.have-richcompare+         "Py_TPFLAGS_HAVE_RICHCOMPARE")         :type integer)
(constant (+tpflags.have-weakrefs+            "Py_TPFLAGS_HAVE_WEAKREFS")            :type integer)
(constant (+tpflags.have-iter+                "Py_TPFLAGS_HAVE_ITER")                :type integer)
(constant (+tpflags.have-class+               "Py_TPFLAGS_HAVE_CLASS")               :type integer)
(constant (+tpflags.heaptype+                 "Py_TPFLAGS_HEAPTYPE")                 :type integer)
(constant (+tpflags.basetype+                 "Py_TPFLAGS_BASETYPE")                 :type integer)
(constant (+tpflags.ready+                    "Py_TPFLAGS_READY")                    :type integer)
(constant (+tpflags.readying+                 "Py_TPFLAGS_READYING")                 :type integer)
(constant (+tpflags.have-gc+                  "Py_TPFLAGS_HAVE_GC")                  :type integer)
(constant (+tpflags.have-stackless-extension+ "Py_TPFLAGS_HAVE_STACKLESS_EXTENSION") :type integer)
(constant (+tpflags.have-index+               "Py_TPFLAGS_HAVE_INDEX")               :type integer)
(constant (+tpflags.have-version-tag+         "Py_TPFLAGS_HAVE_VERSION_TAG")         :type integer)
(constant (+tpflags.valid-version-tag+        "Py_TPFLAGS_VALID_VERSION_TAG")        :type integer)
(constant (+tpflags.is-abstract+              "Py_TPFLAGS_IS_ABSTRACT")              :type integer)
(constant (+tpflags.have-newbuffer+           "Py_TPFLAGS_HAVE_NEWBUFFER")           :type integer)
(constant (+tpflags.int-subclass+             "Py_TPFLAGS_INT_SUBCLASS")             :type integer)
(constant (+tpflags.long-subclass+            "Py_TPFLAGS_LONG_SUBCLASS")            :type integer)
(constant (+tpflags.list-subclass+            "Py_TPFLAGS_LIST_SUBCLASS")            :type integer)
(constant (+tpflags.tuple-subclass+           "Py_TPFLAGS_TUPLE_SUBCLASS")           :type integer)
(constant (+tpflags.string-subclass+          "Py_TPFLAGS_STRING_SUBCLASS")          :type integer)
(constant (+tpflags.unicode-subclass+         "Py_TPFLAGS_UNICODE_SUBCLASS")         :type integer)
(constant (+tpflags.dict-subclass+            "Py_TPFLAGS_DICT_SUBCLASS")            :type integer)
(constant (+tpflags.base-exc-subclass+        "Py_TPFLAGS_BASE_EXC_SUBCLASS")        :type integer)
(constant (+tpflags.type-subclass+            "Py_TPFLAGS_TYPE_SUBCLASS")            :type integer)
(constant (+tpflags.default-external+         "Py_TPFLAGS_DEFAULT_EXTERNAL")         :type integer)
(constant (+tpflags.default-core+             "Py_TPFLAGS_DEFAULT_CORE")             :type integer)
(constant (+tpflags.default+                  "Py_TPFLAGS_DEFAULT")                  :type integer)

;; Method Call Flags
(bitfield method-convention-flags
  ;; calling convention
  (:positional-arguments "METH_VARARGS")
  (:keyword-arguments    "METH_KEYWORDS")
  (:mixed-arguments      "METH_KEYWORDS | METH_VARARGS")
  (:no-arguments         "METH_NOARGS")
  (:object-method        "METH_O")
  (:old-args             "METH_OLDARGS") ; deprecated, included only for completeness
  ;; binding convention
  (:class-binding  "METH_CLASS")
  (:static-binding "METH_STATIC")
  ;; replace existing definition
  (:coexist          "METH_COEXIST")
  (:replace-existing "METH_COEXIST"))
(constant (+meth.varargs+  "METH_VARARGS")  :type integer)
(constant (+meth.keywords+ "METH_KEYWORDS") :type integer)
(constant (+meth.noargs+   "METH_NOARGS")   :type integer)
(constant (+meth.o+        "METH_O")        :type integer)
(constant (+meth.oldargs+  "METH_OLDARGS")  :type integer) ; deprecated
(constant (+meth.class+    "METH_CLASS")    :type integer)
(constant (+meth.static+   "METH_STATIC")   :type integer)
(constant (+meth.coexist+  "METH_COEXIST")  :type integer)

;; Member Type Flags
(constantenum member-type
  ((:short              "T_SHORT"))
  ((:int                "T_INT"))
  ((:long               "T_LONG"))
  ((:float              "T_FLOAT"))
  ((:double             "T_DOUBLE"))
  ((:string             "T_STRING"))
  ((:object             "T_OBJECT"))
  ((:object-ex          "T_OBJECT_EX"))
  ((:char               "T_CHAR"))
  ((:byte               "T_BYTE"))
  ((:unsigned-byte      "T_UBYTE"))
  ((:unsigned-int       "T_UINT"))
  ((:unsigned-short     "T_USHORT"))
  ((:unsigned-long      "T_ULONG"))
  ((:boolean            "T_BOOL"))
  ((:long-long          "T_LONGLONG") :optional t)
  ((:unsigned-long-long "T_ULONGLONG") :optional t)
  ((:ssize-t            "T_PYSSIZET")))
(constant (+type.short+     "T_SHORT")     :type integer)
(constant (+type.int+       "T_INT")       :type integer)
(constant (+type.long+      "T_LONG")      :type integer)
(constant (+type.float+     "T_FLOAT")     :type integer)
(constant (+type.double+    "T_DOUBLE")    :type integer)
(constant (+type.string+    "T_STRING")    :type integer)
(constant (+type.object+    "T_OBJECT")    :type integer)
(constant (+type.object-ex+ "T_OBJECT_EX") :type integer)
(constant (+type.char+      "T_CHAR")      :type integer)
(constant (+type.byte+      "T_BYTE")      :type integer)
(constant (+type.ubyte+     "T_UBYTE")     :type integer)
(constant (+type.uint+      "T_UINT")      :type integer)
(constant (+type.ushort+    "T_USHORT")    :type integer)
(constant (+type.ulong+     "T_ULONG")     :type integer)
(constant (+type.bool+      "T_BOOL")      :type integer)
(constant (+type.longlong+  "T_LONGLONG")  :type integer)
(constant (+type.ulonglong+ "T_ULONGLONG") :type integer)
(constant (+type.ssize-t+   "T_PYSSIZET")  :type integer)

;; API Version
(constant (+api-version+ "PYTHON_API_VERSION") :type integer)
