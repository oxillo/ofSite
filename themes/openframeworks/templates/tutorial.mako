## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>

<%block name="extra_head">
    <script src="/assets/js/documentation.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.1.0/css/font-awesome.min.css">
<style>
</style>
</%block>

<%block name="content">
      <div id="body-wrap">
	    <div class="page-wide tutorial">
            &lt; <a href="../../#how_tos">${ of.msg("back to all how-tos", locals()) }</a>
            <span id="edithowto">
                % if lang=="en":
                    <a href="https://github.com/openframeworks/ofSite/edit/master/${post.source_path}" class="nohover"><img title="edit howto on GitHub" src="/images/edithowto.png"/></a>
                % else:
                    <a href="https://github.com/openframeworks/ofSite/edit/master/${post.translated_source_path(lang)}" class="nohover"><img title="edit howto on GitHub" src="/images/edithowto.png"/></a>
                % endif
            </span>
    	</div>
	    <div class="page-left-verywide tutorial">
    	    <h1>${post.title()}</h1>
        	% if post.meta[lang]["translator"] != "":
            	<span class="article_meta">${of.msg("translation", locals())}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<a href="${post.meta[lang]["translator_site"]}">${post.meta[lang]["translator"]}</a></span><br/>
        	% endif
    	    <div class="article">
                ${post.text()}
    		</div>

        </div><!-- End Page Wide -->
      </div><!-- End Body Wrap -->
</%block>
