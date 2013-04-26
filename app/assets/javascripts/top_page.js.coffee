# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


#book = {
#  title: "aaa",
#  price: 100
#}
#
#animal = 
#  monkey:
#    name: "aaa"


#class Canvas
#  constructor: (@name) ->
#    canvas = document.getElementById 'canvas'
#    canvas.onclick = -> alert 'Alert #{@name}'


#class HeroSlider
#  constructor: ->
#    @hero_slider = $('#slideshow')
#    @all_slides = @hero_slider.find('.slide')
#    @setContainerWidth()
#    @init()
# 
#  init: =>
#    @hero_slider.slides
#      next: 'control-right'
#      prev: 'control-left'
#      paginationClass: 'tabs'
#      generatePagination: false,
#      generateNextPrev: false
#      $(window).resize =>
#        @setContainerWidth()
# 
#    @all_slides.click ->
#      window.location = $(@).data('url')
# 
#  setContainerWidth: ->
#    container_width = $(window).width()
#    @all_slides.css 'width', container_width
#    

$ ->
  $("div.canvas").click -> alert("Hello World!");

  $("p#first").html("<strong>変更後</strong>")
  $("p").css("color","blue")

  $('div.canvas').mouseover -> $(this).css("background-color","green")
  $('div.canvas').mouseout -> $(this).css("background-color","blue")

#  $('div.canvas').hover -> $(this).css("background-color","green") -> $(this).css("background-color","red")

  $('div.canvas').mouseover -> $(this).animate {width:150}, 1000
  $('div.canvas').mouseout -> $(this).animate {width:1024}, 1000

  $("#slides").slidesjs({
    play: {
      active: false,
      effect: "fade",
      interval: 5000,
      auto: true,
      swap: true,
      pauseOnHover: true,
      restartDelay: 2500,
      width:940,
      height:528
    }
    
    effect: {
      fade: {
        speed: 1200
      }
    }
    
    navigation: {
      active: false
    }
    
    pagination: {
      active: false
    }
  });
  
#  $("#slides").slidesjs({
#    width: 940,
#    height: 528,
#  });
    
#  $("#slideshow").slidesjs({
#        width: 940,
#        height: 528
#      });
#  $('#slideshow').slides ->
#    preload: false,
#    effect: 'slide, fade',
#    crossfade: true,
#    slideSpeed: 350,
#    fadeSpeed: 500,
#    pagination: false, 
#    generatePagination: false, 
#    prependPagination: true


  #new HeroSlider

#  $('div.canvas').mouseover -> $(this).addClass 'hidden';
#  $('div.canvas').mouseout -> $(this).removeClass 'hidden'

#  $("div.canvas").click -> $(this).addClass 'hidden', -> $(this).removeClass 'hidden';
#  $("div.canvas").toggle -> $(this).animate {width:150}, 1000, -> $(this).animate {width:1024}, 1000;
#  toggle_flag = true;
#  $("div.canvas").click -> $(this).addClass 'hidden';
  
#  $("div.canvas").click -> $(this).removeClass 'hidden';

#$('div.canvas').toggle ->
#  (alert ('First handler for .toggle() called.'))
#, ->
#  (alert ('Second handler for .toggle() called.'));


#$('iv.canvas').hover ->
#	$(@).stop().animate 'opacity' : '0.5'
#,->
#	$(@).stop().animate 'opacity' : '1'



#$ ->
#gold = silver = rest = "unknown"

#awardMedals = (first, second, others...) ->
#  gold   = first
#  silver = second
#  rest   = others

#contenders = [
#  "Michael Phelps"
#  "Liu Xiang"
#  "Yao Ming"
#  "Allyson Felix"
#  "Shawn Johnson"
#  "Roman Sebrle"
#  "Guo Jingjing"
#  "Tyson Gay"
#  "Asafa Powell"
#  "Usain Bolt"
#]

#awardMedals contenders...

#alert "Gold: " + gold
#alert "Silver: " + silver
#alert "The Field: " + rest


#$(function(){
#
#})

#$ ->
#$("p#first").html("<strong>変更後</strong>");
#$("p").css("color","green");

#$("button").click(function(){
#    $("img").attr("src","sea.jpg");
#});