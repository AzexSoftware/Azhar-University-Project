// Add Astrick for every required input field
$('input').each(function(){
    if($(this).attr('required') === 'required'){
        $(this).after("<span class='astrick'>*</span>");
    }
});


function showCourse() {
    $('.btn-group-vertical button').on('click', function(){
        var ClassName = $(this).attr('data-target');
        $('div.all-course > div').hide();
        $('div.all-course > .' + ClassName).show();

        // console.log($('section.all-course .' + ClassName).val());
        // console.log($('div.all-course > .' + ClassName));
    })
}

showCourse();
