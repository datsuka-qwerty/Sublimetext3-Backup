function myFunction() {
      var ss_id = "シートのID";
      var sh_name = "シートの名前";
      var sh = SpreadsheetApp.openById(ss_id).getSheetByName(sh_name);
      var calendar = CalendarApp.getCalendarById("カレンダーのID(メールアドレス)");
      sh.getRange("A6:E999").clear(); // clear workspace
      var start = new Date(sh.getRange("A3").getValue()); // get counting date
      var end = new Date(sh.getRange("B3").getValue());
      end.setDate(end.getDate()+1);
      var srch = sh.getRange("F3").getValue();
      var events = calendar.getEvents(start, end); // get events
      var total = 0;
      var row = 6;
      var hwage = sh.getRange("C3").getValue(); // get hourly wage
      // printing events
      for(var i = 0; i < events.length; i++) {
        if (events[i].getTitle() === srch){
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
      total -= (sh.getRange("D3").getValue() * hwage) + sh.getRange("E3").getValue(); // calculating wage
      sh.getRange("H3").setValue(total); // print total wage
    }
