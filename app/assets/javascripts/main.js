$(document).ready(function(){
  var validations = {
    '#name': {
        valid : function(name) {
      return name.match(/^[a-z A-Z]+$/);
        },
        required: true,
        error: 'El nombre debe contener únicamente letras.'
    },
    '#email': {
        valid: function(email) {
      return email.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/);
        },
        required: true,
        error: 'Debe ser un correo electrónico válido.'
    }
  };
  var validate = function(target) {
    if(target) {
       return _validate('#'+target.id);
    }
    else {
        var valid = true;
        for(field in validations) {
      valid = _validate(field) && valid;
        }
        return valid;
    }
    function _validate(field) {
      var val = $(field).val().trim();
      if(validations[field].required && val === '') {
        $(field+'-error').html('Campo requerido.');
        $(field+'-error').show();
        return false;
      }
      if(!validations[field].valid( val ) ) {
        $(field+'-error').html( validations[field].error );
        $(field+'-error').show();
        return false;
      }
      $(field+'-error').hide();
      return true;
    }
  }

  $('form').on('submit',function(ev){
    ev.preventDefault();
    if(validate()) {
      //TODO: send data :p
      console.log("TODO: send data :p");
    }
  });

  $('input').on('change',function(ev){
    validate(ev.currentTarget);
  });
});
