{EXTENDS="inside"}

{SECTION="content"}
    <h2>Тест: <a href="{DV="test_link"}">{DV="test_name"}</a></h2>
    <h3>Выбирите группы</h3>
    <form action="/appoint_groups" method="post">
        <input type="hidden" name="test" value="{DV="test_id"}">
        <button class="large" type="submit">{CV="appoint_label"}</button>
        <input type="hidden" value='{DV="all_groups_id"}' name="all_groups">
    <table id="groups">
        <tr>
            <th>
                Название группы
            </th>
            <th>
                Выбрать
            </th>
        </tr>
        {CYCLE="groups"; FILE="part/nano/appoint/groups"}
    </table>
    </form>
{ENDSECTION}