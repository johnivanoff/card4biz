if (window.innerWidth && window.innerWidth <= 981) {
    $(document).ready(function(){ 
        $('#header ul').addClass('hide'); 
        $('#header').append('<div class="leftButton" onclick="toggleMenu()">Menu</div>');
    }); 
    function toggleMenu() {
        $('#header ul').toggleClass('hide'); 
        $('#header .leftButton').toggleClass('pressed');
    }
}
scrollTo(0,0)