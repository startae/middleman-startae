# List-inline

The List-inline object simply displays a list as one horizontal row.

## Dependencies

inuitcss’ List-inline object depends on one other inuitcss module:

* [settings.defaults](https://github.com/inuitcss/settings.defaults)

If you install the List-inline object using Bower, you will get these dependencies at
the same time. If not using Bower, please be sure to install and `@import` these
dependencies in the relevant way.

## Installation

The recommended installation method is Bower, but you can install the List-inline
module via a Git Submodule, or copy and paste.

### Install using Bower:

    $ bower install --save inuit-list-inline

Once installed, `@import` into your project in its Objects layer:

    @import "bower_components/inuit-list-inline/objects.list-inline";

### Install as a Git Submodule

    $ git submodule add git@github.com:inuitcss/objects.list-inline.git

Once installed, `@import` into your project in its Objects layer:

    @import "objects.list-inline/objects.list-inline";

### Install via file download

The least recommended option for installation is to simply download
`_objects.list-inline.scss` into your project and `@import` it into your project in
its Objects layer.

## Usage

Basic usage of the List-inline object uses the required classes:

    <ul class="list-inline">
        <li>Foo</li>
        <li>Bar</li>
        <li>Baz</li>
    </ul>

The only valid children of the `.list-inline` node are `li`s.

## Options

Other, optional classes can supplement the required base classes:

* `.list-inline--delimited`: add a character to delimit list items.

For example:

    <ul class="list-inline  list-inline--delimited">
        <li>Foo</li>
        <li>Bar</li>
        <li>Baz</li>
    </ul>

If you wish to completely remove the whitespace between items, omit the closing
`</li>` tag:

    <ul class="list-inline">
        <li>Foo
        <li>Bar
        <li>Baz
    </ul>
