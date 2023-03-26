import { module, test } from 'qunit';
import { setupTest } from 'ember-crate/tests/helpers';

module('Unit | Model | tag', function (hooks) {
  setupTest(hooks);

  // Replace this with your real tests.
  test('it exists', function (assert) {
    let store = this.owner.lookup('service:store');
    let model = store.createRecord('tag', {});
    assert.ok(model);
  });
});
