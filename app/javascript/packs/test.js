// $(document).on("click", ".add", function() {
//   $(this).parent().clone(true).insertAfter($(this).parent());
// });
// $(document).on("click", ".del", function() {
//   var target = $(this).parent();
//   if (target.parent().children().length > 1) {
//       target.remove();
//   }
// });

$(document).on("change", ".weight", function() {
  var weight = $(this);
  var weightValue = $(weight).val();
  var weightResult = Math.floor(weightValue * 2.205);
  var parent = $(this).parents('.nested-fields');
  var poundField = parent.find('.weight-lb');
  $(poundField).val(weightResult);
});

$(document).ready(function() {
  $(".add_logs a.add_fields").
    data("association-insertion-node", '.append_logs');
    $(".add_logs a.add_fields").css('display', 'inline-block');
});

