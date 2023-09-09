import { ResourceType } from 'ember-crate/models/resource';

interface RawResource {
  title: string;
  description: string;
  author: string;
  authorTwitter?: string;
  url: string;
  createdDate: Date;
  publishDate: Date;
  isFeatured: boolean;
  type: ResourceType;
  tags: Array<string>;
}

export const resources: Array<RawResource> = [
  {
    title: 'You did WHAT with TypeScript? Glint Architecture Overview',
    description: `
      Chris Krycho and Dan Freeman explain the big picture of how the Glint project works. Glint provides #TypeScript capabilities for #EmberJS and #GlimmerJS templates.

      → How did we get here?
      → What are the pieces of the project?
      → How do they fit together?
      → Where are these pieces in the code base?
    `,
    url: 'https://www.youtube.com/watch?v=MLpP8D3cY7M',
    createdDate: new Date('2023-09-07'),
    publishDate: new Date('2023-09-09'),
    isFeatured: false,
    type: ResourceType.Video,
    tags: ['Glint', 'TypeScript'],
    author: 'Chris Krycho',
  },
  {
    title: 'Getting started with Glint and Template Imports',
    description: `
      The team I work with are big fans of TypeScript and we've invested a lot of time updating our Ember codebase to be mostly TypeScript now. This has been excellent for maintainability and allowing us to safely add features.

      We've got multiple apps we look after and the largest one is over 10 years old. Over the years we invested our time to continuous improvement. The app has extensive tests, visual regression testing and excellent continuous integration pipeline and we deploy frequently.

      As we've invested in adding TypeScript to our apps we've seen a reduction in errors that get our into production. This is excellent, but we've still been lacking the ability to use the types in our templates, so there's still a bit of guesswork.
    `,
    url: 'https://mfeckie.dev/glint-and-ember-template-imports/',
    createdDate: new Date('2023-05-18'),
    publishDate: new Date('2023-05-18'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Glint', 'Template tag components'],
    author: 'Martin Feckie',
  },
  {
    title: 'Avoiding Lifecycle in Components',
    description: `
      This is mostly going to be about did-insert, did-update, etc, aka, the @ember/render-modifiers.
      I'm writing about this, because I don't think there has been any guidance published on what to do.
    `,
    url: 'https://nullvoxpopuli.com/avoiding-lifecycle/',
    createdDate: new Date('2021-07-13'),
    publishDate: new Date('2023-05-14'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Modifiers', 'Resources'],
    author: 'NullVoxPopuli',
  },
  {
    title: 'Property initialization in Glimmer components',
    description: `
    When thinking about Ember migration from Classic components to Glimmer classes, one of the big changes is replacing init() hook with constructor(). But do we really need to mimic the old structure? Properties initialization based on args passed from parent is the most frequent case.
    `,
    url: 'https://www.linkedin.com/pulse/emberjs-property-initialization-glimmer-components-alex-vovchuk/',
    createdDate: new Date('2022-07-14'),
    publishDate: new Date('2023-05-09'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Octane', 'Glimmer'],
    author: 'Alex Vovchuk',
  },
  {
    title: 'EmberData 5.X Update',
    description: `
      An update on the future of Ember Data.
    `,
    url: 'https://blog.emberjs.com/ember-data-5-x-update-2023-04-15',
    createdDate: new Date('2023-04-15'),
    publishDate: new Date('2023-04-15'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Polaris', 'Ember Data'],
    author: 'Chris Thoburn',
    authorTwitter: 'not_runspired',
  },
  {
    title: 'AMA with the Ember.js Framework Team - EmberEurope Q1 2023',
    description: `
      Katie Gengler, Peter Wagenet, and Ed Faulkner from the framework team will give an update on the progress toward Ember 5 and Polaris and be available to answer attendees' (on-site and remote) questions.

      A comprehensive overview of the current state of Ember, highlighting the key developments in the framework and the ongoing work to make it more efficient, streamlined, and user-friendly. The presentation's emphasis on the Polaris addition and its impact on the Ember framework is expected to pave the way for a more efficient, modern, and user-friendly experience in Ember web development.
    `,
    url: 'https://www.youtube.com/watch?v=nPZkvGeQK2k',
    createdDate: new Date('2023-04-14'),
    publishDate: new Date('2023-04-14'),
    isFeatured: false,
    type: ResourceType.Video,
    tags: ['Polaris', 'Meetup'],
    author: 'Ember Europe',
    authorTwitter: 'EmberEurope',
  },
  {
    title: 'Frontend Component Architecture',
    description: `
      This is a Tutorial about Components with Slides, Video and Handbook speaking about:

      - Haptics
      - Patterns
      - Types
      - Classification
      - Styling
      - Practical Use
    `,
    url: 'https://gos.si/blog/frontend-component-architecture/',
    createdDate: new Date('2022-04-13'),
    publishDate: new Date('2023-03-30'),
    isFeatured: false,
    type: ResourceType.Tutorial,
    tags: ['Components', 'Architecture'],
    author: 'Thomas Gossmann',
    authorTwitter: 'unistyler',
  },
  {
    title: 'Limber: a Glimdown Playground',
    description:
      'Limber mixes markdown and glimmer syntax to provide an easy way to make examples, reproductions, and learn Glimmer/Ember',
    url: 'https://limber.glimdown.com',
    createdDate: new Date('2021-03-20'),
    publishDate: new Date('2023-03-30'),
    isFeatured: false,
    type: ResourceType.Tutorial,
    tags: ['Polaris'],
    author: 'NullVoxPopuli',
  },
  {
    title: 'Automated Visual Testing in Ember - Ember Fest 2022',
    description:
      'Ember gives developers the power to write tests and be confident about deployments. But have you ever made a change that broke your application layout while still passing all tests?\n\nIn this talk we’ll explore the world of visual testing to keep your app pixel perfect and have that peace of mind when deploying. By the end, you should be able to understand how visual testing works and how to set it up in a reliable way, even for applications with complex data structures and time dependent logic.',
    url: 'https://www.youtube.com/watch?v=m90m9lVEFlY',
    createdDate: new Date('2022-10-11'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.Video,
    tags: ['EmberFest', 'Conference'],
    author: 'Ignace Maes',
    authorTwitter: 'Ignace_Maes',
  },
  {
    title: 'Ember.js Octane vs Classic Cheat Sheet',
    description:
      "This guide is a cheat sheet for using Ember.js Octane. It doesn't cover everything, but it should get you started! PRs welcome at the GitHub repository.",
    url: 'https://ember-learn.github.io/ember-octane-vs-classic-cheat-sheet/',
    createdDate: new Date('2020-10-11'),
    publishDate: new Date('2023-02-25'),
    isFeatured: true,
    type: ResourceType.Documentation,
    tags: ['Octane'],
    author: 'Ember Learning Team',
    authorTwitter: 'EmberJS',
  },
  {
    title: 'Why Ember: Reasons to use Ember',
    description:
      "Ember is a JavaScript framework that provides everything you need to build a modern web application. While there are lots of reasons to use Ember, the number one reason is this: you'll gain developer productivity by escaping the churn of the hype cycle.",
    url: 'https://whyember.com/',
    createdDate: new Date('2020-10-11'),
    publishDate: new Date('2023-02-25'),
    isFeatured: true,
    type: ResourceType.Website,
    tags: ['Framework Comparison'],
    author: 'Melanie Sumner',
  },
  {
    title: 'Ember.js demo running on Vite',
    description:
      "This is Ember application running only on Vite. It's TypeScript'ed by default. It uses vite to build the app. tailwind used for styling.",
    url: 'https://github.com/lifeart/demo-ember-vite',
    createdDate: new Date('2020-10-11'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.GitHub,
    tags: ['Vite', 'TypeScript'],
    author: 'Alex Kanunnikov',
  },
  {
    title: 'Ember + Modern CSS',
    description:
      'Forget everything you know about CSS + Ember. If you use any of the following ember-postcss, ember-css-modules, ember-component-css then this guide is for you.',
    url: 'https://discuss.emberjs.com/t/ember-modern-css/19614',
    createdDate: new Date('2022-07-13'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.Tutorial,
    tags: ['CSS'],
    author: 'evoactivity',
  },
  {
    title: 'Ember Crate: source code',
    description: `The source code for this website.
      🐹 Ember 4.8
      ⚡️ Prember and Fastboot for Static Site Generation (SSG)
      📦 Embroider build system
      🎨 Tailwind CSS (with Flowbite)
      ✅ TypeScript
      🔍 Glint (template validation)
      ✨ Template tag components
      📏 ESLint and Prettier
    `,
    url: 'https://github.com/EmberCrate/website',
    createdDate: new Date('2023-02-25'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.GitHub,
    tags: ['Template tag components', 'TypeScript', 'Open Source'],
    author: 'Ignace Maes',
  },
  {
    title: "LinkedIn's Octane migration guides",
    description:
      "These guides are a lightly tweaked version of the guides I developed for LinkedIn's flagship app's migration to Ember Octane in late 2020. (I removed all the LinkedIn-specific bits, and added a couple new links, but that’s it!) The migration ran in earnest in 2021, with most of the millions of lines of code fully migrated by mid-2021.",
    url: 'https://github.com/chriskrycho/octane-migration-guides',
    createdDate: new Date('2023-02-15'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.GitHub,
    tags: ['Octane', 'Guide', 'Migration'],
    author: 'Chris Krycho',
  },
  {
    title: 'Invoking React components from your Ember apps',
    description:
      "In this post, we are going to take a look at how to invoke React components from an Ember.js application. Before diving into the topic let's have a quick intro about both these frameworks (or library) and look at why we want to integrate React into an Ember codebase first.",
    url: 'https://dev.to/rajasegar/invoking-react-components-from-your-ember-apps-3fgg',
    createdDate: new Date('2023-01-31'),
    publishDate: new Date('2023-02-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['React', 'Embroider'],
    author: 'Rajasegar Chandran',
  },
  {
    title: 'Migrating an Ember addon to the v2 format',
    description:
      'On the road to Polaris edition, one major change has been announced in the Ember JS world: Embroider, a next-gen build system which aims to bridge the gap between Ember and the wider JS ecosystem, yielding many benefits once it’s adopted, as mentioned in its RFC:',
    url: 'https://medium.com/@phndiaye/migrating-an-ember-addon-to-the-v2-format-1d62e45384d3',
    createdDate: new Date('2023-02-26'),
    publishDate: new Date('2023-02-26'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Embroider', 'Polaris'],
    author: 'Philippe Ndiaye',
  },
  {
    title: 'Angular Signals in #EmberJS in 16 lines',
    description: `A code comparison of how Signals can be implemented in Ember using Glimmer Autotracking.`,
    url: 'https://twitter.com/nullvoxpopuli/status/1628428090480238592',
    createdDate: new Date('2023-02-22'),
    publishDate: new Date('2023-02-26'),
    isFeatured: false,
    type: ResourceType.Twitter,
    tags: ['Framework Comparison'],
    author: 'NullVoxPopuli',
  },
  {
    title: 'Rock & Roll with Ember.js',
    description:
      "Ember.js is a kick-ass framework for building web applications. It's the only tool you need (on the client-side) to craft your idea into a working wonder. However, its strong opinions and heavy reliance on “convention over configuration” can give developers who are new to the framework a hard time figuring out how Ember wants them to do things. This book helps to overcome that initial frustration, and help you grok Ember a lot faster, by pinpointing the core concepts and explaining them in detail. Once you understand them you are on your way to taming and mastering Ember.js. So don't fear the learning curve.",
    url: 'https://balinterdi.com/rock-and-roll-with-emberjs/',
    createdDate: new Date('2023-02-22'),
    publishDate: new Date('2023-02-27'),
    isFeatured: true,
    type: ResourceType.Book,
    tags: ['Learning'],
    author: 'Balint Erdi',
  },
  {
    title: 'Ember.js: The Documentary',
    description: `Starring Yehuda Katz and Tom Dale  (co-creators of Ember.js), as well as many other big names from the #Ember community, "Ember.js: The Documentary" explores why and how #Emberjs came to be, the pioneers behind its creation and the life-altering decisions that go into making #opensource software.`,
    url: 'https://www.youtube.com/watch?v=Cvz-9ccflKQ',
    createdDate: new Date('2019-02-11'),
    publishDate: new Date('2023-02-28'),
    isFeatured: true,
    type: ResourceType.Video,
    tags: ['Open Source'],
    author: 'Honeypot',
  },
  {
    title: 'React vs. Ember.js',
    description: `A brief comparison of choice of framework between React and Ember.js.`,
    url: 'https://stackoverflow.com/questions/72599116/emberjs-vs-react/72601933#72601933',
    createdDate: new Date('2022-07-13'),
    publishDate: new Date('2023-02-28'),
    isFeatured: false,
    type: ResourceType.StackOverflow,
    tags: ['Framework Comparison'],
    author: 'NullVoxPopuli',
  },
  {
    title: 'Start a new Ember.js project - in browser',
    description: `Boot a development environment and start a new Ember.js project, directly in your browser. This requires your browser to support web container.`,
    url: 'http://new.emberjs.com',
    createdDate: new Date('2023-03-01'),
    publishDate: new Date('2023-03-01'),
    isFeatured: true,
    type: ResourceType.Website,
    tags: ['IDE'],
    author: 'Stackblitz',
  },
  {
    title: 'Ember Polaris Sketchwork',
    description: `Ideas about what the Polaris edition of Ember should look like.`,
    url: 'https://wycats.github.io/polaris-sketchwork/proposals.html',
    createdDate: new Date('2023-03-09'),
    publishDate: new Date('2023-03-09'),
    isFeatured: false,
    type: ResourceType.Website,
    tags: ['Polaris'],
    author: 'Yehuda Katz',
  },
  {
    title: 'Component Party: framework comparison',
    description: `Compare component syntax across different frontend frameworks, including Ember.js.`,
    url: 'https://component-party.dev/',
    createdDate: new Date('2023-03-09'),
    publishDate: new Date('2023-03-09'),
    isFeatured: false,
    type: ResourceType.Website,
    tags: ['Framework Comparison'],
    author: 'Mathieu Schimmerling',
  },
  {
    title: 'Install Tailwind CSS with Ember.js',
    description: `Official documentation on how to set up Tailwind CSS for Ember.js.`,
    url: 'https://tailwindcss.com/docs/guides/emberjs',
    createdDate: new Date('2023-03-23'),
    publishDate: new Date('2023-03-23'),
    isFeatured: false,
    type: ResourceType.Documentation,
    tags: ['Tailwind', 'Tutorial'],
    author: 'Tailwind',
  },
  {
    title: 'Interactive Glimmer tutorial',
    description: `Learn Glimmer and template tag components in an interactive way.`,
    url: 'https://tutorial.glimdown.com/',
    createdDate: new Date('2023-03-25'),
    publishDate: new Date('2023-03-25'),
    isFeatured: true,
    type: ResourceType.Tutorial,
    tags: ['Learning', 'Tutorial', 'Template tag components'],
    author: 'NullVoxPopuli',
  },
  {
    title: 'Polaris, Starbeam, and the Future of Ember with Godfrey Chan',
    description: `
      In 2022, the future of Ember is taking shape thanks to developers like Godfrey Chan. Alongside Yehuda Katz and other engineers, Godfrey’s working on a new edition of Polaris. The project has three main goals: to align Ember with the modern npm packaging system, continue to invest and innovate in reactivity, and encourage universal design principles.

      Like many developers, Godfrey came to Ember from Rails. Months after chatting with Yehuda and Tom Dale at EmberConf, Godfrey was hired at Tilde and thrown into the Ember deep end. Today, Godfrey’s focused on big picture developments, tackling lofty goals like developing an Ember model to navigate JavaScript classes.

      In this episode, Godfrey talks with Chuck and Robbie about what’s to come for Polaris, solving major developer headaches, Godfrey’s philosophy on frameworks, top use cases for solutions like Starbeam, and why these innovations are necessary in 2022.
    `,
    url: 'https://www.whiskeywebandwhatnot.fm/polaris-starbeam-and-the-future-of-ember-with-godfrey-chan/',
    createdDate: new Date('2022-06-30'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Podcast,
    tags: ['Polaris', 'Starbeam'],
    author: 'Whiskey Web and Whatnot',
  },
  {
    title: 'Bringing Types to Ember with Chris Krycho',
    description: `
      In early 2017, Chris Krycho was working at one of the few startups using Ember, searching for a way to bring types to the emerging language. His primary goal became solving semantic versioning for TS. As Chris kept iterating, striving to combine multiple programming worlds, other engineers joined him in the pursuit until eventually, the Ember TypeScript Core team was born.

      Today, Chris is a lead engineer at LinkedIn, a father, husband, runner, music composer, and whiskey enthusiast. His current goal is to ensure Ember Polaris has first-class TypeScript support. Aside from offering new dad advice to Robbie, Chris also describes what can become a superpower for new developers willing to work.

      In this episode, Chris talks with Chuck and Robbie about best-case uses for TypeScript, a defense of complicated library code, Chris’ ultimate goal with software engineering, and his advice for programmers on the rise.
    `,
    url: 'https://www.whiskeywebandwhatnot.fm/bringing-types-to-ember-with-chris-krycho/',
    createdDate: new Date('2022-05-19'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Podcast,
    tags: ['TypeScript'],
    author: 'Whiskey Web and Whatnot',
  },
  {
    title: 'Ember Template Imports',
    description: `
      Blog series about template tag components.
    `,
    url: 'https://v5.chriskrycho.com/journal/ember-template-imports/',
    createdDate: new Date('2021-10-12'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Template tag components'],
    author: 'Chris Krycho',
  },
  {
    title: 'How Autotracking Works',
    description: `
      This blog post is the third in a series on autotracking, the new reactivity system in Ember.js. I also discuss the concept of reactivity in general, and how it manifests in JavaScript.
    `,
    url: 'https://www.pzuraq.com/blog/how-autotracking-works',
    createdDate: new Date('2020-02-26'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Octane', 'Reactivity'],
    author: 'Chris Garrett',
  },
  {
    title: 'Ember For React Developers',
    description: `
    Both React and Ember conceptually can provide the solutions to the same problems. React has historically only been the component layer of applications, but that is changing as React evolves, and gradually adds more features that aim to make developing applications with React more pleasant. Ember offers a bit more out of the box, and aims to have a solution or pattern for most situations – with additional tooling, conventions, architectural patterns. The goal is to abstract away the menial differences between apps and reduce friction when switching projects.
    `,
    url: 'https://www.notion.so/Ember-For-React-Developers-556a5d343cfb4f8dab1f4d631c05c95b',
    createdDate: new Date('2023-03-25'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['React', 'Framework Comparison'],
    author: 'Ember Atlas',
  },
  {
    title: 'Ember For Vue Developers',
    description: `
      Both Vue and Ember offer solutions to the same types of problems. Both try to offer a good amount out of the box, and aim to have a solution or pattern for most situations. The goal is to abstract away the unimportant differences between apps and reduce friction when switching projects.
    `,
    url: 'https://www.notion.so/Ember-for-Vue-Developers-12570a04b02a453da73a6b8d14736c5e',
    createdDate: new Date('2023-03-25'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Vue', 'Framework Comparison'],
    author: 'Ember Atlas',
  },
  {
    title: 'The Ember Atlas',
    description: `
      A place for all things Ember: processes, best practices, upgrade guides, and more!
    `,
    url: 'https://www.notion.so/emberatlas/The-Ember-Atlas-4094f81c86c34badb4a562ed29414ae1',
    createdDate: new Date('2023-03-25'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Website,
    tags: ['Learning'],
    author: 'Ember Atlas',
  },
  {
    title: 'Embroider: from zero to route splitting in 3.5 weeks',
    description: `
      I spent the last 3.5 weeks or so switching our primary app over to using embroider, and getting it working with all the optimized settings plus code splitting across routes. Hopefully reading about my experience will help others through the same process, and help accelerate polishing and adoption of embroider within the Ember ecosystem.
    `,
    url: 'https://dev.to/bendemboski/embroider-from-zero-to-route-splitting-in-3-5-weeks-5abo',
    createdDate: new Date('2021-05-19'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Embroider'],
    author: 'Ben Demboski',
  },
  {
    title: 'EmberConf 2022 - Keynote Part 1 by Yehuda Katz',
    description: `
      The keynote of EmberConf 2022, the flagship Ember.js conference.
    `,
    url: 'https://www.youtube.com/watch?v=OgpnkR-oKec',
    createdDate: new Date('2022-04-20'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Video,
    tags: ['EmberConf', 'Conference'],
    author: 'Yehuda Katz',
  },
  {
    title: 'The road from Ember classic to Glimmer components',
    description: `
      In late 2019, the Ember.js Octane edition was released which included a new way of writing components: Glimmer components. Components now extend the component class from the Glimmer package instead of Ember. Besides this minor difference in importing there’s a large difference in functionality. This article will go over the differences, reasons why you would want to upgrade, and an upgrade strategy to tackle this in large codebases.
    `,
    url: 'https://dev.to/otainsight/the-road-from-ember-classic-to-glimmer-components-4hlc',
    createdDate: new Date('2023-02-02'),
    publishDate: new Date('2023-03-25'),
    isFeatured: false,
    type: ResourceType.Article,
    tags: ['Octane'],
    author: 'Ignace Maes',
  },
  {
    title: 'The Ember.js Twitter community',
    description: `
      Some of the best and most experienced frontend developers in the world. One of the best and oldest frontend frameworks in history.
    `,
    url: 'https://twitter.com/i/communities/1497993661216350210',
    createdDate: new Date('2022-02-22'),
    publishDate: new Date('2023-03-26'),
    isFeatured: false,
    type: ResourceType.Twitter,
    tags: ['Community'],
    author: 'Izel Nakri',
  },
  {
    title: 'Ember Component Patterns',
    description: `
      This guide intends to be aligned with the idioms and syntax of the Octane edition of Ember.
      The goal of this guide is to cultivate a set of patterns that are practical and can reasonably be used by any Ember developer in their application. It is intended to be made publicly available with the release of Ember Octant.
    `,
    url: 'https://emberjs-1.gitbook.io/ember-component-patterns/',
    createdDate: new Date('2021-08-27'),
    publishDate: new Date('2023-03-26'),
    isFeatured: false,
    type: ResourceType.Documentation,
    tags: ['Guide', 'Octane'],
    author: 'Melanie Sumner',
  },
  {
    title: 'Ember.js tutorial for beginners in 2022',
    description: `
      This guide intends to be aligned with the idioms and syntax of the Octane edition of Ember.
      The goal of this guide is to cultivate a set of patterns that are practical and can reasonably be used by any Ember developer in their application. It is intended to be made publicly available with the release of Ember Octant.
    `,
    url: 'https://www.youtube.com/watch?v=eQUvN9Ujs1s&list=PLk51HrKSBQ88wDXgPF-QLMfPFlLwcjTlo',
    createdDate: new Date('2021-05-29'),
    publishDate: new Date('2023-03-26'),
    isFeatured: false,
    type: ResourceType.Video,
    tags: ['Tutorial', 'Octane'],
    author: 'Shawn Chen',
  },
  {
    title: 'Tauri + Ember starter template',
    description: `
      This template should help get you started developing with Tauri and EmberJs.
    `,
    url: 'https://github.com/tdwesten/ember-tauri-starter',
    createdDate: new Date('2023-03-08'),
    publishDate: new Date('2023-04-03'),
    isFeatured: false,
    type: ResourceType.GitHub,
    tags: ['Tauri', 'Desktop'],
    author: 'Thomas van der Westen',
    authorTwitter: 'tdwesten',
  },
  {
    title: 'The official Ember Community Discord',
    description: `
      Ask questions and chat with community members in real-time.
    `,
    url: 'https://discord.gg/emberjs',
    createdDate: new Date('2018-01-01'),
    publishDate: new Date('2023-04-03'),
    isFeatured: true,
    type: ResourceType.Website,
    tags: ['Community'],
    author: 'Discord',
  },
  {
    title: 'Tailwind CSS for Ember Power Select',
    description: `
      Ember Power Select is a powerful Ember addon for working with selects. This is a Tailwind CSS plugin for styling both <PowerSelect>, <PowerSelectMultiple> and all the options related to these.
    `,
    url: 'https://josemarluedke.github.io/tailwindcss-ember-power-select/',
    createdDate: new Date('2020-12-20'),
    publishDate: new Date('2023-04-18'),
    isFeatured: false,
    type: ResourceType.Website,
    tags: ['Addon', 'Tailwind'],
    author: 'Josemar Luedke',
    authorTwitter: 'josemarluedke',
  },
];
