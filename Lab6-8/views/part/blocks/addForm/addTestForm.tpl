<div id="addForm">
    <h2>{CV="add_label"} {CV="test_label"}</h2>
    <form action="/add_test" method="post">
        <label for="new_category">Название</label><br>
        <textarea name="test_name" id="new_category" cols="50" rows="5"></textarea><br>
        <input type="hidden" name="course_id" value="{DV="course_id"}">
        <br>

        <label for="pause">Можно ставить на паузу</label><br>
        <select name="pause" id="pause">
            <option value="0">Нет</option>
            <option value="1">Да</option>
        </select>
        <br><br>
        <label for="answers_after_question">Показывать правильные ответы после ответа на вопрос</label><br>
        <select name="answers_after_question" id="answers_after_question">
            <option value="0">Не показывать</option>
            <option value="1">Показывать</option>
        </select>
        <br><br>
        <label for="answers_after_test">Показывать правильные ответы по завершении теста</label><br>
        <select name="answers_after_test" id="answers_after_test">
            <option value="0">Не показывать</option>
            <option value="1">Показывать</option>
        </select>
        <br><br>
        <label for="show_mark">Показывать по завершении теста итоговую оценку (в процентах от максимально возможной)</label><br>
        <select name="show_mark" id="show_mark">
            <option value="1">Показывать</option>
            <option value="0">Не показывать</option>
        </select>
        <br><br>
        <label for="show_complete">Показывать по завершении теста «вердикт» в виде «тест пройден» или «тест не пройден»</label><br>
        <select name="show_complete" id="show_complete">
            <option value="1">Показывать</option>
            <option value="0">Не показывать</option>
        </select>
        <br><br>
        <label for="quest_show">Сколько вопросов из теста показывать</label><br>
        <select name="all_quest_show" id="quest_show">
            <option value="1">Все</option>
            <option value="0">Указать кольичество</option>
        </select><br>
        <input type="number" placeholder="Количество" name="amount_of_quest">
        <br><br>
        <label for="complete_barrier">Порог прохождения</label><br>
        <select name="complete_barrier" id="complete_barrier">
            <option value="a_percent">Процент верных ответов</option>
            <option value="a_amount">Количество верных ответов</option>
            <option value="a_weight_sum">Сумма «весов» верных ответов (при 100% вопросов) в %</option>
        </select><br><br>
        <label for="q_weight">Процент верных ответов</label>
        <table id="percents">
            <tr><td>0</td><td style="text-align: right">50</td><td style="text-align: right">100</td></tr>
            <tr><td colspan="3"><input name="a_percents" id="a_percents" type="range" value="50" list="weight"></td></tr>
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
        <input type="number" placeholder="Количество верных ответов" name="amount_right_answ"><br>
        <br>
        <label for="allow_skip">Пропуск вопросов</label><br>
        <select name="allow_skip" id="allow_skip">
            <option value="1">Разрешено</option>
            <option value="0">Запрещенно</option>
        </select><br>
        <br><br>
        <button type="submit">{CV="add_label"}</button>
    </form>
</div>