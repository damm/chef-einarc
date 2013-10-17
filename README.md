einarc Cookbook
===============

This Cookbook will install einarc from a repository with it's propritary makefile patched to get a newer version of megacli.  You can easily swap out the [upstream](https://github.com/damm/einarc) for the svn upstream (or create your own)

Requirements
------------

Ruby installed, can be omnibus ruby.

Attributes
----------

#### einarc::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['einarc']['modules']</tt></td>
    <td>Array</td>
    <td>Array of what storage modules to build</td>
    <td><tt>Array.new</tt></td>
  </tr>
  <tr>
    <td><tt>['einarc']['source_uri']</tt></td>
    <td>String</td>
    <td>Source repository to fetch einarc from</td>
    <td><tt>https://github.com/inq-team/einarc</tt></td>
  </tr>
  <tr>
    <td><tt>['einarc']['source_reference']</tt></td>
    <td>String</td>
    <td>Git reference to checkout with</td>
    <td><tt>v2.0</tt></td>
  </tr>
</table>

Usage
-----
#### einarc::default

Just include `einarc` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[einarc]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Scott M. Likens <scott@spam.likens.us>

Copyright 2013, Scott M. Likens

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
