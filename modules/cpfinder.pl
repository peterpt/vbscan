#start admincp/modcp
print "\n[+] Checking admincp/modcp path\n";

$source=$ua->get("$target/admincp")->decoded_content;
if($source =~ m/Admin Control Panel/i){
    print color("yellow");
    print "[++] admincp Found\n$target/admincp\n";
    print color("blue");
}else{
    print color("red");
    print "[++] admincp does not exist or renamed\n";
    print color("blue");
    $amtf=1;
}
$source=$ua->get("$target/modcp")->decoded_content;
if($source =~ m/Moderator Control Panel/i){
    print color("yellow");
    print "[++] modcp Found\n$target/modcp\n";
    print color("blue");
}else{
    print color("red");
    print "[++] modcp does not exist or renamed\n";
    print color("blue");
}
#end admincp/modcp
