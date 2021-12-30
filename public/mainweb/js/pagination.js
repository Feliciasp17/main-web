$(document).ready(function(){
    $(".pageNumber").click(function(){
        $('.pageNumber').removeClass('active');
        $(this).addClass('active');
    })
    $('.next').click(function(){
        $('.pagination').find('.pageNumber.active').next().addClass('active');
        $('.pagination').find('.pageNumber.active').prev().removeClass('active');
    })
    $('.prev').click(function(){
        $('.pagination').find('.pageNumber.active').prev().addClass('active');
        $('.pagination').find('.pageNumber.active').next().removeClass('active');
    })
    
})