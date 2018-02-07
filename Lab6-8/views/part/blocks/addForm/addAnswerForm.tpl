<div id="addForm">
    <form action="/addAnswer" method="post">
        <label for="quest_text">{CV="add_label"} {CV="answer_label"}</label><br><br>
        <input type="hidden" value="{DV="quest_id"}" name="quest_id">
        <textarea name="answer_text" id="quest_text" cols="50" rows="5"></textarea><br>
        <button type="submit">{CV="add_label"}</button>
    </form>
</div>