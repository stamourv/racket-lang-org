#lang pollen
◊(require "code-support.rkt")

◊(define code-descriptions
(list
 ◊p{Racket goes beyond Lisp and Scheme with dialects that support objects, types, laziness, and more. Racket lets you link components written in different dialects create domain-specific languages. Racket’s libraries support applications from web servers and databases to GUIs and charts.}

 ◊p{The ◊tt{in-directory} function constructs a sequence that walks a directory tree (starting with the current directory, by default) and generates paths in the tree.  The ◊tt{for} form binds ◊tt{path} to each path in the sequence, and ◊tt{regexp-match?} applies a pattern to the path.}

 ◊p{This example implements a web server using the ◊tt{web-server/insta} language.  Each time a connection is made to the server, the ◊tt{start} function is called to get the HTML to send back to the client.}

 ◊p{Racket makes it easy to use TCP sockets and spawn threads to handle them.  This program starts a server at TCP port 12345 that echoes anything a client sends back to the client.}

 ◊p{Uses a hash table to record previously seen lines.  You can run this program in DrRacket, but it makes more sense from the command line.}

 ◊p{The ◊tt{2htdp/image} library provides easy-to-use functions for constructing images, and DrRacket can display an image result as easily as it can display a number result.  In this case, a ◊tt{sierpinski} function is defined and called (at the same time) to generate a Sierpinski triangle of depth 8.}

 ◊p{This simple guesing game demonstates Racket's class-based GUI toolkit.  The ◊tt{frame%} class implements a top-level window, and ◊tt{button%} obviously implements a button. The ◊tt{check} function defined here produces an function that is used for the button's callback action.}

 ◊p{Add a call to ◊tt{let-me-google-that-for-you} to get a list of search results.}

 ◊p{Playing a game but no dice on hand?  Let Racket roll for you.  The ◊tt{command-line} form makes sure that the right number of arguments are provided and automatically implements the ◊tt{--help} switch.}

 ◊p{This prints out: ◊tt{αβγδεζηθικλμνξοπρςστυφχψω} You can also spell ◊tt{#\α} as ◊tt{#\u3B1} to stay within ASCII. Fortunately, Racket and DrRacket are both perfectly happy to use Unicode characters, and DrRacket comes with shortcuts for inserting them.}

 ◊p{Racket's mission includes education at all levels.  This program uses the ◊tt{htdp/bsl} teaching language, the ◊tt{2htdp/image} library for creating pictures in the teaching languages, and the ◊tt{2htdp/universe} library for interactive animations.}

 ◊p{And now for something completely different.  The ◊tt{lazy} language is more like Haskell than Lisp, so feel free to build an infinite list and look at only part of it.} ◊p{Racket's type system is designed to let you add types after you've worked for a while in untyped mode — even if your untyped program wouldn't fit nicely in a conventional type system.}

 ◊p{This program uses the ◊tt{scribble/base} language for generating documents using a prose-friendly syntax.} ◊p{This program uses the ◊tt{plot} library to draw plots of functions.  Note that the plots are actual value, which DrRacket shows in graphical form.}

 ◊p{Racket comes with plenty of libraries.} ◊p{Using the FFI means that you're not limited to using Racket libraries: pulling out a foreign function is easy, and can even be done dynamically on the REPL.}))

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