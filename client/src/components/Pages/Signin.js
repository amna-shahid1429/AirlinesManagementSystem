import React, { Component } from "react";
import Axios from "axios";
import "./styles/Signin.css";
import { withRouter } from "react-router-dom";
import Swal from "sweetalert2";
import withReactContent from "sweetalert2-react-content";
class Signin extends Component {
  Swal = withReactContent(Swal);
  constructor(props) {
    super(props);
    this.state = {
      usernameLogin: "",
      passwordLogin: "",
    };
  }

  handleUsernameChange = (event) => {
    this.setState({
      usernameLogin: event.target.value,
    });
  };

  handlePasswordChange = (event) => {
    this.setState({
      passwordLogin: event.target.value,
    });
  };


  }
  render (){
    return(
    <div className="Auth-form-container bg-image">
      <form className="Auth-form" onSubmit={this.Login}>
        <div className="Auth-form-content">
          <h3 className="Auth-form-title">Sign In</h3>
          <div className="form-group mt-3">
            <label>Username</label>
            <input
              type="username" onChange={this.handleUsernameChange}
              className="form-control mt-1"
              placeholder="Username" required style={{width:'320px'}}
            />
          </div>
          <div className="form-group mt-3">
            <label>Password</label>
            <input
              type="password" onChange={this.handlePasswordChange} 
              className="form-control mt-1"
              placeholder="e.g rXhAz29$%1" required style={{width:'320px'}}
            />
          </div>
          <div className="d-grid gap-2 mt-3">
            <button type="submit" className="btn btn-primary" style={{ backgroundColor: '#67001F' }}>
              Login
            </button>

          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(Signin);
