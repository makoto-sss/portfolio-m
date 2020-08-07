App.delete = App.cable.subscriptions.create("DeleteChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    var id;
    id = "#" + data['id'];
    console.log(id);
    return $(id).remove();
  },

  delete: function(id) {
    return this.perform('delete', { id: id });
  }

});

(function() {

  $(document).on('click', '.delete-btn', function(event) {
    return App["delete"]["delete"](event.target.id);
  });

}).call(this);


