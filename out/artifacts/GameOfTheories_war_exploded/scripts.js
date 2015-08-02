/**
 * Created by Serkan-PC on 26/07/2015.
 */
function userCreateVal() {
    var e = document.getElementById("email").value;
    var u = document.getElementById("username").value;
    var p = document.getElementById("password").value;
    var pa= document.getElementById("passwordagain").value;
    if (e.length==0){
        document.getElementById("Error").innerHTML = "Email missing";
    }else if (u.length==0){
        document.getElementById("Error").innerHTML = "Username missing";
    }else if (p.length<5){
        document.getElementById("Error").innerHTML = "Password not long enough";
    }else if (p!=pa){
        document.getElementById("Error").innerHTML = "Passwords don't match";
    }
    else{
        return true;
    }
    return false;
}
function loginVal(){
    var u = document.getElementById("username").value;
    var p = document.getElementById("password").value;
    if (u.length==0){
        document.getElementById("Error").innerHTML = "Username missing";
    }else if (p.length<5){
        document.getElementById("Error").innerHTML = "Password not long enough";
    }else{
        return true;
    }
    return false;
}
function loggedIn(id){

    if(id==null) {
        document.getElementById("SubmitError").innerHTML = "Please log in"
        return false;
    }
    return true;
}