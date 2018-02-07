{EXTENDS="inside"}

{SECTION="content"}
    <div id="test-result">
        <h1>{DV="test_name"}</a></h1>
        <hr>
        <div id="result">
            <h2 class="{DV="header_class"}">{DV="test_result"}</h2>
            {FILE="part/blocks/testResult/{DV="show_mark"}"}
        </div>
    </div>
{ENDSECTION}