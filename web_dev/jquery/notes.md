#Tackle jQuery

*Resources
-http://jqfundamentals.com/chapter/jquery-basics
- https://www.w3schools.com/jquery/default.asp
- http://api.jquery.com/
- https://www.youtube.com/watch?v=hMxGhHNOkCU
- https://www.youtube.com/watch?annotation_id=annotation_1494025287&feature=iv&src_vid=hMxGhHNOkCU&v=G-POtu9J-m4
- 3 and 4 of that series


*How often to stop and test what I learned
- Read and try as I go. For the videos try watching at a faster speed and if its not too much code, code along

*Breaks? If so, how often
- 2 breaks:
    + at 45 min
    + 30 after that

*Plan of approach
- Read the jquery basics from jqfundamentals first to get a better idea and then go to the the first 4 videos. W3 after and then documentations. Maybe see JS vanilla vs jQuery


*Why this plan?
-I'm a visual person, but it's nice to mix the too styles, and learn,try as I absorb info.


##notes
- Objects
    -As it turns out, most everything we work with in JavaScript is an object in fact, there are only five kinds of values that are not objects:

    -strings (text)
    -booleans (true/false)
    -numbers
    -undefined
    -null
    -These values are called primitives, but even some of these values can be treated as though they were objects — more on that in a minute. But what's an object? Let's look at an example of a simple object:

-there are only five values in JavaScript that are falsy:

    -undefined (the default value of declared variables that are not assigned a value)
    null
    -NaN ("not a number")
    -0 (the number zero)
    -'' (an empty string)


##jQuery
- Get some elements
The simplest thing we can do with jQuery is get some elements and do something with them. If you understand CSS selectors, getting some elements is very straightforward: you simply pass the appropriate selector to $().
    - It's important to understand that any selection you make will only contain elements that existed in the page when you made the selection. That is, if you write var anchors = $( 'a' ); and then add another <a> element to your page later, then your anchors variable will not contain that new element.

--add the jquery library to your script

###examples
$(function(){
    $("#idselector").hide(300).show(1000);
})

$(function(){
    $("#idselector").slideUp(1000).slideDown(1000);
})

$(function(){
    $("#idselector").hide(300).delay(1000).show(1000);
})

-fadeIn, toggle

####change the css
$("#idselector").css({
color:'red',
fontWeight:'bold'
});


####change html

$('#idselector').html('my button');

####listening to events

*we start with the thing we want to listen to..method..eventname. Then the second argument will be what we want to change

*some methods*
-click
-mouseover

$('#idselector').on('click', function(){
    $('#idSelectorWewantToAffect').slideToggle(200);
})

$('#idselector').on('click', function(){
    $('#idSelectorWewantToAffect .thinginsideWewantTochange').html('my new content');
})

####cleaning jQuery
*instead of targetting by id tagret by class.*

$(fucntion(){
    
    $('.class').on('click', function(){
        var panelId = $(this).attr('data-panelid');
        $('#'+panelId).toggle();
        });

});





##for after
* https://javascriptweblog.wordpress.com/2010/07/06/function-declarations-vs-function-expressions/
* understand a feature of JavaScript known as hoisting.
* .call() vs .apply() on MDN docs


##notes on plan of attack
* As soon as I started my plan of attack changed. I did a basic read on JS first before reading some explanations on jQuery. 
* I found the explanation on jQuery not to be as effective as I couldnt visualize it. It wasn't until I started watched 8 min tutorial videos with explanations and examples that things started to make sense. I think when I start learning a concept, I should start with a short intro video on the topic and then go forth with the docs. At least then, I'll be able to have a better picture on my head.  



