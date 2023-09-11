import RouteTemplate from 'ember-route-template';
import IndexPage from 'ember-crate/components/routes/index-page';
import pageTitle from 'ember-page-title/helpers/page-title';

interface MyRouteSignature {
  Args: {
    model: string;
  };
}

export default RouteTemplate<MyRouteSignature>(<template>
  {{pageTitle
    'EmberCrate - The open collection for all resources on Ember.js'
    replace=true
  }}

  <IndexPage @model={{@model}} />
</template>);
