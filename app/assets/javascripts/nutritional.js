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
    var grade = 0
    var omegagrade = 0
    var fibergrade = 0 
    var vitcgrade = 0
    var message = "Perfect grade :)"
    var testingvaluesomega = [data.valueOmegaThree]
    var testingvaluesfiber = [data.valueFibers]
    var testingvaluesvitC = [data.valueVitaminC]
    var finalgrade = ""
    if (testingvaluesomega[0] === undefined) {
      testingvaluesomega[0] = 0;
    }

    if (testingvaluesfiber[0] === undefined) {
      testingvaluesfiber[0] = 0;
    }

// Omega threes

    switch(true) {
    case testingvaluesomega[0] > 0.10:
      omegagrade += 1
      break;
    case testingvaluesomega[0] > 0.8:
      omegagrade += 2
      message = "Nice try. Add a little more omega 3"
      break;
    case testingvaluesomega[0] > 0.6:
      omegagrade += 3
      message = "Nice try. Add some more omega 3"
      break;
    case testingvaluesomega[0] > 0.4:
      omegagrade += 4
      message = "Nice try. Add some more omega 3"
      break;
    case testingvaluesomega[0] >= 0:
      omegagrade += 5
      message = "Nice try. Add some more omega 3"
      break;
    };

// Fibers


    switch(true) {
    case testingvaluesfiber[0] > 10:
      fibergrade += 1
      break;
    case testingvaluesfiber[0] > 7.5:
      message = "Nice try. Add a little fiber"
      fibergrade += 2
      break;
    case testingvaluesfiber[0] > 5:
      message = "Nice try. Add some more fiber"
      fibergrade += 3
      break;
    case testingvaluesfiber[0] > 2.5:
      message = "Nice try. Add some more fiber"
      fibergrade += 4
      break;
    case testingvaluesfiber[0] >= 0:
      message = "Nice try. Add some more fiber"
      fibergrade += 5
      break;
    };

// Vitamin A 

    switch(true) {
    case testingvaluesvitC[0] > 40:
      vitcgrade += 1
      break;
    case testingvaluesvitC[0] > 30:
      vitcgrade += 2
      message = "Nice try. Add some more Vitamin C"
      break;
    case testingvaluesvitC[0] > 25:
      vitcgrade += 3
      message = "Nice try. Add some more Vitamin C"
      break;
    case testingvaluesvitC[0] > 20:
      vitcgrade += 4
      message = "Nice try. Add some more Vitamin C"
      break;
    case testingvaluesvitC[0] >= 0:
      vitcgrade += 5
      message = "Nice try. Add some more Vitamin C"
      break;
    };


// Final grade

    grade = omegagrade + fibergrade + vitcgrade

    switch(true) {
    case grade <= 3:
      finalgrade = "A"
      break;
    case grade <= 6:
      finalgrade = "B"
      break;
    case grade <= 9:
      finalgrade = "C+"
      break;
    case grade <= 12:
      finalgrade = "C"
      break;
    case grade <= 15:
      finalgrade = "C-"
      break;
    };
    $('#grade').text(finalgrade);
    $('#info').text(message)
  });
});