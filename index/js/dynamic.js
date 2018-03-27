// Add Astrick for every required input field
$('input').each(function(){
    if($(this).attr('required') === 'required'){
        $(this).after("<span class='astrick'>*</span>");
    }
});
