<!doctype html>
<html>
    <head>
        <title>Test Web</title>
        <meta charset="utf8"/>
        <script src="/static/js/jquery-3.2.1.min.js"></script>
    </head>
    <body>
        <form id="apply">
            <input type="text" name="email"></input>
            <input type="text" name="name"></input>
            <input type="text" name="corporate"></input>
            <input type="submit"></input>
        </form>
        <script>
            $('#apply').submit(function(e){
                e.preventDefault()
                var params=JSON.stringify($('#apply').serialize())
                console.log(params)
            })
        </script>
    </body>
</html>