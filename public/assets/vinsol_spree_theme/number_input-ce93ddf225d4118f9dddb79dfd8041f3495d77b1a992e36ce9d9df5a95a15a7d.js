function NumberInput($field, options) {
    this.$field     = $field;
    this.options    = this.loadOptions(options);
  }

  /**----------------------------------------------------------------------------------------------------------
   * The default options.
  -----------------------------------------------------------------------------------------------------------*/
  NumberInput.prototype.defaultOptions = {
    decrementTriggerClass: 'js-deletion-trigger',
    incrementTriggerClass: 'js-increment-trigger',
    wrapperDivClass: 'css-input-wrapper'
  };

  NumberInput.prototype.loadOptions = function (options) {
    return $.extend({}, this.defaultOptions, options);
  };

  NumberInput.prototype.prepareDOM = function () {
    var prefixHtml = '<div class="' + this.options.wrapperDivClass + '"><a href="javascript:void(0);" class="glyphicon glyphicon-minus ' + this.options.decrementTriggerClass + '"></a>';
    var suffixHtml = '<a href="javascript:void(0);" class="glyphicon glyphicon-plus ' + this.options.incrementTriggerClass + '"></a></div>';
    var html = prefixHtml + this.$field.prop('outerHTML') + suffixHtml;
    this.$newDOM = $(html)
    this.$field.replaceWith(this.$newDOM)
  }

  NumberInput.prototype.bindEvents = function () {
    this.$newDOM.find("." + this.options.decrementTriggerClass).on('click', function(e){
      var $input = $(e.target).siblings('input')
      newValue = Math.max((parseInt($input.val()) - 1), 1)
      $input.val(newValue);
      e.preventDefault();
    })

    this.$newDOM.find("." + this.options.incrementTriggerClass).on('click', function(e){
      var $input = $(e.target).siblings('input')
      $input.val(parseInt($input.val()) + 1);
      e.preventDefault();
    })
  }

  /**----------------------------------------------------------------------------------------------------------
   * MAIN METHOD.
  -----------------------------------------------------------------------------------------------------------*/
  NumberInput.prototype.initialize = function () {
    this.prepareDOM();
    this.bindEvents();
  }

  new NumberInput($('.number_quantity_js')).initialize();
