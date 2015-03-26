<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>{%=o.htmlWebpackPlugin.options.title || 'Webpack App'%}</title>
    </head>
    <body>
        <div class="pure-g">
            <span id="app"></span>

            <section class="documentation">
                <h2>README</h2>

                <span>{%=o.htmlWebpackPlugin.assets.readme%}</span>
            </section>
        </div>

        {% for (var chunk in o.htmlWebpackPlugin.assets) { %}
            <script src="{%=o.htmlWebpackPlugin.assets[chunk]%}"></script>
        {% } %}
    </body>
</html>