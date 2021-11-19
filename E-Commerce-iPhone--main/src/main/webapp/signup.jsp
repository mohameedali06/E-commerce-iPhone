<!DOCTYPE html>
<html>
  <head>
    <title>Signup page</title>
    <link rel="stylesheet" href="signup.css" />
  </head>
  <body>
    <style>
      body {
        padding: 1em;
        font-size: 15px;
        color: black;
        background-color: white;
      }
    </style>
    <form action="addUser">
      <div class="main">
        <div class="images">
          <img src="signup.png" alt="image" class="image" />
        </div>
        <label><b>Username</b></label>
        <input
          type="text"
          placeholder="Enter Username"
          name="userName"
          required
        />
        <label><b>Email</b></label>
        <input
          type="text"
          placeholder="Enter Email"
          name="userEmail"
          required
        />
        <label><b>Mobile Number</b></label>
        <input
          type="number"
          placeholder="Enter Mobile Number"
          name="userPhoneNumber"
          required
        />
        <label><b>Password</b></label>
        <input
          type="password"
          placeholder="Enter Password"
          name="userPassword"
          required
        />
        <button type="submit">Signup</button>
        <button type="button" class="cancel">Cancel</button>
        <span class="exist">
          <a href="login.jsp">Already have acount?</a>
        </span>
      </div>
    </form>
  </body>
</html>
