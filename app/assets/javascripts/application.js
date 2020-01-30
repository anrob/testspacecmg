// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require dresssed
//= require turbolinks
//= require moment
//= require fullcalendar
//= require select2
// require highcharts
//= require Chart.bundle
//= require chartkick
//= require jquery-ui


//= require_tree .

  // $(document).ready(function() {
 $('.calendar').remove();
 $('#calendar').fullCalendar({
  editable: false,
  selectable: true,
  slotMinutes: 30,
  height: 700,
  //eventBackgroundColor: '#378006',
  textColor: '#FFFFFF',
  contentHeight: '9999',
    header: {
              left: 'prev,next today',
              center: 'title',
              right: 'month,listMonth'
          },
    events: 'calendar.json',
    eventRender: function (event, element) {
        //element.attr('href', 'javascript:void(0);');
        element.click(function() {
            $("#startTime").html(moment(event.start).format('MMM Do h:mm A'));
            $("#endTime").html(moment(event.end).format('MMM Do h:mm A'));
            $("#eventInfo").html(event.description);
            $("#eventLink").attr('href', event.url);
            $("#eventContent").dialog({ modal: true, title: event.title, width:350});
        });
    }

    })
timeFormat: 'H(:mm)' // uppercase H for 24-hour clock


 $(function() {
  $('input#search').datepicker(
    {
      changeMonth: true,
      changeYear: true,
      dateFormat: 'yy-mm-dd',
      showButtonPanel: true
    }

    );
});

//Smooch.init({ appToken: '3l6o6rjo3tt4dwntnv144o4an' });
