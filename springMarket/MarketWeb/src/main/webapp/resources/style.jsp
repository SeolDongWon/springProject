<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>


body {
  margin: 0px;
  padding: 1px;
  border: 2px dotted black;
  color: black;
}
body>div{
  border: 2px dotted red;
}

li{
  list-style-type: none;
  padding: 5px;
  border: 1px dotted blue;
}
a{
  text-decoration: none;
}

main{
  border: 2px dotted blue;
  display: flex;
}
section{
  width: 100%;
  padding: 0px;
  margin: 0px;
  border: 2px dotted red;
}

aside{
  width: 200px;
  border: 2px dotted red;
}

article{
  border: 2px dotted red;
}

section>article>div {
 border: 2px dotted blue;
}
section>article>div>div {
  border: 2px dotted red;
}

.textSkip{
  white-space: nowrap; 
  width: 100%; 
  overflow: hidden;
  text-overflow: ellipsis;
  text-align: left;
}


</style>