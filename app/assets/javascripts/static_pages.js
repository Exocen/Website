function CountDownTimer(dt, id)
{
  var end = new Date(dt);

  var _second = 1000;
  var _minute = _second * 60;
  var _hour = _minute * 60;
  var _day = _hour * 24;
  var timer;

  function showRemaining() {
    var now = new Date();
    var distance = end - now;
    if (distance < 0) {

      clearInterval(timer);
      document.getElementById(id).innerHTML = 'Boujour mon amour !';

      return;
    }
    var days = Math.floor(distance / _day);
    var hours = Math.floor((distance % _day) / _hour);
    var minutes = Math.floor((distance % _hour) / _minute);
    var seconds = Math.floor((distance % _minute) / _second);

    var countdown = document.getElementById(id);

    if (!countdown) return;

    countdown.innerHTML = days + ' Jours ';
    countdown.innerHTML += hours + ' hrs ';
    countdown.innerHTML += minutes + ' mins ';
    countdown.innerHTML += seconds + ' secs';
  }

  timer = setInterval(showRemaining, 1000);
}