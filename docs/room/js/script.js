// the accordion
    $(".solutionsBox .accordion h3").click(function(){
        $(this).next().slideToggle("slow");
        $(".solutionsBox .accordion p").not($(this).next()).slideUp("slow");
    });