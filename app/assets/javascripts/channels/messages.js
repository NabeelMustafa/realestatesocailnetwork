//app/assets/javascripts/channels/messages.js
function createMessageChannel() {
  App.messages = App.cable.subscriptions.create({
        channel: 'MessagesChannel', chat_id: parseInt($("#message_chat_id").val())
        },
        {
        received: function(data) {
          $("#messages").removeClass('hidden')
          return $('#messages').append(this.renderMessage(data));
        },
        renderMessage: function(data) {
          const id = parseInt($("#myid").text());
          $('.msg_history1').stop ().animate ({
            scrollTop: $('.msg_history1')[0].scrollHeight
          });
          $(".write_msg").val("")

    return id == data.user ? ( 
      document.querySelector('.msg_history1').innerHTML += (`<div class="bubble me">
      ${data.message}
    </div>`)
      ): (document.querySelector('.msg_history1').innerHTML += (`<div class="bubble you">
      ${data.message}
    </div>`));
  },
      });
return App.messages;
}
