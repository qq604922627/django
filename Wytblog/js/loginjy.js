 function loginform()
 {
  if(document.f.username.value=="")
  {
   alert("用户名不能为空！");
   document.f.username.focus();
   return false;
  } 
  else if(document.f.password.value=="")
  {
   alert("密码不能为空！");
   document.f.password.focus();
   return false; 
  }
 }
