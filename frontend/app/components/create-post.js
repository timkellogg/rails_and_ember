import Ember from 'ember';

export default Ember.Component.extend({
  formShowing: false,

  actions: {
    showForm() {
      this.toggleProperty('formShowing')
    },
    createPost() {
      var params = {
        title: this.get('title'),
        body: this.get('body')
      };
      this.sendAction('createPost', params);
    }
  }
});
