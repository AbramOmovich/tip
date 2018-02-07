{EXTENDS="inside"}

{SECTION="content"}
    <div id="courses">
        <h2>{CV="choose_header"} {CV="course_label"}</h2>
        <form action="/delete_category" id="delete" method="post">
            <button type="submit">{CV="btn_delete"} {CV="category_label"}</button>
            <input type="hidden" name="category_id" value="{DV="category_id"}">
        </form>
        <br><br>
        {CYCLE="courses"; FILE="part/nano/course"}
    </div>
    {FILE="part/blocks/addForm/addCourseForm"}
{ENDSECTION}