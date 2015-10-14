export default DS.Model.extend({
  title: DS.attr(),
  context: DS.attr(),
  url: DS.attr(),
  assetable: DS.belongsTo('assetable', {polymorphic: true})
});

