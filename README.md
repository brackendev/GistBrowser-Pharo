GistBrowser-Pharo
=================

**Interact with [GitHub Gist](https://gist.github.com) on Pharo.**

Browse, create, edit, and fork Gists via the Gist Browser, create Gists from Playgrounds, [Gist Press](https://www.gist-press.com/) support, and more.

* [Pharo 8.0](http://pharo.org/) reference platform.

## Screenshot

<img src="https://github.com/brackendev/GistBrowser-Pharo/raw/master/screenshot1.png" alt="Screenshot" width="702"/>

## Installation

1. Setup a personal access token for Pharo at https://github.com/settings/tokens/new. Use this token for the Iceberg github.com plain text credentials password. 

2. In a Playground, _Do it_:

```smalltalk
Metacello new
  repository: 'github://brackendev/GistBrowser-Pharo';
  baseline: 'GistBrowser';
  onConflict: [ :ex | ex useIncoming ];
  onUpgrade: [ :ex | ex useIncoming ];
  onDowngrade: [ :ex | ex useLoaded ];
  ignoreImage;
  load.
```

## Example Usage

Note: In Gist Browser, after entering text, it needs to be accepted with the "accept" keybind, usually *Meta + s*.

#### ◼︎ Open Gist Browser from Tools

* Interact with Gists using the Gist Browser accessible via the Tools menu.

#### ◼︎ Open Gist Browser from a Playground

In a Playground, _Do it_:

```smalltalk
"Open with the Iceberg plain text github.com username"
GistBrowser open.
```
    
...or, _Do it_:
    
```smalltalk
"Open with a custom GitHub username"
GistBrowser open: 'brackendev'.
```

#### ◼︎ Create a Gist from a Playground

* Similar to the Playground "Remote publish" (to share code via [Shared Smalltalk Workspaces](http://ws.stfx.eu)), create a Gist from a Playground via the GitHub button in the Playground toolbar.

    <img src="https://github.com/brackendev/GistBrowser-Pharo/raw/master/screenshot2.png" alt="Screenshot" width="685"/>

### More Example Usage

#### ◼︎ Create a Gist

Gist Browser:

1. Click the _Add a new gist_ [➕] button (left-side top toolbar).
2. In the *File content* text area, add the content.
3. In the *Gist description* text field, add the description.
4. In the *Content filename* text field, add the filename.
5. Enable or disable the *Privacy* checkbox.
6. Click the *Save* button.

Playground:

1. Click the GitHub icon (top-right).
2. In the *Gist description* text field, add the description.
3. Click the *Save* button.

#### ◼︎ Delete a Gist

1. Select the Gist (top-left column).
2. Click the *Delete Gist* [❌] button (left-side top toolbar).

#### ◼︎ Add a File to a Gist

1. Select the Gist.
2. Click the _Add a new file_ [➕] button (right-side top toolbar).
3. In the *File content* text area, add the content.
4. In the *Content filename* text field, add the filename.
5. Click the *Save* button.

#### ◼︎ Edit a Gist File

1. Select the Gist (top-left column)
2. Select the file (top-right column).
3. Edit the content (in the *File content* text area) and/or the filename (in the *Content filename* text field).
4. Click the *Save* button.

#### ◼︎ Delete a Gist File

1. Select the Gist (top-left column)
2. Select the file (top-right column).
3. Click the *Delete File* [❌] button (right-side top toolbar).

## Note

* Due to limitations of the public Gist API, the UX is not as smooth as I prefer. Multiple API requests have to be made to get the entire content of a Gist. Even getting the starred status of a Gist requires a unique API request.

## TODO

- [ ] Support Pharo 9 (when stable)
- [ ] Move to [Spec2](https://astares.blogspot.com/2019/08/spec2.html)

## Acknowledgements

This project makes use of the following third-party libraries and utilities:

* [IconFactory](https://github.com/peteruhnak/IconFactory)
* [NeoJSON](https://github.com/svenvc/NeoJSON)
* [Zinc HTTP Components](https://github.com/svenvc/zinc)

## Author

[brackendev](https://www.github.com/brackendev)

## License

GistBrowser-Pharo is released under the MIT license. See the LICENSE file for more info.
