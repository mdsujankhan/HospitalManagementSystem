<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />

 <main class="d-flex w-100">
                <div class="container d-flex flex-column">
                    <div class="row ">
                        <div class="col-sm-10 col-md-8 col-lg-8 mx-auto d-table h-100">
                            <div class="d-table-cell align-middle" style="background-color: #008080;">

                                <div class="text-center mt-4">
                                    <h1 class="h2"><u><b> Add a Department:</b></u></h1>
                                    <p class="lead">
                                        Fill the following fields to add a Department.
                                    </p>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="m-sm-4">
                                            <form action="/admin/saveDepartment" method="POST" >

                                                <div class="mb-3">
                                                    <label class="form-label">Code </label>
                                                    <input class="form-control form-control-lg" type="text" name="code"
                                                        placeholder="Enter Department Code" />
                                                </div>


                                                <div class="mb-3">
                                                    <label class="form-label"> Department Name</label>
                                                    <input class="form-control form-control-lg" type="text"
                                                        name="departmentName" placeholder="Enter Department name" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Description</label>
                                                    <input class="form-control form-control-lg" type="text"
                                                        name="description" placeholder="Enter a short description" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Status </label>
                                                    <select class="form-control form-control-lg" name="status">
                                                        <option selected disabled>Select one Option</option>
                                                        <option>Open</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                                <div class="text-center mt-3">                                                  
                                                    <button type="submit" class="btn btn-lg btn-primary">Add Department</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </main>











<jsp:include page="/WEB-INF/view/common/admin/footer.jsp" />