module Nanoc3::Helpers

  module PatternPrimer 
    
    def mod(name, &tmpl)
      rand_id = rand(9999-1)+1
      block_s = capture(&tmpl)

      html = %|
        <div class="pp-module">
          <div class="head">
            <h2>#{name}</h2>
            <ul>
              <li>
                <a class="pp-icon-code" href="#">Ver código</a>
              </li>
              <li class="pp-icon-copy">
                <div id="raw_copy_cont_#{rand_id}" style="position:relative">
                   <a id="raw_copy_#{rand_id}" href="#" class="raw_copy">Copiar</a>
                </div> 
              </li> 
            </ul>
          </div> 
          <div class="code"> 
            <div class="preview">
              #{block_s}
            </div>
            <div class="raw">
              <textarea class="ckeditor">#{h(block_s)}</textarea>
            </div> 
          </div>
        </div>|
        
        
        buffer = eval('_erbout', tmpl.binding)
        buffer << html
    end
    
  end

end