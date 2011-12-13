Pattern Primer gem for nanoc
============================

****UNDER DEVELOPMENT****


Based on http://adactio.com/journal/5028/



Features
--------

- Copy HTML code to clipboard with one click. Using http://code.google.com/p/zeroclipboard/
- Syntax Highlighting and edition with live preview. Using http://codemirror.net/


Installation
----------------------

  - Install the gem

  - Add the following line to the Rakefile
    
    `require 'pattern_primer/tasks'`
  
  - And the following in lib/default.rb
  
    `require 'pattern_primer'

    include Nanoc3::Helpers::PatternPrimer

    include Nanoc3::Helpers::Capturing
    include Nanoc3::Helpers::LinkTo
    include Nanoc3::Helpers::HTMLEscape`

  - Now, go to your nanoc Project path on the command line and run the following Rake task:
  
    `rake pattern_primer:build`
  
    This task copies the needed files to generate the Snippets Page.
    They are:
    
      - content/
        - pattern_primer.html
      - layouts/
        - pattern_primer.html
      - output/
        - pattern_primer/
          - images/
            - ...
          - stylesheets/
            - ...
          - javascripts/
            - ...
    
    
    - Add a new rule in nanoc Rules file to use the generated layout (layouts/pattern_primer.html).
    
        For example:
        
        `compile '/pattern_primer/' do
          filter :erb
          layout 'pattern_primer'
        end`

        

Usage
-----

  - In your content/patter_primer.html or any other that uses the pattern_primer.html layout (defined in nanoc Rules)
  
    you can use de mod helper to render the snippet:
    
    <% mod 'mod_list' do %>
      <ul class="mod_list">
        <li><a href="#">Item 1</a></li>
        <li><a href="#">Item 2</a></li>
        <li><a href="#">Item 3</a></li>
      </ul>
    <% end %>

    

  
TO-DOS
-----

- "Content for" para js
- Registrar cada modulo para poder usarlos en los items tal que así `render_module "modulename"`
- Limpiar js, quitar jquery, limpiar css
    
    







