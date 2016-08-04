//= require flipclock.min
function CountDownTimer(dt)
{
  var currentDate = new Date();
  var futureDate  = new Date(dt);
  var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;
  if(diff>0)
  {
    $(document).ready(function()
    {
      var clock = $('.clock').FlipClock(diff,{
        clockFace: 'DailyCounter',
        showSeconds: false,
        autoStart: true,
        defaultLanguage: 'french'
      });
    });
  }
  else {
    $('.clock').text("Hi honey !")
  }
}
