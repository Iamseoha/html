(function($,v){
    v=xe.getApp('validator')[0];if(!v)return;
    
    v.cast('ADD_FILTER',['resendAuthMail', {'email_address':{required:true,rule:'email',minlength:'1',maxlength:'200'}}]);
    v.cast('ADD_MESSAGE',['email_address','이메일 주소']);
    v.cast('ADD_MESSAGE',['isnull','%s 값은 필수입니다.']);
    v.cast('ADD_MESSAGE',['outofrange','%s의 글자 수를 맞추어 주세요.']);
    v.cast('ADD_MESSAGE',['equalto','%s이(가) 잘못되었습니다.']);
    v.cast('ADD_MESSAGE',['invalid','%s의 값이 올바르지 않습니다.']);
    v.cast('ADD_MESSAGE',['invalid_email','%s의 값은 올바른 메일 주소가 아닙니다.']);
    v.cast('ADD_MESSAGE',['invalid_userid','%s의 값은 영문, 숫자, _만 가능하며 첫 글자는 영문이어야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_user_id','%s의 값은 영문, 숫자, _만 가능하며 첫 글자는 영문이어야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_homepage','%s의 형식이 잘못되었습니다.(예: https://www.rhymix.org/)']);
    v.cast('ADD_MESSAGE',['invalid_url','%s의 형식이 잘못되었습니다.(예: https://www.rhymix.org/)']);
    v.cast('ADD_MESSAGE',['invalid_korean','%s의 형식이 잘못되었습니다. 한글로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_korean_number','%s의 형식이 잘못되었습니다. 한글과 숫자로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_alpha','%s의 형식이 잘못되었습니다. 영문으로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_alpha_number','%s의 형식이 잘못되었습니다. 영문과 숫자로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_mid','%s의 형식이 잘못되었습니다. 첫 글자는 영문으로 시작해야 하며 \'영문+숫자+_\'로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_number','%s의 형식이 잘못되었습니다. 숫자로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_float','%s의 형식이 잘못되었습니다. 숫자로만 입력해야 합니다.']);
    v.cast('ADD_MESSAGE',['invalid_extension','%s의 형식이 잘못되었습니다. gif, jpg, png 등 쉼표로 구분하여 입력해야 합니다.']);
    })(jQuery);