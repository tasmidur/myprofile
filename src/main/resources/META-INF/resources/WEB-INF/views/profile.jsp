<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="header.jsp"/>
</head>
<style>
    .imagelabel{
        padding: 10px;
        /*background: #4987ff;*/
        display: table;
        color: #fff;
    }



    input[type="file"] {
        display: none;
    }
</style>
<body class="dark-edition">
<div class="wrapper ">
    <jsp:include page="sitebar.jsp"/>
    <div class="main-panel">
        <!-- Navbar -->
        <jsp:include page="navbar.jsp"/>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header card-header-primary">
                                <h4 class="card-title">Edit Profile</h4>
                                <p class="card-category">Complete your profile</p>
                            </div>
                            <div class="card-body">
                                <form id="profile-form">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Full Name</label>
                                                <input type="text" class="form-control" id="fullname" name="fullname" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Email</label>
                                                <input type="email" class="form-control" id="email" name="email" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Contact</label>
                                                <input type="text" class="form-control" id="contact" name="contact" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Facebook Id</label>
                                                <input type="link" class="form-control" id="fb" name="fb" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Linked In</label>
                                                <input type="link" class="form-control" id="linkedin" name="linkedin">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Github link</label>
                                                <input type="link" class="form-control" id="github" name="github">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Stract Overflow Id</label>
                                                <input type="link" class="form-control" id="stractoverflow" name="stractoverflow">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Softprole link</label>
                                                <input type="link" class="form-control" id="softprofile" name="softprofile">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Adress</label>
                                                <input type="text" class="form-control" name="address" id="address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">City</label>
                                                <input type="text" class="form-control" name="city" id="city">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Country</label>
                                                <input type="text" class="form-control" name="country" id="country">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Postal Code</label>
                                                <input type="text" class="form-control" name="postcode" id="postcode">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>About Me</label>
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Start Writting here...........</label>
                                                    <textarea class="form-control" rows="5" id="aboutme" name="aboutme"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">

                                                <div class="form-group">

                                                    <label class="imagelabel btn btn-primary"><span>  <i class="material-icons text-left" style="padding: 5px;">save_alt</i> Enter Your Photo</span>
                                                        <input type="file" size="60" id="imagefilepath" name="imagefilepath">
                                                    </label>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="alert alert-info" id="status"></p>
                                    <button type="submit" class="btn btn-primary pull-right" id="addprofile">Update Profile</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title ">Basic Information</h4>

                                </div>
                                <div class="card-body">
                                    <div class="row">
                                    <div class="table-responsive col-lg-12 col-md-12 col-sm-12 col-12">
                                        <table class="table">
                                            <thead class=" text-primary col-lg-12">
                                            <th width="30%">
                                                Image
                                            </th>
                                            <th width="50%">
                                                Detai Information
                                            </th>
                                            <th width="20%">
                                                Action
                                            </th>
                                            </thead>
                                            <tbody id="table-data" class="col-lg-12">


                                            </tbody>
                                        </table>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                </div>

        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>

    <script>
        $(document).ready(function () {

            showdata();

            $("#status").hide();

                  $(document).on("submit","#profile-form",function (event) {
                      event.preventDefault();
                      let formdata1=new FormData(this);



                      var formData = {};
                      $.each(this, function(i, v){
                          var input = $(v);
                          // populate form data as key-value pairs
                          // with the name of input as key and its value as value
                          formData[input.attr("name")] = input.val();
                      });

                      console.log(JSON.stringify(formData));
                      let data= JSON.stringify(formData);
                      $.ajax({
                          url:"/admin-profile-add",
                          type:"post",
                          enctype: 'multipart/form-data',
                          data:{data:data},
                          success:function (res) {
                              showdata();
                            if(res==1){
                              md.showNotification("top","center","Sucessfully data inserted",1);

                            }
                            else {
                                md.showNotification("top","center","Data Not inserted",0);
                            }
                          }
                      })
                  })

            $(document).on("click",".delete",function () {
//            alert("ok");

                var id = $(this).attr("id");
                $.ajax({
                    url:"/admin-profile-delete",
                    type:"post",
                    data:{id:id},
                    success:function (res) {
                       showdata();
                       md.showNotification("top","center","Data Successfully Deleted",1);
                    }
                });

            });
        })

        function showdata() {
           $.ajax({
               url:"/admin-profile-getdata",
               type:"post",
               dataType:"json",
               success:function (res) {
                   if(res){
                       var l=JSON.parse(JSON.stringify(res,true));
                       console.log(l);
                       var table="<tr>";
                       l.forEach(function(e,index){
                           let des="<p>Name: "+e.fullname+"</p>";
                           des+="<p>Email: "+e.email+"</p>";
                           des+="<p>Contact: "+e.contact+"</p>";
                           des+="<p>Address: "+e.address+"</p>";
                           des+="<p>City: "+e.city+"</p>";
                           des+="<p>Postcode: "+e.postcode+"</p>";
                           des+="<p>Country: "+e.country+"</p>";
                           des+="<p>Fb: "+e.fb+"</p>";
                           let img="<img src='assets/img/faces/marc.jpg' width='200' height='200'>";
                           table+="<td>"+img+"</td>";
                           table+="<td>"+des+"</td>";
                           table+="<td><button type='button' class='btn btn-info edit' id='"+e.id+"'>Edit</button></td>";
                           table+="<td><button type='button' class='btn btn-danger delete' id='"+e.id+"'>Delete</button></td></tr>";

                       });

                       $("#table-data").html(table);
                   }
               }
           })
        }
    </script>
</body>
</html>