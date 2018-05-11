 google.charts.load('current', {'packages':['timeline']});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var container = document.getElementById('timeline');
        var chart = new google.visualization.Timeline(container);
        var dataTable = new google.visualization.DataTable();

        dataTable.addColumn({ type: 'string', id: 'Medicine/Reaction' });
        dataTable.addColumn({ type: 'string', id: 'label' });
        dataTable.addColumn({ type: 'date', id: 'Start' });
        dataTable.addColumn({ type: 'date', id: 'End' });


        get_events().forEach(function(row){
          dataTable.addRows([[row.id, row.label, row.start, row.end]])
        })

        get_medicines().forEach(function(row){
          dataTable.addRows([[row.id, row.label, row.start, row.end]])
        })

        chart.draw(dataTable);
      }

function get_data(){
  all_data = [];
  all_data.push(get_events());
  all_data.push(get_medicines());

  return all_data.reduce((acc, val) => acc.concat(val), []);;
}


function get_events(){
  var events = []
  $(".event_row").each(function(row){
    var row_id = $(".event_row")[row].id
    var date_array = $("#"+row_id).find("td.date").html().split("-")
    var start = new Date(date_array[0], date_array[1], date_array[2])

    var end = new Date(date_array[0], date_array[1], start.getDate() + 1)
    var label = $("#"+row_id).find("td.reaction").html()
    events.push({id: row_id, label: label, start: start, end: end})
  });
  return events;
}


function get_medicines(){
  var medicines = []
  $(".medicine_row").each(function(row){
    var row_id = $(".medicine_row")[row].id
    var start_string = $("#"+row_id).find("td.start").html().split("-")
    var start = new Date(start_string[0], start_string[1], start_string[2])
    var end_string = $("#"+row_id).find("td.end").html().split("-")
    var end = new Date(end_string[0], end_string[1], end_string[2])
    var label = $("#"+row_id).find("td.antibiotic").html()
    medicines.push({id: row_id, label: label, start: start, end: end})
  });
  return medicines;
}