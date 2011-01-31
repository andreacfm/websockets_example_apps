<cfscript>
param name="gateway" default="stocks";
param name="url.action" default="start";
stocks = ['GOOG','APPL','MSFT','AMZN'];

if(url.action eq 'start'){
    thread action="run" name="stock_thread" stocks="#stocks#"{
        while(true){
            message = {};
            for(item in attributes.stocks){
                message[item] = randRange(1,10);
            }
            data = {message : serializeJSON(message)}
            sendGatewayMessage(gateway,data);
            sleep(1000);
        }
    }
    writeOutput('<h3>Data push started</h3>');
}
else if(url.action eq "stop"){
    thread action="terminate" name="stock_thread";
    writeOutput('<h3>Data push stopped</h3>');
}else{
    writeOutput('<h3>Error. Possible actions are "start,stop"</h3>');
}


</cfscript>