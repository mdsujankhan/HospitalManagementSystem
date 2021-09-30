<jsp:include page="/WEB-INF/view/common/admin/header.jsp" />

 <main class="d-flex w-100">
                <div class="container d-flex flex-column">
                    <div class="row ">
                        <div class="col-sm-10 col-md-8 col-lg-8 mx-auto d-table h-100">
                            <div class="d-table-cell align-middle" style="background-color: #008080;">

                                <div class="text-center mt-4">
                                    <h1 class="h2"><u><b> Add a Test:</b></u></h1>
                                    <p class="lead">
                                        Fill the following fields to add a Test.
                                    </p>
                                </div>

                                <div class="card">
                                    <div class="card-body">
                                        <div class="m-sm-4">
                                            <form action="/admin/saveTest" method="POST" >

                                                <div class="mb-3">
                                                    <label class="form-label">Code </label>
                                                    <input class="form-control form-control-lg" type="text" name="code"
                                                        placeholder="Enter Test Code" />
                                                </div>


                                                <div class="mb-3">
                                                    <label class="form-label"> Test Name</label>
                                                    <input class="form-control form-control-lg" type="text"
                                                        name="name" placeholder="Enter Test name" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Description</label>
                                                    <input class="form-control form-control-lg" type="text"
                                                        name="description" placeholder="Enter a short description" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Department </label>
                                                    <select class="form-control form-control-lg" name="department">
                                                        <option selected disabled>Select one Option</option>
                                                        <option value="Diagnostic  Imaging">Diagnostic  Imaging</option>
                                                        <option value="Oral">Oral</option>
                                                        <option value="Dental">Dental</option>
                                                    </select>
                                                </div>
                                                
                                                    <div class="mb-3">
                                                    <label class="form-label">Fee</label>
                                                    <input class="form-control form-control-lg" type="text"
                                                        name="fee" placeholder="Enter Fee for the Test" />
                                                </div>
                                                <div class="text-center mt-3">                                                  
                                                    <button type="submit" class="btn btn-lg btn-primary">Add Test</button>
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