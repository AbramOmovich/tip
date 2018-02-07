{EXTENDS="inside"}

{SECTION="content"}
    <div id="courses">
        <h2>{CV="choose_header"} {CV="test_label"}</h2>
        <form action="/delete_course" id="delete" method="post">
            <button type="submit">{CV="btn_delete"} {CV="course_label"}</button>
            <input type="hidden" name="course_id" value="{DV="course_id"}">
        </form>
        <br><br>
        {CYCLE="tests"; FILE="part/nano/test"}
    </div>

    {FILE="part/blocks/addForm/addTestForm"}
{ENDSECTION}