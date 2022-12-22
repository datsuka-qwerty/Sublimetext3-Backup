function myFunction() {
      var shid = "SheetのID";
      var shname = "シートの名前";
      var sh = SpreadsheetApp.openById(shid).getSheetByName(shname);
      var calendar = CalendarApp.getCalendarById("メールアドレス");
      sh.getRange('A6:E999').clear(); // clear workspace
      var start = sh.getRange("A3").getValue(); // get counting date
      var end = sh.getRange("B3").getValue();
      var events = calendar.getEvents(start, end); // get events
      var total = 0;
      var row = 6;
      var hwage = sh.getRange("C3").getValue(); // get hourly wage
      // printing events
      for(var i = 0; i < events.length; i++) {
        if (events[i].getColor() === '8'){
          var start = events[i].getStartTime();
          var end = events[i].getEndTime();
          sh.getRange(row, 1).setValue(events[i].getTitle()); // event name
          sh.getRange(row, 2).setValue(Utilities.formatDate(start,"JST","MM/dd HH:mm")); // start time
          sh.getRange(row, 3).setValue(Utilities.formatDate(end,"JST","MM/dd HH:mm")); // end time
          sh.getRange(row, 4).setValue( ((end.getHours()*60 + end.getMinutes()) - (start.getHours()*60 + start.getMinutes())) / 60); // working time
          sh.getRange(row,5).setValue( (((end.getHours()*60 + end.getMinutes()) - (start.getHours()*60 + start.getMinutes())) / 60) * hwage ); // print wage
          total += (((end.getHours()*60 + end.getMinutes()) - (start.getHours()*60 + start.getMinutes())) / 60) * hwage; // sum total
          row += 1;
        }
      }
      total -= (sh.getRange("D3").getValue() * hwage) - sh.getRange("E3").getValue(); // calculating wage
      sh.getRange("G3").setValue(total); // print total wage
    }