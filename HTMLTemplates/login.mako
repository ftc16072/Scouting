<%def name="title()">FTC Scouting</%def>
<%def name="head()"></%def>
<%inherit file = "base.mako"/>

<h1> Login </h1>
<form>
  <div class="mb-3">
    <label for="username" class="form-label">Username</label>
    <input type="email" class="form-control" id="username" aria-describedby="usernameHelp">
    
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>