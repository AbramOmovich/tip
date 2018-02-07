<tr>
    <td>
        <a href="/profile/{CYV="u_id"}">{CYV="u_login"}</a>
    </td>
    <td>
        {CYV="u_first_name"}
    </td>
    <td>
        {CYV="u_last_name"}
    </td>
    <td>
        {CYV="r_name"}
    </td>
    <td class="choose">
        <select name="u_id[{CYV="u_id"}]">
            <option value="">{CV="select_group"}</option>
            {CYCLE="user_roles"; FILE="part/nano/user_roles"}
        </select>
    </td>
</tr>