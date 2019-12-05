<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Student info form</h2>
    <form id="std-form">
        <div class="form-group">
            <label for="email">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <input type="hidden" id="edit-id" name="edit-id">

        <button type="button" id="subbtn" class="btn btn-primary">Add</button>
    </form>
    <br><br>
    <div class="table-responsive">
        <table class="table">
            <thead><tr><th>Name</th><th>Email</th><th>Edit</th><th>Delete</th></tr></thead>
            <tbody id="data">

            </tbody>
        </table>
    </div>
</div>




<script>

    $(document).ready(function () {
        get();
        $("#subbtn").click(function () {

            let formdata=$("#std-form").serialize();

            let url="";

            if($("#subbtn").text()==="Add"){
                url="/add"
            }
            if($("#subbtn").text()==="Edit"){
                url="/update"
            }
            if(url!==""){
                $.ajax({
                    url:url,
                    type:"post",

                    data:formdata,
                    success:function (res) {
                        //console.log(res);
                        alert(res)
                        get();
                    }
                })
            }


        });
        $(document).on("click",".delete",function () {
//            alert("ok");

            var id = $(this).attr("id");
            $.ajax({
                url:"/delete",
                type:"post",
                data:{id:id},
                success:function (res) {
                    //console.log(res);
                    alert("Deleted!")
                    get();
                }
            });

        });

        $(document).on("click",".edit",function () {
//            alert("ok");

            var id = $(this).attr("id");
            $.ajax({
                url:"/edit",
                type:"post",
                data:{id:id},
                success:function (res) {

                    let edit=JSON.parse(JSON.stringify(res,true));

                        $("#name").val(edit.name);
                        $("#email").val(edit.description);
                        $("#subbtn").text("Edit");
                        $("#edit-id").val(edit.id);


                }
            });

        });

    });
    function get() {
        $.ajax({
            url:"/get",
            type:"POST",
            dataType:"json",
            success:function (res) {
                console.log(res);
                var l=JSON.parse(JSON.stringify(res,true));
                var table="<tr>";
                l.forEach(function(e,index){
                   table+="<td>"+e.name+"</td>";
                   table+="<td>"+e.description+"</td>";
                   table+="<td><button type='button' class='btn btn-info edit' id='"+e.id+"'>Edit</button></td>";
                   table+="<td><button type='button' class='btn btn-danger delete' id='"+e.id+"'>Delete</button></td></tr>";
                });

                $("#data").html(table);



            }
        })

    }
</script>

</body>
</html>
