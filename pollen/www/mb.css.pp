#lang pollen

* {
  margin: 0;
  padding: 0;
  line-height: 1;
}

body {
  display: block;
  background: white;
  font-family: "CooperHewitt-Book";
  font-size: 3rem;
  margin-bottom: 1px solid black;
}

header {
  display: block;
    padding: 2rem;
}

img.logo {
  border: 0px solid green;
  display: inline-block;
  width: 1.5em;
  transform: translate(0,0.15em);
}

circus-box {
  display: block;
  width: 100%;
  overflow-x: scroll;
  overflow-y: hidden;
}

lang-circus {
  display: flex;
  width: 3000px;
  height: 300px;
  flex-direction: row;
}

lang {
  padding: 1rem;
  width: 300px;
  font-size: 1rem;
  line-height: 1.2;
  border: 0px solid red;
  white-space: pre;
  font-family: "Source Code Pro";
  font-weight: 400;
  color: #777;
}

lang + lang {
  padding-left: 2rem;
}