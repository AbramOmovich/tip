<div id="addForm">
    <h2>{CV="add_label"} {CV="question_label"}</h2>
    <form action="/addQuest" method="post">
        <label for="qtype">{CV="choose_q_type"}</label>
        <select name="qtype" id="qtype" title="{CV="q_type_title"}">
            {CYCLE="qTypes"; FILE="part/nano/qtype"}
        </select>
        <input type="hidden" value="{DV="test_id"}" name="test_id">
        <br><br>
        <label for="quest_text">{CV="question_text_label"}</label><br>
        <textarea name="quest_text" id="quest_text" cols="50" rows="5"></textarea><br><br>
        <label for="q_weight">Вес вопроса</label>
        <table id="percents">
            <tr><td>0</td><td style="text-align: right">50</td><td style="text-align: right">100</td></tr>
            <tr><td colspan="3"><input name="q_weight" id="q_weight" type="range" value="50" list="weight"></td></tr>
        </table>
        <datalist id="weight">
            <option value="0">
            <option value="10">
            <option value="20">
            <option value="30">
            <option value="40">
            <option value="50">
            <option value="60">
            <option value="70">
            <option value="80">
            <option value="90">
            <option value="100">
        </datalist>
        <br>
        <label for="q_time">Время на ответ в секундах </label>
        <table id="percents">
            <tr><td>0</td><td style="text-align: right">50</td><td style="text-align: right">100</td></tr>
            <tr><td colspan="3"><input name="q_time" id="q_time" type="range" value="30" list="time"></td></tr>
        </table>
        <datalist id="time">
            <option value="0">
            <option value="10">
            <option value="20">
            <option value="30">
            <option value="40">
            <option value="50">
            <option value="60">
            <option value="70">
            <option value="80">
            <option value="90">
            <option value="100">
        </datalist>
        <br>
        <button type="submit">{CV="add_label"}</button>
    </form>
</div>