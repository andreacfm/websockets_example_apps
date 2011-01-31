<!DOCTYPE html>
<html>
<head>
    <title>Railo Websockects Demo Apps - Data Push</title>
    <script src="jquery-1.4.2.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function(){
        ws = new WebSocket('ws://localhost:10126');
        ws.onmessage = function(ev){
            console.log(ev.data);
        }
    })
    </script>
</head>
<body>

<h1>Data Push Demo</h1>

<h2>Stock Exchange</h2>

<p><a href="data.cfm">Start pushing</a> || <a href="data.cfm">Stop pushing</a></p>

<table>
    <thead>
        <tr>
            <td>Code</td>
            <td>Company Name</td>
            <td>Value</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>GOOG</td>
            <td>Google</td>
            <td><span id="GOOG"></span></td>
        </tr>
        <tr>
            <td>APPL</td>
            <td>Apple</td>
            <td><span id="APPL"></span></td>
        </tr>
        <tr>
            <td>MSFT</td>
            <td>Micorsoft</td>
            <td><span id="MSFT"></span></td>
        </tr>
        <tr>
            <td>AMZN</td>
            <td>Amazon</td>
            <td><span id="AMZN"></span></td>
        </tr>
    </tbody>
</table>

</body>
</html>


