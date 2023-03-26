import Header from 'ember-crate/components/sections/header';
import TwitterBanner from 'ember-crate/components/sections/twitter-banner';
import Footer from 'ember-crate/components/sections/footer';
import { TOC } from '@ember/component/template-only';

const Application: TOC<{ Blocks: { default: [] } }> = <template>
  <Header />
  {{yield}}
  <TwitterBanner />
  <Footer />
</template>;

export default Application;
