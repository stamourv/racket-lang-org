#lang pollen
◊(require css-tools)
◊(define debug-width 0)
◊(define max-width 1000)
◊(define link-color "rgb(65, 86, 143)")

◊(make-media-query 16 9 max-width 40 .25)   

* {
  margin: 0;
  padding: 0;
  line-height: 1.3;
  box-sizing: border-box;
  color: inherit;
  text-decoration: inherit;
}

body {
  ◊(make-css-kerning)
  ◊(make-css-ligatures)
  font-family: "cooper-hewitt";
  font-size: 1.5rem;
  padding: 3rem;
  padding-top: 1rem;
  max-width: ◊|max-width|px;
  margin: auto;
}

#doc {
  display: flex;
  flex-direction: column;
  flex-wrap: nowrap;
     border: ◊|debug-width|px solid blue
}


row {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
    border: ◊|debug-width|px solid red;
   align-items: baseline;
}

row#logo {
  font-size: 140%;
}

row#logo col-2 li,
row#bottom col-2 li {
  width: 100%;
}

row#logo * {
  margin-bottom: 0;
  padding-bottom: 0;
}

row#bottom {
  font-size: 70%;
}

row#bottom li a {
  display: inline;
}

row#bottom a {
  color: ◊|link-color|;
}

row#book {
   align-items: flex-start;
  }

row + row {
  margin-top: 0.5rem;
  padding-top: 0.5rem;
  border-top: 1px solid #ccc;
}

col-1, col-2 {
  display: block;
  border: ◊|debug-width|px solid green;
  margin-bottom: 0.5rem;
}

col-1 + col-2 {
  margin-left: 1rem;
}

col-1 {
  width: 20rem;
  font-size: 115%;
  text-align: right;
  padding-right: 1rem;
}

col-2 {
 display: flex;
 flex-direction: row;
 flex-wrap: wrap;
   width: 100%;
  color:gray;
  font-size: 90%;
}

li {
  display: block;
  width: 50%;
  padding-right: 1rem;
  padding-bottom: 1rem;

}






row#book col-2 {
  
  flex-direction: row;
  flex-wrap: wrap;
}

img.logo {
  border: 0px solid green;
  display: inline-block;
  width: 1.15em;
  transform: translate(0,0.15em);
  margin-right: 0.25rem;
}

img.cover {
  width: 5rem;
  height: 6.2rem;
  float: left;
  margin-right: 1rem;
  opacity: 0.6;
}

div.book {
  display: flex;
  width: 50%;
}

code {
  display: block;
  white-space: pre;
  font-size: 1.1rem;
  line-height: 1.5rem;
  font-family: "source-code-pro";
}

code a {
  display: inline;
  color: ◊|link-color|;
  font-weight: bolder;
}

download-button {
  display:inline-block;
  background: ◊|link-color|;
  color: white;
  border: 0.5rem solid ◊|link-color|;
  padding: 0.4rem;
  padding-bottom: 0rem;
}

empty-button {
 display:inline-block;
  border: 0.5rem solid white;
 padding-top: 0.4rem;
} 
}

download-button:hover {
  opacity: 0.6;
}

download-button:active {
  opacity: 1;
}

a {
  color: ◊|link-color|;
  font-weight: bolder;
}

a:hover {
  opacity: 0.6;
}

a:active {
  opacity: 1;
}

a, a:hover {
  transition: color 0.2s;
}