(function() {
    // These are the constraints used to validate the form
    // 根据表单元素的name属性进行校验
/*
Presence：必填
Length：长度
is
The value has to have exactly this length. The default error is is the wrong length (should be %{count} characters)
minimum
The value cannot be shorter than this value. The default error is is too short (minimum is %{count} characters)
maximum
The value cannot be longer than this value. The default error is is too long (maximum is %{count} characters)
The default messages can also be changed by setting the following attributes on validate.validators.length:
notValid
tooLong
tooShort
wrongLength
Numericality：数值

Datetime：日期时间
Date：日期
Format：格式
Inclusion：包含
Exclusion：排除
Email：邮件格式
Equality：相等判断
*/
    var constraints = {
      email: {
        // Email is required
        presence: true,
        // and must be an email (duh)
        email: true,
        //^ 符号
        presence:{
            message: "^邮件不能为空"
        }
      },
      password: {
        // Password is also required
        presence: true,
        // And must be at least 5 characters long
        length: {
          minimum: 5,
          maximum:50,
          message:{
            tooShort:"^密码太短"
          }
          

        }
      },
      "confirm-password": {
        // You need to confirm your password
        presence: true,
        // and it needs to be equal to the other password
        equality: {
          attribute: "password",
          message: "^两次密码不相等"
        }
      },
      username: {
        // You need to pick a username too
        presence: true,
        // And it must be between 3 and 20 characters long
        length: {
          minimum: 3,
          maximum: 20
        },
        format: {
          // We don't allow anything that a-z and 0-9
          pattern: "[a-z0-9]+",
          // but we don't care if the username is uppercase or lowercase
          flags: "i",
          message: "can only contain a-z and 0-9"
        }
      },
      birthdate: {
        // The user needs to give a birthday
        presence: true,
        // and must be born at least 18 years ago
        date: {
          latest: moment().subtract(18, "years"),
          message: "^You must be at least 18 years old to use this service"
        }
      },
      country: {
        // You also need to input where you live
        presence: true,
        // And we restrict the countries supported to Sweden
        inclusion: {
          within: ["SE"],
          // The ^ prevents the field name from being prepended to the error
          message: "^Sorry, this service is for Sweden only"
        }
      },
      zip: {
        // Zip is optional but if specified it must be a 5 digit long number
        format: {
          pattern: "\\d{5}"
        }
      },
      "number-of-children": {
        presence: true,
        // Number of children has to be an integer >= 0
        numericality: {
          onlyInteger: true,
          greaterThanOrEqualTo: 0
        }
      }
    };

  function startValidate(key){
    var form = document.querySelector("form#"+key);
    form.addEventListener("submit", function(ev) {
      ev.preventDefault();
      handleFormSubmit(form);
    });

  }

    // Hook up the inputs to validate on the fly
    var inputs = document.querySelectorAll("input, textarea, select")
    for (var i = 0; i < inputs.length; ++i) {
      inputs.item(i).addEventListener("change", function(ev) {
        var errors = validate(form, constraints) || {};
        showErrorsForInput(this, errors[this.name])
      });
    }

    function handleFormSubmit(form, input) {
      // validate the form aainst the constraints
      var errors = validate(form, constraints);
      // then we update the form to reflect the results
      showErrors(form, errors || {});
      if (!errors) {
        showSuccess();
      }
    }

    // Updates the inputs with the validation errors
    function showErrors(form, errors) {
      // We loop through all the inputs and show the errors for that input
      _.each(form.querySelectorAll("input[name], select[name]"), function(input) {
        // Since the errors can be null if no errors were found we need to handle
        // that
        showErrorsForInput(input, errors && errors[input.name]);
      });
    }

    // Shows the errors for a specific input
    function showErrorsForInput(input, errors) {
      // This is the root of the input
      var formGroup = closestParent(input.parentNode, "form-group")
        // Find where the error messages will be insert into
        , messages = formGroup.querySelector(".messages");
      // First we remove any old messages and resets the classes
      resetFormGroup(formGroup);
      // If we have errors
      if (errors) {
        // we first mark the group has having errors
        formGroup.classList.add("has-error");
        // then we append all the errors
        _.each(errors, function(error) {
          addError(messages, error);
        });
      } else {
        // otherwise we simply mark it as success
        formGroup.classList.add("has-success");
      }
    }

    // Recusively finds the closest parent that has the specified class
    function closestParent(child, className) {
      if (!child || child == document) {
        return null;
      }
      if (child.classList.contains(className)) {
        return child;
      } else {
        return closestParent(child.parentNode, className);
      }
    }

    function resetFormGroup(formGroup) {
      // Remove the success and error classes
      formGroup.classList.remove("has-error");
      formGroup.classList.remove("has-success");
      // and remove any old messages
      _.each(formGroup.querySelectorAll(".help-block.error"), function(el) {
        el.parentNode.removeChild(el);
      });
    }

    // Adds the specified error with the following markup
    // <p class="help-block error">[message]</p>
    function addError(messages, error) {
      var block = document.createElement("p");
      block.classList.add("help-block");
      block.classList.add("error");
      block.innerText = error;
      messages.appendChild(block);
    }

    function showSuccess() {
      // We made it \:D/
      alert("Success!");
    }
  })();