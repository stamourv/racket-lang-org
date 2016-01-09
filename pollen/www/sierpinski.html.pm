#lang pollen

◊'(pre
    ()
    "#lang "
    (a
     ((class "codemodpath")
      (href "https://docs.racket-lang.org/reference/index.html")
      (rel "nofollow"))
     "racket")
    "  "
    (span ((class "codecomment")) "; draw a Sierpinski triangle")
    "\n"
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/require.html#(form._((lib._racket/private/base..rkt)._require))")
      (rel "nofollow"))
     "require")
    " "
    (a
     ((class "codemodpath")
      (href "https://docs.racket-lang.org/teachpack/2htdpimage.html")
      (rel "nofollow"))
     "2htdp/image")
    (span ((class "codeparenthesis")) ")")
    "\n"
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/let.html#(form._((lib._racket/private/letstx-scheme..rkt)._let))")
      (rel "nofollow"))
     "let")
    " "
    (span ((class "codeid")) "sierpinski")
    " "
    (span ((class "codeparenthesis")) "(")
    (span ((class "codeparenthesis")) "[")
    (span ((class "codeid")) "n")
    " "
    (span ((class "codeconstant")) "8")
    (span ((class "codeparenthesis")) "]")
    (span ((class "codeparenthesis")) ")")
    "\n  "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/if.html#(form._((lib._racket/private/letstx-scheme..rkt)._cond))")
      (rel "nofollow"))
     "cond")
    "\n    "
    (span ((class "codeparenthesis")) "[")
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/reference/number-types.html#(def._((quote._~23~25kernel)._zero~3f))")
      (rel "nofollow"))
     "zero?")
    " "
    (span ((class "codeid")) "n")
    (span ((class "codeparenthesis")) ")")
    " "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/teachpack/2htdpimage.html#(def._((lib._2htdp/image..rkt)._triangle))")
      (rel "nofollow"))
     "triangle")
    " "
    (span ((class "codeconstant")) "2")
    " "
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/quote.html#(form._((quote._~23~25kernel)._quote))")
      (rel "nofollow"))
     "'")
    (span ((class "codeid")) "solid")
    " "
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/quote.html#(form._((quote._~23~25kernel)._quote))")
      (rel "nofollow"))
     "'")
    (span ((class "codeid")) "red")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) "]")
    "\n    "
    (span ((class "codeparenthesis")) "[")
    "else "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportform")
      (href
       "https://docs.racket-lang.org/reference/define.html#(form._((lib._racket/private/base..rkt)._define))")
      (rel "nofollow"))
     "define")
    " "
    (span ((class "codeid")) "t")
    " "
    (span ((class "codeparenthesis")) "(")
    (span ((class "codeid")) "sierpinski")
    " "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/reference/generic-numbers.html#(def._((quote._~23~25kernel)._-))")
      (rel "nofollow"))
     "-")
    " "
    (span ((class "codeid")) "n")
    " "
    (span ((class "codeconstant")) "1")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) ")")
    "\n          "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/teachpack/2htdpimage.html#(def._((lib._2htdp/image..rkt)._freeze))")
      (rel "nofollow"))
     "freeze")
    " "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/teachpack/2htdpimage.html#(def._((lib._2htdp/image..rkt)._above))")
      (rel "nofollow"))
     "above")
    " "
    (span ((class "codeid")) "t")
    " "
    (span ((class "codeparenthesis")) "(")
    (a
     ((class "codelinkimportid")
      (href
       "https://docs.racket-lang.org/teachpack/2htdpimage.html#(def._((lib._2htdp/image..rkt)._beside))")
      (rel "nofollow"))
     "beside")
    " "
    (span ((class "codeid")) "t")
    " "
    (span ((class "codeid")) "t")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) "]")
    (span ((class "codeparenthesis")) ")")
    (span ((class "codeparenthesis")) ")"))