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

    Returns a string with IDL code

*/

function __result_handler() {
  var done = (!!document.respecDone ||
    (document.head.querySelectorAll('script[class="remove"]').length === 0));
  if (!done)
    return "WRAPPER:TRY_AGAIN";
  else {
    var list = document.querySelectorAll("pre[class=idl]"), webidl = [], i;

    // for bikeshed
    if (list.length === 0) {
      list = document.querySelectorAll("pre.idl.def");
    }
    // for audio, crypto, and fileapi
    if (list.length === 0) {
      list = document.querySelectorAll("code[class=idl-code]");
    }
    for (i = 0; i < list.length; i++) {
      webidl.push(list[i].textContent);
    }
    if (webidl.length === 0) {
      return "WRAPPER:EXIT";
    } else {
      return webidl.join('\n');
    }
  }
}
