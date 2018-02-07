<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{SLOT="page_title"}</title>
    <link rel="stylesheet" href="/front/pts.css">
    <script src="/front/js/jquery-3.2.1.js" ></script>
    <script src="/front/js/JQcolor.js"></script>
    <script src="/front/js/helpers.js"></script>
</head>
<body>
<div id="main">

    <div id="header">
        <span>{CV="app_header"}</span>
        {SLOT="action_bar"}
    </div>
    {SLOT="map"}
    <div id="clear">
    </div>

    <div id="menu">
        {SLOT="menu"}
    </div>

    <div id="content">
        {SLOT="content"}
    </div>

    <div id="news">
        Новости
    </div>

    <div id="clear">
    </div>

    <div id="footer">
        <script>$('#footer').html( showCopyrightYear('{CV="copyright_begin"}')); </script>
    </div>
</div>

</body>
    {SLOT="js"}
</html>