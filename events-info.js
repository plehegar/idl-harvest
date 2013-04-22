/*

    idl.js: $distribution_URI

    Copyright © 2012 World Wide Web Consortium, (Massachusetts
    Institute of Technology, European Research Consortium for
    Informatics and Mathematics, Keio University). All Rights
    Reserved. This work is distributed under the W3C® Software License
    [1] in the hope that it will be useful, but WITHOUT ANY WARRANTY;
    without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.

    [1] http://www.w3.org/Consortium/Legal/2002/copyright-software-20021231

    Returns an XML document (as a string) with various events info

*/

function __result_handler() {
    function processEvents(table, result) {
	var trs = table.querySelectorAll("tbody tr");
	var i;
	for (i = 0; i < trs.length; i++) {
	    var tds = trs[i].querySelectorAll("td");
	    if (tds.length > 5) {
		var r = "<Event name='" + tds[0].querySelector("a").textContent.trim()
		    + "' event='"
		    + tds[4].textContent.trim()	
		    + "' target='";		
		var targets = tds[3].textContent.trim().split(",");
		var j;
		for (j=0;j<targets.length;j++) {
		    if (targets[j].trim()!== "defaultView") {
			r+= targets[j].trim();
			if (j+1<targets.length) r+= ",";
		    }
		}
		r+= "'";
		if (tds[0].textContent.indexOf("Deprecated") != -1) {
		    r+= " deprecated='true'";
		}
		r+="/>";
		result.push(r);
	    }
	}
    }
    
    var elements = [], i;
    elements.push("<Definitions>");
    elements.push("<Events id='html'>");
    processEvents(document.querySelectorAll("table.data-table")[1], elements);
    elements.push("</Events>");
    elements.push("</Definitions>");
    return elements.join('\n');
}
