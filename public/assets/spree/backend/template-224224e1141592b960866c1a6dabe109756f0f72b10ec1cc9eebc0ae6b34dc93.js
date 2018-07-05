function Template() {

  this.init = function() {
    // this.initializeTemplateSearch();
    this.initializeTemplateTreeStructure();
    this.bindEvents();
  }

  this.bindEvents = function() {
    this.highlightFileName();
  }

//   this.initializeTemplateSearch = function() {
//     $('#search-input').on('keyup', function() {
//       var keyword = $(this).val().toUpperCase();
//       var $table = $('#listing_templates');
//       var rows = $table.find('tr');

//       $.each(rows, function(i, val) {
//         var td = $(this).find('td')[0];
//         if(td) {
//           // finding index 0 as searching on the basis of name only.
//           var name = $(td).find('a.template-name')[0];

//           if(name.innerHTML.toUpperCase().indexOf(keyword) > -1) {
//             $(this).css('display','');
//           } else {
//             $(this).css('display','none');
//           }
//         }
//       });
//     });
//   }

  this.initializeTemplateTreeStructure = function() {
    $('#tree-menu-sidebar ul:first').addClass('tree');
    $(".tree").treemenu({ delay:500 });
  }

  this.highlightFileName = function() {
    $('.file-link').on('click', function() {
      $('.file-link').removeClass('highlight-file-link');
      $(this).addClass('highlight-file-link');
    });
  }

}

$(document).ready(function() {
  new Template().init();
});
