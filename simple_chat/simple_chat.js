var simple_chat = {};

simple_chat.server_url = function(){
    return $('#server_url').val();
}

simple_chat.nickname = function(){
    return $('#nickname').val();
}

simple_chat.validate_connection = function(){

    if(simple_chat.server_url().length == 0 || simple_chat.nickname().length == 0){
        alert('Both server url and nickname must be provided to start a chat connection');
    }
    return true;
}

simple_chat.prepare_ui_for_connection = function(ids){
    //enable
    var ids_to_enable = ['chat_panel','disconnect','message'];
    for(var i = 0; i < ids.length; i++){
       $('"#' + ids[i] + '"').attr('disabled','');
    }

    //disable
    var ids_to_disable = ['connect','server_url','nickname'];
    for(var i = 0; i < ids.length; i++){
       $('"#' + ids[i] + '"').attr('disabled','disabled');
    }

}

simple_chat.prepare_ui_for_disconnection = function(ids){
    //enable
    var ids_to_enable = ['connect','server_url','nickname'];
    for(var i = 0; i < ids.length; i++){
       $('"#' + ids[i] + '"').attr('disabled','');
    }

    //disable
    var ids_to_disable = ['chat_panel','disconnect','message'];
    for(var i = 0; i < ids.length; i++){
       $('"#' + ids[i] + '"').attr('disabled','disabled');
    }
}

simple_chat.connect = function(){
    if(!simple_chat.validate_connection()){
        return;
    }
    var server_url = simple_chat.server_url();
    var nickname = simple_chat.nickname();

    simple_chat.prepare_ui_for_connection();

    simple_chat.new_websocket();

}

simple_chat.new_websocket = function(){

    simple_chat.ws = new WebSocket(server_url);

    simple_chat.ws.addEventListener('onopen',function(){
       // log message in panel
        // send message

    })

    simple_chat.ws.addEventListener('onmessage',function(){
        //log message
    })

    simple_chat.ws.addEventListener('onclose', function(){
        //log message
        //send message
    })

}