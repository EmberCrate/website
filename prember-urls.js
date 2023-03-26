const jsdom = require('jsdom');
const { JSDOM } = jsdom;

module.exports = async function ({ visit }) {
  let urls = new Set([
    '/',
    '/resources',
    '/about',
    '/sitemap',
    '/add-resource',
  ]);

  // Here we exercise the ability to make requests against the
  // fastboot app in order to discover more urls
  let page = await visit('/sitemap');
  if (page.statusCode === 200) {
    let html = await page.html();
    let dom = new JSDOM(html);
    for (let aTag of [...dom.window.document.querySelectorAll('a')]) {
      if (aTag.href && aTag.href.startsWith('/resources/')) {
        urls.add(aTag.href);
      }
    }
  }

  return [...urls];
};
