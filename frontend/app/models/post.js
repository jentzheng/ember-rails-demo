export default DS.Model.extend({
  title: DS.attr(),
  body: DS.attr(),
  user: DS.belongsTo('user', { async: true }),
  featured: DS.belongsTo('asset-image', { polymorphic: true }),
  images: DS.hasMany('asset-images', { polymorphic: true }),
  audios: DS.hasMany('asset-audios', { polymorphic: true })
});
