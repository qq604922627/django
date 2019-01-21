var su=document.getElementById("su");
 function commentform()
 {
  if(document.f.email.value=="")
  {
   alert("邮箱不能为空!");
   document.f.email.focus();
   return false;
  } 
  else if(document.f.text.value=="")
  {
   alert("评论不能为空!");
   document.f.text.focus();
   return false; 
  }
 }
