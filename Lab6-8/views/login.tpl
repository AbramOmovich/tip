{EXTENDS="main"}

{SECTION="page_title"}
    {CV="app_header"}
{ENDSECTION}

{SECTION="message"}
    {CV="not_logged_in_message"}
{ENDSECTION}

{SECTION="action_bar"}
<div>
    <form action="login" method="post">
        <div><br>
            <button type="submit">{CV="login_btn"}</button>
        </div>
        <div>
            <label for="pass">{CV="pass_label"}</label><br>
            <input id="pass" type="password" name="pass"><br>
        </div>
        <div>
            <label for="login">{CV="login_label"}</label><br>
            <input id="login" type="text" name="login"><br>
            <input id="remember" type="checkbox" name="remember">
            <label for="remember">{CV="remember_label"}</label>
        </div>
    </form>
</div>
{ENDSECTION}

{SECTION="content"}
<div id="register-form">
    <form action="register" method="post">
        <h2>{CV="register_header"}</h2>
        <hr>
        <table>
            <tr>
                <td>
                    <label for="new_login">{CV="login_label"}</label>
                </td>
                <td>
                    <input id="new_login" type="text" name="login"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="new_pass">{CV="pass_label"}</label>
                </td>
                <td>
                    <input id="new_pass" type="password" name="pass"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="new_pass_repeat">{CV="pass_label_repeat"}</label>
                </td>
                <td>
                    <input id="new_pass_repeat" type="password" name="pass_repeat"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="email">{CV="email_label"}</label>
                </td>
                <td>
                    <input id="email" type="email" name="email"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="first_name">{CV="first_name_label"}</label>
                </td>
                <td>
                    <input id="first_name" type="text" name="first_name"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="last_name">{CV="last_name_label"}</label>
                </td>
                <td>
                    <input id="last_name" type="text" name="last_name"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="user_group">{CV="group_label"}</label>
                </td>
                <td>
                    <input id="user_group" type="text" name="user_group"><br>
                </td>
            </tr>
            <tr><td></td><td><button type="submit">{CV="register_btn"}</button></td></tr>
        </table>
    </form>
</div>
<div id="register-info">
    <span>
        {CV="register_info"}
    </span>
    <h3>{CV="test_by_key_header"}</h3>
    <form action="key" method="post">
        <label for="personal_key">{CV="key_label"}</label><br>
        <textarea id="personal_key" rows="4" name="key"></textarea><br>
        <button id="key-btn" type="submit">{CV="enter_key_btn"}</button>
    </form>
</div>
{ENDSECTION}