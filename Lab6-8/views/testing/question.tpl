{EXTENDS="inside"}

{SECTION="content"}
    <div id="test-question">
        <h2>{DV="q_text"}</h2>
        <hr>
        <form action="" method="post">
            <input type="hidden" name="question" value="{DV="q_id"}">
            {CYCLE="answers"; FILE="part/nano/testing/{DV="q_type"}"}
            <br>
            <button type="submit">Ответить</button>
        </form>
    </div>
{ENDSECTION}