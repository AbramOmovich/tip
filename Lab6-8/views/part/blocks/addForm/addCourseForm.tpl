<div id="addForm">
    <h2>{CV="add_label"} {CV="course_label"}</h2>
    <form action="/add_course" method="post">
        <label for="new_category">Имя курса</label><br>
        <textarea name="course_name" id="new_category" cols="50" rows="5"></textarea><br>
        <input type="hidden" name="category_id" value="{DV="category_id"}">
        <button type="submit">{CV="add_label"}</button>
    </form>
</div>