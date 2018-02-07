{EXTENDS="inside"}

{SECTION="content"}
    <h2>Тест: <a href="{DV="test_link"}">{DV="test_name"}</a></h2>
    <h3>Выбирите пользователей</h3>
    <form action="/appoint_users" method="post">
        <input type="hidden" name="test" value="{DV="test_id"}">
        <button class="large" type="submit">{CV="appoint_label"}</button>
        <input type="hidden" value='{DV="all_users_id"}' name="all_users">
    <table id="users">
        <tr>
            <th>
                Логин
            </th>
            <th>
                Имя
            </th>
            <th>
                Фамилия
            </th>
            <th>
                Группа
            </th>
            <th>
                Выбрать
            </th>
        </tr>
        {CYCLE="users"; FILE="part/nano/appoint/users"}
    </table>
    </form>
{ENDSECTION}