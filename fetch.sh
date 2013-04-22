WGET="wget"

echo "Fetching specifications..."


echo "HTML WG"
phantomjs wrapper.phjs idl.js "http://www.w3.org/html/wg/drafts/html/master/single-page.html" >HTML5.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/2dcontext/" >canvas2d.idl
# phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/md/" >microdata.idl
phantomjs wrapper.phjs html5-info.js "http://dev.w3.org/html5/spec/single-page.html" >html5-info.xml

echo "WebApps WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/clipops/clipops.html" >clipboard.idl
phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/domcore/raw-file/tip/Overview.html" >core.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/DOM-Level-3-Events/html/DOM3-Events.html" >events.idl
phantomjs wrapper.phjs events-info.js "http://dev.w3.org/html5/spec/single-page.html" >events-info.xml
# phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/FileAPI/" >fileapi.idl
# phantomjs wrapper.phjs idl.js "http://dev.w3.org/2009/dap/file-system/file-dir-sys.html" >fileapi_dir.idl
# phantomjs wrapper.phjs idl.js "http://dev.w3.org/2009/dap/file-system/file-writer.html" >filewriter.idl
phantomjs wrapper.phjs idl.js "http://www.w3.org/TR/IndexedDB/" >indexeddb.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/progress/Progress.html" >progress.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/selectors-api/" >selectors.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/eventsource/Overview.html" >sse.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/postmsg/" >postmsg.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/webstorage/Overview.html" >storage.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/workers/Overview.html" >workers.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/websockets/Overview.html" >sockets.idl
phantomjs wrapper.phjs idl.js "http://www.w3.org/TR/XMLHttpRequest/" >xhr.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/html5/postmsg/" >messaging.idl
# phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/pointerlock/raw-file/tip/index.html" >pointerlock.idl
# phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/gamepad/raw-file/tip/gamepad.html" >gamepad.idl
# phantomjs wrapper.phjs idl.js "http://www.w3.org/TR/screen-orientation/" >screenorientation.idl

echo "Web Events WG"
phantomjs wrapper.phjs idl.js "http://www.w3.org/TR/touch-events/" >touchevents.idl

echo "Pointer Events WG"
phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/pointerevents/raw-file/tip/pointerEvents.html" >pointerevents.idl

echo "Audio WG"
phantomjs wrapper.phjs idl.js "https://dvcs.w3.org/hg/audio/raw-file/tip/webaudio/specification.html" >audio.idl

echo "Web Crypto WG"
phantomjs wrapper.phjs idl.js "http://www.w3.org/2012/webcrypto/WebCryptoAPI/" >crypto.idl

echo "CSS WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/csswg/cssom-view/Overview.html" >cssom-view.idl

echo "Geolocation WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/geo/api/spec-source.html" >geolocation.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/geo/api/spec-source-orientation.html" >deviceorientation.idl

echo "Web Performance WG"
phantomjs wrapper.phjs idl.js "http://www.w3.org/TR/navigation-timing/Overview.html" >navigationtiming.idl
phantomjs wrapper.phjs idl.js "http://w3c-test.org/webperf/specs/ResourceTiming/Overview.html" >resourcetiming.idl
phantomjs wrapper.phjs idl.js "http://w3c-test.org/webperf/specs/UserTiming/" >usertiming.idl
phantomjs wrapper.phjs idl.js "http://w3c-test.org/webperf/specs/PageVisibility/" >pagevisibility.idl
phantomjs wrapper.phjs idl.js "http://w3c-test.org/webperf/specs/RequestAnimationFrame/" >animationtiming.idl
phantomjs wrapper.phjs idl.js "http://w3c-test.org/webperf/specs/HighResolutionTime/" >time.idl
phantomjs wrapper.phjs idl.js "http://www.w3c-test.org/webperf/specs/PerformanceTimeline/" >performance.idl

echo "Notification WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2006/webapi/WebNotifications/" >notification.idl

echo "DAP WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2009/dap/camera/" >mediacapture.idl
phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/dap/raw-file/tip/proximity/Overview.html" >proximity.idl
phantomjs wrapper.phjs idl.js "https://dvcs.w3.org/hg/web-intents/raw-file/tip/spec/Overview-respec.html" >webintent.idl
phantomjs wrapper.phjs idl.js "https://dvcs.w3.org/hg/dap/raw-file/tip/contacts/Overview.html" >contact.idl
phantomjs wrapper.phjs idl.js "https://dvcs.w3.org/hg/dap/raw-file/tip/gallery/Overview.html" >gallery.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2009/dap/vibration/" >vibration.idl
phantomjs wrapper.phjs idl.js "http://dvcs.w3.org/hg/dap/raw-file/tip/battery/Overview.html" >battery.idl

echo "Web RTC WG"
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2011/webrtc/editor/getusermedia.html" >getusermedia.idl
phantomjs wrapper.phjs idl.js "http://dev.w3.org/2011/webrtc/editor/webrtc.html" >webrtc.idl


$WGET -O typedarray.idl "https://www.khronos.org/registry/typedarray/specs/latest/typedarray.idl"
