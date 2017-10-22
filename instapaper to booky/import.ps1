$dashboard = "Import"
$category = "FromImport"
$importCsv = Import-Csv instapaper-export.csv | Sort-Object -Property Folder |  Group-Object -Property Folder
$x = 
"
<!DOCTYPE NETSCAPE-Bookmark-file-1>
<!--This is an automatically generated file.
    It will be read and overwritten.
    Do Not Edit! -->
<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=UTF-8"">
<TITLE>booky.io Bookmarks</TITLE>
<H1>booky.io Bookmarks</H1>
<DL><p>
    <DT><H3>$($dashboard)</H3>    
";
foreach($u in $importCsv) {
    $x += "<DL><p>
        <DT><H3>$($u.Name)</H3>";
        foreach($j in $u.Group) {        
        $x += "<DL><p>
            <DT><A HREF=""$($j.Url)"">$($j.Title)</A>
        </DL><p>";
        }
    $x += "</DL><p>";
}
$x += "        
</DL><p>
";

$x | Out-File -FilePath my.html