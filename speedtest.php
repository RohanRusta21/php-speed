<?php
// Execute the speed test command and get the output
$command = '/usr/bin/speedtest-cli --simple';
$output = shell_exec($command);

// Process the output and extract the relevant speed information
$lines = explode("\n", trim($output));
$ping = explode(" ", $lines[0])[1];
$download = explode(" ", $lines[1])[1];
$upload = explode(" ", $lines[2])[1];

// Format the results as a string
$result = "Ping: " . $ping . " ms<br>";
$result .= "Download Speed: " . $download . " Mbps<br>";
$result .= "Upload Speed: " . $upload . " Mbps";

echo $result;
?>
