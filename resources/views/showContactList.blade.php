<table border="1px">
	<tr>
		<th>SI</th>
		<th>Name</th>
		<th>Phone</th>
		<th>Email</th>
		<th>Religion</th>
	</tr>
	@foreach($contacts as $contact)
	<tr>
		<td>{{$contact->id}}</td>
		<td>{{$contact->name}}</td>
		<td>{{$contact->phone}}</td>
		<td>{{$contact->email}}</td>
		<td>{{$contact->religion}}</td>
	</tr>
	@endforeach
	
	<a onclick() >CLICK</a>
</table>

<script language="Javascript">

            var n = 2;

            function increment(){

                n++;
                return n;
            }

            function add() {
                var divElement = document.createElement("div");
                var inp1 = document.createElement("input");
                var inp2 = document.createElement("input");
                var inp3 = document.createElement("input");
                var inp4 = document.createElement("input");
                var inp5 = document.createElement("input");

                divElement.className = "c-11";
                inp1.className = "inp-11";
                inp2.className = "inp-22";
                inp3.className = "inp-33";
                inp4.className = "inp-44";
                inp5.className = "inp-55";


                inp1.name = "sl[]";
                inp2.name = "productName[]";
                inp3.name = "productSpecification[]";
                inp4.name = "productQuantity[]";

                inp1.readonly = "readonly";
                var i = document.getElementsByClassName("inp-11").length;

                if (i>0) {
                    var kt = document.getElementById("1");
                    kt.style.visibility = "visible";
                }

                inp1.value =i+2;
                inp4.type = "number";
                inp4.value = "1";
                inp4.min ="1";
                inp5.type = "button";
                inp5.value = "X";

                inp5.id =n;
                var x =n;
                divElement.id ="m"+x;
                n++;


                divElement.appendChild(inp1);
                divElement.appendChild(inp2);
                divElement.appendChild(inp3);
                divElement.appendChild(inp4);
                divElement.appendChild(inp5);

                document.getElementById("main-quotation").appendChild(divElement);



                var k="m"+x;
                document.getElementById(x).onclick = function() {removeElement(k)};

            }

            function removeElement(k) {
                // Removes an element from the document
                var element = document.getElementById(k);
                element.parentNode.removeChild(element);

                var i = document.getElementsByClassName("inp-11").length;

                if (i==0) {
                    var kt = document.getElementById("1");
                    kt.style.visibility = "hidden";
                }

                serialNumber ()

            }
            function serialNumber (){
                var j = document.getElementsByClassName("inp-11").length;
                for (var i = 0; i < j; i++) {
                    document.getElementsByClassName("inp-11")[i].value = i+2;
                    /*
                    document.getElementsByClassName("inp-55")[i].id = i+2;
                    var temp =i+2;
                    document.getElementsByClassName("c-11")[i].id ="m"+temp;

                    */

                }

            }
            function serialNumber1 (){
                var j = document.getElementsByClassName("inp-11").length;
                document.getElementById("test").innerHTML = "Test Value is ="+j;
            /*  var arr;
                for (var i = 0; i < j; i++) {
                    arr[i] = document.getElementsByClassName("inp-11")[i].value;
                }
                //arr.sort();
*/
                var m = document.getElementsByClassName("inp-11")[j-1].value;
                document.getElementById("test1").innerHTML = "Test Value is ="+m;
            }


        </script>

