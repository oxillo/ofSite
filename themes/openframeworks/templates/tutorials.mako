## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>

<%block name="content">
      <div id="body-wrap">

        <div class="getting_started page-wide"> 
          <%include file="tutorials_getting_started.mako" args="parent_locals=locals()" />
        </div>


        <div id="how_tos" class="page-wide sectiontitle">
          <h2>${ of.msg("how-tos", locals()) } <small>${ of.msg("a quick reference for common questions", locals()) }</small></h2>
        </div>

        <div class="page-wide how-tos">
        % for category in categories:
            % if len(category["articles"]) > 0:
              <div style="width: 32% !important; float: left; min-height: 250px; margin: 5px;">
                <div style="background: #eee;">  
                        <h2>${category["category"]}</h2>
                    </div><!-- End Page Wide -->
                    <ul>
                    % for article in category["articles"]:
                         %if lang in article.translations.keys():
                             <li>
                                <a href="${article.translations[lang].path}"> ${article.translations[lang].title} </a>
                                % if article.modification_date > article.translations[lang].modification_date:
                                    <a href="../../learning/${article.path}">*</a>
                                % endif
                             </li>
                         %else:
                             <li><a href="${article.path}"> ${article.title} </a></li>
                         %endif
                    % endfor
                    </ul>
              </div>
            % endif
        % endfor
        </div>
        <div class="page-wide">
        % if lang != "en":
            <span style="float: right; font-size:0.8em; font-color: #ccc">* ${ of.msg("Links to newer original article", locals()) }</span>
        % endif
        </div>

        <div id="ofBook" class="page-wide sectiontitle">
          <h2>ofBook <small>${ of.msg("a collection of openFrameworks guides", locals()) }</small></h2>
        </div>
        <div class="page-wide">
          ${of_book}
        </div>

        <div id="contribute" class="page-wide sectiontitle">
          <h2>${ of.msg("Contribute", locals()) }<small>${ of.msg("How to improve the documentation", locals()) }</small></h2>
        </div>
        <div class="page-wide">
          ${contributing_to_docs}
        </div>

     </div>
</%block>
