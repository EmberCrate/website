import { LinkTo } from '@ember/routing';
import { TOC } from '@ember/component/template-only';
import ResourceDetails from 'ember-crate/components/resource-details';

const Resource: TOC<{ Args: { model: any } }> = <template>
  <LinkTo
    @route='resources'
    class='mr-8 mb-2 flex text-gray-500 transition-colors duration-200 hover:text-gray-900'
  >
    <span aria-hidden='true' class='mr-2'>←</span>Back to resources
  </LinkTo>

  <ResourceDetails @resource={{@model}} />
</template>;

export default Resource;
