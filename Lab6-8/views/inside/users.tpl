{EXTENDS="inside"}

{SECTION="content"}
    <h2>Пользователи</h2>
    <form action="users" method="post">
        <button class="large" type="submit">{CV="btn_save"}</button>
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
                Новая группа
            </th>
        </tr>
        {CYCLE="users_array"; FILE="part/nano/users"}
    </table>
    </form>
{ENDSECTION}