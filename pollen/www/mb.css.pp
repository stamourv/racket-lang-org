#lang pollen

* {
  margin: 0;
  padding: 0;
  line-height: 1;
}

html {
  font-size: 14px;
}

body {
  display: block;
  background: white;
  font-family: "CooperHewitt-Book";
  font-size: 2rem;
  margin-bottom: 1px solid black;
}

header {
  display: block;
    padding: 1rem;
    padding-left: 4rem;
}

img.logo {
  border: 0px solid green;
  display: inline-block;
  width: 1.15em;
  transform: translate(0,0.15em);
}

circus-box {
  display: block;
  height: 300px;
  overflow-y: scroll;
}

lang-circus {
  display: flex;
  flex-direction: column;
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
