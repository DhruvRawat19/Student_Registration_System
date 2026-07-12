function demo()
{
a=document.getElementsByName('u1')[0].value.length;
b=document.getElementsByName('u2')[0].value.length;
if(a<3 || b<3)
{
document.getElementById('s1').style.color="White";
document.getElementById('s1').innerHTML="Minimum 3 characters required";
return false;
}
return true;
}