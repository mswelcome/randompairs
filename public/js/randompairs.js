function names() {

  var qwerty = document.createElement("input");
  qwerty.type = "text";
  qwerty.name = "qwerty[]"
  qwerty.placeholder = "Names here";
  box.appendChild(qwerty);
  box.appendChild(document.createElement("br"));
 }

 function vash(x) {

       for (i = 0; i < x.length; i++){

         var chk = document.createElement('input');
         chk.type = "checkbox";
         chk.name = "gat[]";
         chk.value = x[i];
         var label = document.createTextNode(x[i]);
         ugh.appendChild(label);
         ugh.appendChild(chk);
         ugh.appendChild(document.createElement("br"));
        }

 }
