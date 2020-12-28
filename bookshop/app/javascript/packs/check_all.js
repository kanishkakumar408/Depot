let click = true;
document.addEventListener('DOMContentLoaded',() => {

  let check = document.querySelector('#checkall');
  check.addEventListener('click',() => {
    click? check_all() : uncheck_all();
  });

  function check_all(){
    console.log("hii where");
    let e = document.querySelectorAll(".mycheck");
    e.forEach((ele) => {
      console.log("hello hii");
      ele.checked = true;
    })
    click = false;
  }
  function uncheck_all(){
    let e = document.querySelectorAll(".mycheck");
    e.forEach((ele) => {
      console.log("hello hii");
      ele.checked = false;
    })
    click = true;
  }

})