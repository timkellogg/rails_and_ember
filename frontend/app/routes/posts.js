import Ember from 'ember';

export default Ember.Route.extend({
  model() {
    return this.store.findAll('post')
  },
  
  actions: {
    createPost(params) {
      this.store.createRecord('post', {
        title: params.title,
        body: params.body,
        createdAt: new Date(),
        updatedAt: new Date()
      }).save();
    }
  }
});
