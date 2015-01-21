
<g:each var="c" in="${file}">
	<g:img  uri="${resource(dir: 'payload', file: c)}" />
	<hr>
</g:each>
