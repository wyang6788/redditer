function openMenu(){
    $(".menu").animate({'left': '0px'}, 300);
    $(".main").animate({'left': '200px'}, 300);
}

function closeMenu(){
    $(".menu").animate({'left': '-200px'}, 300);
    $(".main").animate({'left': '0px'}, 300);
}