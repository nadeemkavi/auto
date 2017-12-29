<!-- Random Post Start -->
<style>
#ramdomcat a:visited {color:blue; text-decoration: none}
#ramdomcat a:hover{color:red}
</style>
 
<script type='text/javascript'>
var relatedpoststitle="";
</script>
<script type='text/javascript'>
var relatedTitles = new Array();
var relatedTitlesNum = 0;
var relatedUrls = new Array();
function random_results_label(json) {
for (var i = 0; i < json.feed.entry.length; i++) {
var entry = json.feed.entry[i];
relatedTitles[relatedTitlesNum] = entry.title.$t;
for (var k = 0; k < entry.link.length; k++) {
if (entry.link[k].rel == 'alternate') {
relatedUrls[relatedTitlesNum] = entry.link[k].href;
relatedTitlesNum++;
break;
}
}
}
}
function removeRandomDuplicate() {
var tmp = new Array(0);
var tmp2 = new Array(0);
for(var i = 0; i < relatedUrls.length; i++) {
if(!contains(tmp, relatedUrls[i])) {
tmp.length += 1;
tmp[tmp.length - 1] = relatedUrls[i];
tmp2.length += 1;
tmp2[tmp2.length - 1] = relatedTitles[i];
}
}
relatedTitles = tmp2;
relatedUrls = tmp;
 
}
function contains(a, e) {
for(var j = 0; j < a.length; j++) if (a[j]==e) return true;
return false;
}
function showRandomLabels() {
for(var i = 0; i < relatedUrls.length; i++)
{
if(relatedUrls[i]==currentposturl)
{
relatedUrls.splice(i,1)
relatedTitles.splice(i,1)
 
}
}
var r = Math.floor((relatedTitles.length - 1) * Math.random());
var i = 0;
 
if(relatedTitles.length>1)
document.write('<ul>');
while (i < relatedTitles.length && i < 20 && i<maxresults) {
document.write('<li><a href="' + relatedUrls[r] + '">' + relatedTitles[r] + '</a></li>');
if (r < relatedTitles.length - 1) {
r++;
} else {
r = 0;
}
i++;
}
document.write('</ul>');
}
</script>
<div id="ramdomcat">
<script type="text/javascript" src="/feeds/posts/default/-/Love Matter?alt=json-in-script&amp;callback=random_results_label&amp;max-results=10"></script>
<script type="text/javascript">
var currentposturl="";
var maxresults=7;
removeRandomDuplicate(); showRandomLabels();
</script>
</div>
<!-- Random Post End -->
<div style="text-align: right;">
<b style="font-family: &quot;Trebuchet MS&quot;, sans-serif;"><a href="http://www.kmgweb.in/search/label/Fitness%20Health">Read More</a></b></div>
