### Writing Markup with JSX

JSX is a extension for JS that allows me to write HTML-like syntax inside js files.

#### The rules of JSX

1 - Return a single root element

I can use a <div /> or <></> (Fragment)

2 - Close all tags

In JSX all tags should be closed. Even <img /> tags.

3 - camelCase in most of the things

All html attributes are written in camelCase in JSX. (i.e stroke-width become strokeWidth). Classes are defined using the className attribute. (this because JSX is converted to js and class is a reserved word)

> For historical reasons, aria-* and data-* attributes are written like HTML, with dashes.