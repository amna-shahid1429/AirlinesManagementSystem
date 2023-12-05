
import React from 'react';

const Footer = () => {
  return (
    <div style={{ marginTop: "10%"}}>
      <footer className="bg-dark text-center text-white" style={{}}>
        <div className="container p-4" >


          <section className="">
            <form action="">
              <div className="row d-flex justify-content-center">
                <div className="col-auto">
                  <button type="submit" className="btn btn-outline-light mb-4">

                    Subscribe for Updates

                  </button>
                </div>
              </div>
            </form>
          </section>


          <section className="mb-4">
            <p>
              <b>"Embark on a Journey Beyond the Horizon"</b>
            </p>
            <p>Stay connected for the latest updates and travel inspirations.</p>
          </section>

        </div>
        <div className="text-center p-3" style={{ backgroundColor: "#67001F" }}>
          © 2023 All rights reserved! FlyHigh Airways

        </div>
      </footer>
    </div>
  );
};

export default Footer;
