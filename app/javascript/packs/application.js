// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
// Turbolinks.start()
ActiveStorage.start()

// console.log('hello')

let userImg = document.getElementById('user-img');
let menu = document.getElementById('menu');



userImg.addEventListener('click', function() {
  menu.classList.toggle("menu-vanish");
  // console.log('hello')
});

// let startDay = document.getElementById('startday');
// let endtDay = document.getElementById('endday');
// let start = startDay.value

// endtDay.addEventListener('click', function() {
  
// });

// console.log(start);

