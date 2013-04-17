# Vim configuration

This is the collection of files used for my vim configuration.  I use a modular
setup of the files to shrink the size of the main `vimrc` file and to better 
organize the various sections of the configuration.  Each plugin has a separate
file in `plugins/02-plugins` and the normal settings for vim are in 
`plugins/01-settings`.

## Bundles

All of the 3rd party plugins are installed via `git submodule init`.  Included are:

- **fugitive** - Pretty much the end-all/be-all vim plugin for handling git
- **molokai** & **badwolf** - The two different color schemes I have used (badwolf 
  is currently the default)
- **nginx**, **css3**, **conky**, **less** syntax highlighting - Added syntax 
  support for various things I work on
- **syntastic** - An automatic linter that supports many languages and can be 
  configured for each language (there are a number of settings spread through the
  `ftplugin` files)
- **surround** - Utility plugin by Tim Pope that adds a modifier to commands to 
  handle text surrounding a section of text
- **indent-guides** - This draws different indentation guides to give some visual 
  help when reading code with many levels of indentation (this is big for me when 
  working with third party code)
- **powerline** - A pretty looking status bar plugin, may abandon this and pull out
  the specific things I like into my own (the main development of the plugin has 
  moved to using a Python based code base)
- **NERDcommenter** - A commenting plugin that supports a lot of languages, gives 
  some simple actions to handle toggling comments across chunks of code
- **cute python** - A collection of small tweaks that make Python code look prettier
- **ctrp** - A fuzzy finder plugin that is written entirely in native vimscript, it
  has support for a lot of different use cases and configurations
- **neocomplcache** and **neosnippet** - Set of autocompletion/correction for 
  writing code and a snippet system that are written by the same guy, so the 
  snippets are also built into the auto completion (if it weren't, I would probably 
  never use it).  The snippets all exist in `snippets/`, I cleaned out the 
  collection and have been adding in snippets I find useful as I go along.
- **easymotion** - A helper plugin that I use to override some of the simple text
  jumping to make longer jumps more powerful (check out the homepage of it to see 
  what it really does)
- **gitgutter** - This adds a gutter to the side of versioned code and notates 
  changes made since the last commit

## Setup

There is an included `setup.sh` that I wrote to work with my other configuration
repos.  I am not sure how this would work set up differently, but in theory it
should work fine (I try not to use absolute paths).
