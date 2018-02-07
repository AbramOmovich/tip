{EXTENDS="inside"}

{SECTION="content"}
<h2>Тест: <a href="{DV="test_link"}">{DV="test_name"}</a></h2>
<form action="" method="post">
    <input type="hidden" name="test_id" value="{DV="test_id"}">
    <input type="hidden" name="token" value="{DV="token"}">
    <input type="hidden" name="type" value="key">
    <button type="submit" id="key-btn">Сгенерировать</button>
</form>
{ENDSECTION}