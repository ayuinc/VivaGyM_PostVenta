// $(document).ready(function(){
//   if ($(window).width() < 768) {
//       $('#full-calendar').fullCalendar({
//         defaultView: "agendaDay",
//         allDaySlot: false,
//         minTime: 8,
//         maxTime: 22,
//         timeFormat: {
//           agenda: 'h:mm{ - h:mm}TT'
//         },
//         header: {
//           left: 'prev,next today',
//           center: 'title',
//           right: 'month,agendaDay'
//         },
//         buttonText: {
//           prev:     '&lsaquo;', // <
//           next:     '&rsaquo;', // >
//           prevYear: '&laquo;',  // <<
//           nextYear: '&raquo;',  // >>
//           today:    'Ver el día de hoy',
//           month:    'mes',
//           week:     'semana',
//           day:      'día'
//         },
//         columnFormat: {
//           month: 'ddd',    // Mon
//           week: 'ddd d/M', // 9/7 Mon
//           day: 'dddd M/d'  // 9/7 Monday 
//         },
//         monthNamesShort: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
//         dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
//         dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
//         editable: false,
//         hiddenDays: [0, 6]
//       });
//     } else {
//       $('#full-calendar').fullCalendar({
//         defaultView: "month",
//         allDaySlot: false,
//         minTime: 8,
//         maxTime: 22,
//         timeFormat: {
//           agenda: 'h:mm{ - h:mm}TT'
//         },
//         header: {
//           left: 'prev,next today',
//           center: 'title',
//           right: 'month,basicWeek'
//         },
//         buttonText: {
//           prev:     '&lsaquo;', // <
//           next:     '&rsaquo;', // >
//           prevYear: '&laquo;',  // <<
//           nextYear: '&raquo;',  // >>
//           today:    'Ver el día de hoy',
//           month:    'mes',
//           week:     'semana',
//           day:      'día'
//         },
//         columnFormat: {
//           month: 'ddd',    // Mon
//           week: 'ddd d/M', // 9/7 Mon
//           day: 'dddd M/d'  // 9/7 Monday 
//         },
//         monthNamesShort: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
//         dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
//         dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
//         editable: false,
//         hiddenDays: [0, 6]
//       });
//     }
//   }
// );