# Spacing

The inuitcss `spacing` module is a small collection of helper classes for
spacings like margin and padding.

Install using Bower:

    $ bower install --save inuit-spacing

Install using npm:

    $ npm install --save inuit-spacing


The conventions used in the classes in the spacing module are as follows:

    .[negative][type][direction][size] {}

E.g.:

* `.-mt+` will give you a large (`+`) negative (`-`) margin (`m`) top (`t`).
* `.p--` will give you a tiny (`--`) padding (`p`).
* `.mh++` will give you a huge (`++`) horizontal (`h`) margin (`m`).
* `.mb0` will give you no (`0`) margin (`m`) bottom (`b`).
* `.pl-` will give you a small (`-`) padding (`p`) left (`l`).

Knowing these conventions means you can compose a huge array of spacing helpers.
