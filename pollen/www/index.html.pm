#lang pollen
◊(require "code-support.rkt")

◊script[#:type "text/javascript"]{
function SetupFlickity(){
    // http://flickity.metafizzy.co/options.html
    new Flickity( ".gallery", {
      // options
      cellAlign: 'left',
      wrapAround: true,
      pageDots: false,
    });}
}

◊row[#:id "logo" #:class "one-column"]{
◊div{◊img[#:src "plt-logo-flat-mb.svg" #:class "logo"] Racket}


a programmable programming language
}



◊(apply div #:class "gallery"
(for/list ([code-description (in-list code-descriptions)]
[code-sample (in-list code-samples)])

◊row[#:id "samples" #:class "one-column"]{
◊div[#:style "font-size:1.1rem;line-height:1.5rem"]{◊code-description}


◊div[#:class "gallery-cell"]{◊code-sample}

})
)





◊row{
download Racket 6.3

◊link["https://www.youtube.com/watch?v=dQw4w9WgXcQ"]{◊download-button{◊span[#:style "text-decoration:underline"]{↓} Mac OS X (Intel 64-bit)}}

◊link["https://download.racket-lang.org"]{◊empty-button{More download options}}
}

◊row{
news

◊link["http://blog.racket-lang.org/2015/11/racket-v63.html"]{Racket version 6.3} is available

◊link["https://con.racket-lang.org/"]{(fifth RacketCon)} was held in St. Louis on September 27. Videos are available.
}

◊row{
get started

◊link["https://docs.racket-lang.org/quick/"]{Quick: An Introduction to Racket with Pictures}

◊link["https://docs.racket-lang.org/more/"]{More: Systems Programming with Racket}

}

◊row{
documentation

◊link["https://docs.racket-lang.org/guide/"]{The Racket Guide} 
Starts with a tutorial on Racket basics, and then it describes the rest of the Racket language.

◊link["https://docs.racket-lang.org/reference/"]{The Racket Reference} 
Comprehensive coverage of all of Racket.

◊link["https://docs.racket-lang.org/continue/"]{Web Applications in Racket} 
Use the Racket web server to build dynamic web applications.

◊link["https://docs.racket-lang.org/pkg/"]{Package Management} 
How to install packages, and how to build and distribute your own.
}

◊row{
community

◊link["https://lists.racket-lang.org/"]{Mailing lists}
Discussion lists for using and developing Racket.

◊link["https://racket-lang.org/irc-chat.html"]{IRC}
Chat in the #racket channel on ◊link["http://freenode.net/"]{freenode.net} or ◊link["https://botbot.me/freenode/racket/"]{browse the logs}.

◊link["https://github.com/plt/racket/"]{Code}
The Racket source code on GitHub.

◊link["https://github.com/plt/racket/wiki"]{Wiki}
Useful pages include Intro Projects and Videos, including tutorials, interviews, and more.

◊link["https://pre.racket-lang.org/installers/"]{Snapshot builds}
The freshest versions of Racket.

◊link["https://bugs.racket-lang.org/"]{Bug reports}
File, query, and maybe fix existing reports.

◊link["http://racket-lang.org/people.html"]{People}
The people behind Racket.

◊link["http://racket-lang.org/learning.html"]{Research}
Publications and educational resources.

}

◊row{
books

◊link["http://www.htdp.org/"]{◊cover{htdp-cover.gif} How to Design Programs}
A principled approach to program design. Teaching language support is included with DrRacket. Aimed at the programming novice.


◊link["http://cs.brown.edu/~sk/Publications/Books/ProgLangs/2007-04-26/"]{◊cover{plai-cover.jpg} PLAI}
Foundations of programming languages. Understand the features that make languages tick. For undergraduates, graduate students, and experts.


◊link["http://www.realmofracket.com/"]{◊cover{racket_cover_web.png} Realm of Racket}
Learn Racket and programming, one game at a time. Sample game code comes with the Racket distribution. For those just starting out with Racket.


◊link["https://redex.racket-lang.org/"]{◊cover{redex-cover.jpg} Semantics Engineering with PLT Redex}
Lightweight automation for semantics. Model your own programming language semantics. For the working language engineer.


}



◊row[#:id "bottom" #:class "one-column"]{
thank you

To ◊link["http://www.nsf.gov/"]{the NSF}, ◊link["http://www.darpa.mil/"]{DARPA}, the ◊link["http://www.ed.gov/FIPSE/"]{Fund for the Improvement of Postsecondary Education (FIPSE)} at the ◊link["http://www.ed.gov/"]{US Department of Education}, the ◊link["http://www.exxonmobil.com/Corporate/community_foundation.aspx"]{Exxon Foundation}, CORD, partners of the Academy of Information Technology, ◊link["http://microsoft.com/"]{Microsoft}, ◊link["http://mozilla.org/"]{Mozilla}, and ◊link["http://google.com/"]{Google} for their generous support over the years.}