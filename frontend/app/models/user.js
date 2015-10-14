export default DS.Model.extend({
  email: DS.attr(),
  avatarUrl: DS.attr(),
  posts: DS.hasMany('post', { async: true })
});
