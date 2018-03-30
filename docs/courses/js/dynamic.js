/***********************
********************
** open and close the side bar
********************
***********************/
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.getElementById("open").style.marginLeft = "-50px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.getElementById("open").style.marginLeft = "0";
}
/***********************
********************
** the Toolbars
********************
***********************/

function toolbar() {
    $('.card li.nav-item a.nav-link').click(function(){
        $('a.nav-link').removeClass('active');
        $(this).addClass('active');
        var data = $(this).attr('data-target');
        $('.card-body > div').hide('1');
        $('#' + data).show('1');
    });
}
toolbar();

/***********************
********************
** While scrolling, Shrink the jumbotron
********************
***********************/
$(function(){
    $(window).on("scroll", function (){
        var winScroll = $(window).scrollTop(),
            jumbotron = document.getElementById('jumbotron'),
            course_name = $('.jumbotron .course-name'),
            scrolled = (winScroll / 200 ) * 100,
            opacity_rate = (winScroll / 140);
        jumbotron.style.height = 200 - scrolled + 'px';
        course_name.css("opacity", (1 - opacity_rate));
    });
}());

/************************************************************************
****************** Toggle the group buttons in the discussion **************
***************************************************************************/
function toggleBtns(){
    $('#discussion .btn-group-vertical button').on("click", function(){
        $(this).addClass('active');
        $(this).siblings().removeClass('active');
        $('#add-area').hide(10);
        $('#question-area').show(10);
        var question_id = $(this).attr('data-target');
        $('#discussion .all-question').siblings().hide();
        $('#discussion #question_' + question_id).show();
    });
};
setTimeout(toggleBtns,500);

/************************************************************************
****************** Add Question  ******************************
***************************************************************************/
function addQuestion() {
    $('#add-question').on('click', function(){
        $('#question-area').hide(10);
        $('#add-area').show(10);
        $('#discussion .btn-group-vertical button').removeClass('active');
    });
};

setTimeout(addQuestion, 500);

/************************************************************************
****************** Close (Add Question) Section  ***************************
***************************************************************************/
function closeQuestion(){
    $('#close-btn').on('click', function(){
        $('#add-area').hide(10);
        $('#question-area').show(10);
        $('#discussion .btn-group-vertical button:first-child').click();
    });
}
setTimeout(closeQuestion, 500);

/************************************************************************
****************** choose the fist question   ***************************
***************************************************************************/
function chooseFirst() {
    $('#discussion_tab').on('click', function(){
        $('#discussion .btn-group-vertical button:first-child').click();
    });
}

setTimeout(chooseFirst, 500);
