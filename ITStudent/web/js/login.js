$(document).ready(function()
    {
        var jVal = {
            'username' : function() {

                $('body').append('<div id="usernameInfo" class="info"></div>');

                var usernameInfo = $('#usernameInfo');
                var ele = $('#username');
                var pos = ele.offset();

                usernameInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                var patt = /^.+@.+[.].{2,}$/i;

                if(!patt.test(ele.val())) {
                    jVal.errors = true;
                    usernameInfo.removeClass('correct').addClass('error').html('&larr; Username not valid').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    usernameInfo.removeClass('error').addClass('correct').html('&radic;Wait, let us check ').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'password' : function(){
                $('body').append('<div id="passwordInfo" class="info"></div>');
                var passwordInfo = $('#passwordInfo');
                var ele = $('#password');
                var pos = ele.offset();

                passwordInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                var patt = /[0-9]$/i;

                if(!ele.val() || ele.val().length < 8) {
                    jVal.errors = true;
                    passwordInfo.removeClass('correct').addClass('error').html('&larr; Is this your password?').show();
                    ele.removeClass('normal').addClass('wrong');
                }else if(!patt.test(ele.val())){
                    jVal.errors = true;
                    passwordInfo.removeClass('correct').addClass('error').html('&larr; You missed the integers').show();
                    ele.removeClass('normal').addClass('wrong');
                }else{
                    passwordInfo.removeClass('error').addClass('correct').html('&radic; Wait, let us check').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            }
        };

        $('#send').click(function (){
            var obj = $.browser.webkit ? $('body') : $('html');
            obj.animate({
                scrollTop: $('#jform').offset().top
            }, 750, function (){
                jVal.errors = false;
                jVal.username();
                jVal.password();              
            });
            return false;
        });
        $('#username').change(jVal.username);
        $('#password').change(jVal.password);
    });
