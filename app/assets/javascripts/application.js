// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize
//= require init



/* custom js - ayo */
/*materialize customizations */


//update cart counter
/*$(function()
{
  var cart_items_count =$("#cartcounter").text();

 if (cart_items_count == "0")
            {
                cart_items_count = parseInt(cart_items_count);
                cart_items_count = 0
                cart_items_count+=1
                
                $("#cartcounter").text(cart_items_count)
            }
            else
            {
                  newQuan = parseInt(quan);
                  newQuan+=1
                  $(nextnested.children()[0].children[0]).show()
                  $(nextnested.children()[0].children[1]).text(newQuan)
             } 

});*/



//add and remove foom cart
$(function() {
    $( "#additemcart" ).click(function(){
      $( ".add-item" ).switchClass( "add-item", "remove-item" );
      $( ".remove-item" ).switchClass( "remove-item", "add-item");
    });
  });

$( ".addtocartdiv" )
 
      .mouseup(function() 
      {
        
        var thisdiv = $(this)
        // $( this ).css("background-color","#2471fe");
        $( this ).addClass('in-cart')
        $( this ).css("background-color","#2471fe");
        
      })

      .mousedown(function() 
      {
        var thisdiv = $(this)
        $( this ).css("background-color","#e9a022");
               
        //get content of div, perform string operation, add/sub 1 and append.
        var nextnested =  $(thisdiv.children()[1])
        var quan = $(nextnested.children()[0].children[1]).text()
       
            if (quan == "")
            {
                newQuan = parseInt(quan);
                newQuan = 0
                newQuan+=1
                $(nextnested.children()[0].children[0]).show()
                $(nextnested.children()[0].children[1]).text(newQuan)
            }
            else
            {
                  newQuan = parseInt(quan);
                  newQuan+=1
                  $(nextnested.children()[0].children[0]).show()
                  $(nextnested.children()[0].children[1]).text(newQuan)
             }       
  });


$('#hasoptionsdiv').on('change', function() 
  {
    if(this.value == 0)
      {
        $(this).next("div").hide();
      }
    else
      $(this).next("div").show();
  })

 
 $(".thumbcheck").click(function()
 {
      if(this.value == "s")
      {
        $("#sizediv").toggle(); 
      }
      else if(this.value=="c")
        $("#colordiv").toggle(); 
      
 
});




/* custom js - ayo end */