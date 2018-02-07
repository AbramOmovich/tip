{EXTENDS="main"}

{SECTION="page_title"}
    {CV="app_header"}
{ENDSECTION}

{SECTION="action_bar"}
<div id="logout">
    {CV="logged_in_message"}
</div>
{ENDSECTION}

{SECTION="map"}
<div id="map"><a href="/">Главная страница</a> {CYCLE="map"; FILE="part/nano/nav/links"} &gt; <span>{DV="current_page"}</span></div>
{ENDSECTION}

{SECTION="menu"}
    {FILE="part/blocks/menu/menu"}
{ENDSECTION}