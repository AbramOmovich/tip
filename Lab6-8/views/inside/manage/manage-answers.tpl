{EXTENDS="inside"}

{SECTION="content"}
    <div id="courses">
        <form action="/delete_question" id="delete" method="post">
            <button type="submit">{CV="btn_delete"}</button>
            <input type="hidden" name="quest_id" value="{DV="quest_id"}">
        </form>
        <form action="/update_question" method="post">
            <button type="submit">{CV="btn_save"}</button>
            <br><br>
            <input type="hidden" name="quest_id" value="{DV="quest_id"}">
            <textarea name="quest_text" id="" >{DV="question"}</textarea><br><br>
            <label for="q_weight">Вес вопроса</label>
            <table id="percents">
                <tr><td>0</td><td style="text-align: right">50</td><td style="text-align: right">100</td></tr>
                <tr><td colspan="3"><input name="q_weight" id="q_weight" type="range" value="{DV="q_weight"}" list="weight"></td></tr>
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
                <tr><td colspan="3"><input name="q_time" id="q_time" type="range" value="{DV="q_time"}" list="time"></td></tr>
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
            {CYCLE="answers"; FILE="part/nano/{DV="q_type"}"}
        </form>
    </div>
    {FILE="part/blocks/addForm/addAnswerForm"}
{ENDSECTION}

{SECTION="js"}
    <script>
        checkAnswers();
    </script>
{ENDSECTION}