// Add Astrick for every required input field
$('input').each(function(){
    if($(this).attr('required') === 'required'){
        $(this).after("<span class='astrick'>*</span>");
    }
});

function next1() {
        var form1 = document.getElementById("personal"),
            form2 = document.getElementById("career");
        form1.style.display = "none";
        form2.style.display = "block";
}
function next2() {
        var form2 = document.getElementById("career"),
            form3 = document.getElementById("social");
        form2.style.display = "none";
        form3.style.display = "block";
}
function prev1() {
        var form1 = document.getElementById("personal"),
            form2 = document.getElementById("career");
        form1.style.display = "block";
        form2.style.display = "none";
}
function prev2() {
        var form2 = document.getElementById("career"),
            form3 = document.getElementById("social");
        form2.style.display = "block";
        form3.style.display = "none";
}

function showCourse() {
    $('.btn-group button').on('click', function(){
        var ClassName = $(this).attr('data-target');
        $('div.all-course > div').hide();
        $('div.all-course > .' + ClassName).show();

        // console.log($('section.all-course .' + ClassName).val());
        // console.log($('div.all-course > .' + ClassName));
    });
}

showCourse();
