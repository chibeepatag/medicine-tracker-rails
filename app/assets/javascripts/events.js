$(function() {
  var reaction;
  reactions = $('.reaction').children();
  return $('#organ').change(function() {
    var organ;
    organ = $('#organ :selected').text();
    if(organ.length > 0){
      escaped_organ = organ.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      new_reactions = $(reactions).filter("optgroup[label=" + escaped_organ + "]").html();
      if (new_reactions) {
        console.log("inside if")
        return $('.reaction').html(new_reactions);
      } else {
        console.log("inside else")
        return $('.reaction').empty();
      }
    }
  });
});