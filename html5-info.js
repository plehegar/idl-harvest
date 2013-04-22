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

    Returns an XML document (as a string) with various html5 info

*/

function __result_handler() {
    function processElements(table, result) {
	var trs = table.querySelectorAll("tbody tr");
	var i;
	for (i = 0; i < trs.length; i++) {
	    var th = trs[i].querySelector("th").textContent.trim();
	    var newelement;
	    if (th.indexOf("h1, h2") != -1) {
		var j, interf = trs[i].querySelector("td:nth-child(7)").textContent.trim();
		for (j=1;j<7;j++) {
		    newelement = "<Element name='h" + j + "' interface='"
			+ interf + "'/>";
		    result.push(newelement);
		}
	    } else {
		newelement = "<Element name='" + th + "' interface='"
		    + trs[i].querySelector("td:nth-child(7)").textContent.trim()
		    + "'/>";
		result.push(newelement);
	    }
	}	
    }
    function processEvents(table, result) {
	var trs = table.querySelectorAll("tbody tr");
	var i;
	for (i = 0; i < trs.length; i++) {
	    var tds = trs[i].querySelectorAll("td");
	    if (tds.length > 2) {
		result.push("<Event name='" + tds[0].textContent.trim() + "' interface='"
			    + tds[1].textContent.trim() + "'/>");
	    }
	}
    }
    function processDragEvents(table, result) {
	var trs = table.querySelectorAll("tbody tr");
	var i;
	for (i = 0; i < trs.length; i++) {
	    result.push("<Event name='" + trs[i].querySelector("td").textContent.trim()
			+ "' interface='DragEvents'/>");
	}
    }
    function processAttrEvents(table, result) {
	var trs = table.querySelectorAll("tbody tr");
	var i;
	for (i = 0; i < trs.length; i++) {
	    var tds = trs[i].querySelectorAll("td");
	    var r = "<AttributeEvent name='" + trs[i].querySelector("th").textContent.trim()
		+ "' event='"
		+ tds[1].querySelector("code").textContent.trim()	
		+ "'";
	    if (tds[0].textContent.trim() === "body") {
		r += " element='body'";
	    }
	    r+= "/>";
	    result.push(r);
	}
    }
    
    var elements = [], i;
    elements.push("<Definitions>");
    elements.push("<Elements id='html'>");
    processElements(document.querySelector("h3#elements-1 ~ table"), elements);
    elements.push("</Elements>");
    elements.push("<Events id='html'>");
    processEvents(document.querySelector("h5#mediaevents ~ table"), elements);
    processEvents(document.querySelector("h5#appcacheevents ~ table"), elements);
    processDragEvents(document.querySelector("h4#dndevents ~ table"), elements);
    elements.push("</Events>");
    elements.push("<AttributeEvents id='html'>");
    processAttrEvents(document.getElementById("ix-event-handlers"), elements);
    elements.push("</AttributeEvents>");    
    
    elements.push("</Definitions>");
    return elements.join('\n');
}
