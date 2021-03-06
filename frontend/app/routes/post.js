import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return this.store.findRecord('post', params.id)
  },
  actions: {
    updatePost(model, params) {
      Object.keys(params).forEach( (key)=> {
        if(params[key] !== undefined) {
          model.set(key, params[key]);
        }
      });
      model.save();
    },
    deletePost(model) {
      this.store.findRecord('post', model.id).then( (post) => {
        post.destroyRecord();
      });
      this.transitionTo('posts');
    }
  }
});
