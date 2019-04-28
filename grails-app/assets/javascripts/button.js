window.onload = function (ev) {
    $(function() {
        $( ".bBaixarApp" ).click(function() {
            $( ".bBaixarApp" ).addClass( "onclic", 250, validate);
        });

        function validate() {
            setTimeout(function() {
                $( ".bBaixarApp" ).removeClass( "onclic" );
                $( ".bBaixarApp" ).addClass( "validate", 450, callback );
            }, 2250 );
        }
        function callback() {
            setTimeout(function() {
                $( ".bBaixarApp" ).removeClass( "validate" );
            }, 1250 );
        }
    });
}
