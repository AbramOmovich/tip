{EXTENDS="inside"}

{SECTION="content"}
    <div id="appoint">
        <form action="/appoint_test" method="get">
            <button type="submit" name="type" value="user">{CV="appoint_label"} пользователю</button>
            <button type="submit" name="type" value="group">{CV="appoint_label"} группе</button>
            <button type="submit" name="type" value="key">Сгенерировать гостевой ключ</button>
            <input type="hidden" name="test_id" value="{DV="test_id"}">
            <input type="hidden" name="test_link" value="{DV="link_prefix"}">
        </form>
    </div>
    <div id="courses">
        <h2>{CV="choose_header"} {CV="question_label"}</h2>
        <form action="/delete_test" id="delete" method="post">
            <button type="submit">{CV="btn_delete"} {CV="test_label"}</button>
            <input type="hidden" name="test_id" value="{DV="test_id"}">
        </form>
        <br><br>
        {CYCLE="questions"; FILE="part/nano/question"}
    </div>
    {FILE="part/blocks/addForm/addQuestForm"}
{ENDSECTION}