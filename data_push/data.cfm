<cfsetting requesttimeout="120">
<cfscript>
param name="gateway" default="stocks";
stocks = ['GOOG','APPL','MSFT','AMZN'];

thread action="run" name="stock_thread" stocks="#stocks#"{
    while(true){
        message = {};
        for(item in attributes.stocks){
            message[item] = randRange(1,5);
        }
        data = {message : serializeJSON(message)}
        sendGatewayMessage(gateway,data);
        sleep(2000);
    }
}
writeOutput('<h3>Data push started</h3>');
</cfscript>