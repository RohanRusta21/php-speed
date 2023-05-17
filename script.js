function startTest() {
    document.getElementById('start-btn').disabled = true;
    document.getElementById('result').textContent = 'Testing...';
  
    // Make an AJAX request to the PHP script to perform the speed test
    var xhr = new XMLHttpRequest();
    xhr.open('GET', 'speedtest.php', true);
    xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
        document.getElementById('result').textContent = xhr.responseText;
      }
    };
    xhr.send();
  }
  