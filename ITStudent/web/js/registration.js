$(document).ready(function()
    {
        var jVal = {
            'fname' : function(){
                $('body').append('<div id="fnameInfo" class="info"></div>');
                var fnameInfo = $('#fnameInfo');
                var ele = $('#fname');
                var pos = ele.offset();

                fnameInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                if(ele.val().length < 2) {
                    jVal.errors = true;
                    fnameInfo.removeClass('correct').addClass('error').html('&larr; more than 2 characters').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    fnameInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'lname' : function(){
                $('body').append('<div id="lnameInfo" class="info"></div>');
                var lnameInfo = $('#lnameInfo');
                var ele = $('#lname');
                var pos = ele.offset();

                lnameInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                if(ele.val().length < 2) {
                    jVal.errors = true;
                    lnameInfo.removeClass('correct').addClass('error').html('&larr; more than 2 characters').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    lnameInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'birthDate' : function (){

                $('body').append('<div id="birthInfo" class="info"></div>');

                var birthInfo = $('#birthInfo');
                var ele = $('#dob');
                var pos = ele.offset();

                birthInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                var patt = /^[0-9]{2}\-[0-9]{2}\-[0-9]{4}$/i;

                if(!patt.test(ele.val())) {
                    jVal.errors = true;
                    birthInfo.removeClass('correct').addClass('error').html('&larr; type in date in correct format').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    birthInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'gender' : function (){

                $('body').append('<div id="genderInfo" class="info"></div>');

                var genderInfo = $('#genderInfo');
                var ele = $('#woman');
                var pos = ele.offset();

                genderInfo.css({
                    top: pos.top-10,
                    left: pos.left+ele.width()+60
                });

                if($('input[name="gender"]:checked').length === 0) {
                    jVal.errors = true;
                    genderInfo.removeClass('correct').addClass('error').html('&larr; are you a man or a woman?').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    genderInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
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
                    usernameInfo.removeClass('correct').addClass('error').html('&larr; give me a valid email adress, ok?').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    usernameInfo.removeClass('error').addClass('correct').html('&radic;').show();
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
                    passwordInfo.removeClass('correct').addClass('error').html('&larr; Password too short').show();
                    ele.removeClass('normal').addClass('wrong');
                }else if(!patt.test(ele.val())){
                    jVal.errors = true;
                    passwordInfo.removeClass('correct').addClass('error').html('&larr; Integers are recommended').show();
                    ele.removeClass('normal').addClass('wrong');
                }else{
                    passwordInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'confpassword' : function(){
                $('body').append('<div id="confpasswordInfo" class="info"></div>');
                var confpasswordInfo = $('#confpasswordInfo');
                var ele = $('#confpassword');
                var ele_ = $('#password');
                var pos = ele.offset();

                confpasswordInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                if(ele.val() != ele_.val()) {
                    jVal.errors = true;
                    confpasswordInfo.removeClass('correct').addClass('error').html('&larr;Passwords do not match').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    confpasswordInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            },
            'sQ' : function(){
                $('body').append('<div id="sQInfo" class="info"></div>');
                var sQInfo = $('#sQInfo');
                var ele = $('#sQ');
                var pos = ele.offset();

                sQInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                if(ele.val().length == 6) {
                    jVal.errors = true;
                    sQInfo.removeClass('correct').addClass('error').html('&larr; Select').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    sQInfo.removeClass('error').addClass('correct').html('&radic;').show();
                    ele.removeClass('wrong').addClass('normal');
                }
            }
            ,
            'sA' : function(){
                $('body').append('<div id="sAInfo" class="info"></div>');
                var sAInfo = $('#sAInfo');
                var ele = $('#sA');
                var pos = ele.offset();

                sAInfo.css({
                    top: pos.top-3,
                    left: pos.left+ele.width()+15
                });

                if(ele.val().length < 2) {
                    jVal.errors = true;
                    sAInfo.removeClass('correct').addClass('error').html('&larr; more than 2 characters').show();
                    ele.removeClass('normal').addClass('wrong');
                } else {
                    sAInfo.removeClass('error').addClass('correct').html('&radic;').show();
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
                jVal.fname();
                jVal.lname();
                jVal.birthDate();
                jVal.gender();
                jVal.sQ();
                jVal.sA();
                jVal.username();
                jVal.password();
                jVal.confpassword();
            });
            return false;
        });
        $('#fname').change(jVal.fname);
        $('#lname').change(jVal.lname);
        $('#dob').change(jVal.birthDate);
        $('input[name="gender"]').change(jVal.gender);
        $('#sQ').change(jVal.sQ);
        $('#sA').change(jVal.sA);
        $('#username').change(jVal.username);
        $('#password').change(jVal.password);
        $('#confpassword').change(jVal.confpassword);
    });
