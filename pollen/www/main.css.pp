#lang pollen
◊(require css-tools)
◊(define debug-width 0)
◊(define max-width 1000)

◊(make-media-query 24 10.5 max-width 40 .25)   

* {
  margin: 0;
  padding: 0;
  line-height: 1.3;
  box-sizing: border-box;
}

body {
  font-family: "CooperHewitt-Book";
  font-size: 1rem;
  padding: 2rem;
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
  font-size: 125%;
}

row#logo col-2 li {
  width: 100%;
  margin: 0;
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
}

col-1 + col-2 {
  margin-left: 1rem;
}

col-1 {
  width: 14rem;
  font-size: 120%;
  text-align: right;
}

col-2 {
 display: flex;
 flex-direction: row;
 flex-wrap: wrap;
   width: 100%;
  color:gray;
}

col-2 li {
  display: block;
  width: 50%;
  margin-bottom: 1rem;
  padding-right: 1rem;
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
  width: 4rem;
  height: 6rem;
  float: left;
}

div.book {
  display: flex;
  width: 50%;
}