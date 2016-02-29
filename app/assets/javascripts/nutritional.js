$( document ).ready(function() {

  var fruit = $('#fruit').val();
  var veg = $('#veg').val();
  var liquid = $('#liquid').val();
  var seednut = $('#seednut').val();
  var herb = $('#herb').val();

  if (fruit == "") {
    fruit = "default";
  }

  if (veg == "") {
    veg = "default";
  }

  if (liquid == "") {
    liquid = "default";
  }

  if (seednut == "") {
    seednut = "default";
  }

  if (herb == "") {
    herb = "default";
  }

  $.get( "/nutritionaljson?fruit="+fruit+"&veg="+veg+"&liquid="+liquid+"&seednut="+seednut+"&herb="+herb, function( data ) {
    $('#nutritional-label').nutritionLabel(data);
    var grade = ""
    var testingvalues = [data.valueSugars]
    if (testingvalues[0] === undefined) {
      testingvalues[0] = 0;
    }
    switch(true) {
    case testingvalues[0] > 8:
      grade = "F"
      break;
    case testingvalues[0] > 6.5:
      grade = "C-"
      break;
    case testingvalues[0] > 5:
      grade = "C+"
      break;
    case testingvalues[0] > 3.5:
      grade = "B"
      break;
    case testingvalues[0] >= 0.5:
      grade = "A"
      break;
    };
    $('#grade').text(grade);
  });
});