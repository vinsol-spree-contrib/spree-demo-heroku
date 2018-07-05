function Main() {

  this.init = function() {
    this.initializeEditor();
    // this.initializeFileTreeMenu();
  }

  this.initializeEditor = function() {
    var codeMirror = CodeMirror.fromTextArea($('#themes_template_body')[0], {
      lineNumbers: true,
      extraKeys: { "Ctrl-Space": "autocomplete" },
      mode: { name: "javascript", globalVars: true }
    });
    codeMirror.setSize($('.admin-editor-section').width(), 800);
    codeMirror.setSize($('.admin-editor-section').height(), 600);
  }

  // this.initializeFileTreeMenu = function() {
  //   $('#tree-menu-sidebar ul:first').addClass('tree');
  //   $(".tree").treemenu({delay:500});
  // }
}

$(document).ready(function() {
  new Main().init();
});
