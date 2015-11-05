// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $("body");

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$("body > h1").css({"color": "#6666ff"})
$("body > h1").css({"border": "solid 1px black"})
$("body > h1").css({"visibility": "hidden"})

//RELEASE 4: Event Listener
  // Add the code for the event listener here
 $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.virginiaherpetologicalsociety.com/reptiles/snakes/northern-copperhead/nch_page_copperhead02.jpg')
  })
 $('img').on('mouseout', function(e) {
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
 })

//RELEASE 5: Experiment on your own
$('img').on('click', function() {
  $(this).css({"border": "solid 4px black"})
  $(this).animate({"padding": "20px"}, "1000")
})
$('img').on('dblclick', function() {
  $(this).animate({height: "toggle"}, "2000");
})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.
/*
=====Reflection=====
What is jQuery?

  jQuery is a JavaScript framework designed to make websites more interactive
  and responsive. Basically, it's a collection of functions that make it much
  easier for developers to add user events, animate things, etc.

What does jQuery do for you?

  jQuery makes it possible to make a lot of user events, animations, etc.
  without deep technical knowledge of JS. Everything in jQuerey is built
  using JS code, so theoretically it should be possible to replicate the same
  effects without jQuery. That said, from my experience, even something so
  simple as moving a div to the left by 10 pixels is a rather complicated
  affair in simple JavaScript.

What did you learn about the DOM while working on this challenge?

  I'd already been messing around with the DOM prior to this challenge, but
  it was really interesting to see all thing things that jQuery can do.
  It's an amazing tool and I'm actually pretty excited to try and use it
  in my own site.

*/