import React from "react";
import "./styles/Home.css";
import Slider from "./Slider";
import Footer from "./Footer";

const Home = () => {
  return (
    <>
      <Slider />

      <div className="row" style={{ marginTop: "35px" }}>
        <div className="col-lg-4 align-items-center d-flex justify-content-center">
          <div className="card border-0" style={{ width: "40rem", backgroundColor: "#f0f0f0" }}>
            <div className="text-center">
              <img
                src={require("../../images/Destinations_Dekstop.png")}
                style={{ borderRadius: "20px" }}
                width="650"
                height="550"
                alt="Destination"
              />
              <div className="card-body border-0">
                <h5 className="card-title" style={{ fontSize: "25px", color: "#67001F" }}>
                  Explore Exciting Destinations with FlyHigh Airways
                </h5>
              </div>
            </div>
          </div>
        </div>

        <div className="col-lg-4 align-items-center d-flex justify-content-center">
          <div className="card border-0" style={{ width: "60rem", backgroundColor: "#f0f0f0" }}>
            <div className="text-center">
              <img
                src={require("../../images/Fasttrack_Desktop.jpg")}
                style={{ borderRadius: "20px" }}
                width="650"
                height="550"
                alt="Fasttrack"
              />
              <div className="card-body border-0">
                <h5 className="card-title" style={{ fontSize: "25px", color: "#67001F" }}>
                  Enjoy Our Fast Track Service at FlyHigh Airways
                </h5>
              </div>
            </div>
          </div>
        </div>

        <div className="col-lg-4 align-items-center d-flex justify-content-center">
          <div className="card border-0" style={{ width: "60rem", backgroundColor: "#f0f0f0" }}>
            <div className="text-center">
              <img
                src={require("../../images/Alfursan_Destop.jpg")}
                style={{ borderRadius: "20px" }}
                width="650"
                height="550"
                alt="Alfursan"
              />
              <div className="card-body border-0">
                <h5 className="card-title" style={{ fontSize: "25px", color: "#67001F" }}>
                  Learn More About Our Loyalty Program at FlyHigh Airways
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>

      <br></br>
      <br></br>

      <div className="row">
        <div className="col-lg-6 align-items-center d-flex justify-content-center">
          <div className="text-center" style={{ width: "35rem" }}>
            <h1 style={{ color: "#67001F" }}>Discover Amazing Experiences with FlyHigh Airways</h1>
            <h5 style={{ color: "#666" }}>
              Embark on a journey, earn rewards, and enjoy the best adventures with FlyHigh Airways.
            </h5>
          </div>
        </div>

        <div className="col-lg-6 align-items-center d-flex justify-content-center">
          <div className="row">
            <div className="col-lg-12 align-items-center d-flex justify-content-center">
              <div className="card border-0" style={{ width: "50rem", backgroundColor: "#f0f0f0" }}>
                <div className="row">
                  <div className="col-lg-6">
                    <img
                      src={require("../../images/Large-Sustainability.jpg")}
                      className="card-img-top"
                      alt="Sustainability"
                    />
                  </div>
                  <div className="col-lg-6">
                    <div className="card-body">
                      <h5 className="card-title" style={{ color: "#67001F" }}>
                        Ensure a Sustainable Future with FlyHigh Airways
                      </h5>
                      <p className="card-text" style={{ color: "#666" }}>
                        Help us reduce our carbon footprint and get rewarded! Join us and earn Greens Points for every action you take to help us reduce waste of food, fuel, and materials.
                      </p>
                      <a href="#" className="btn btn-primary" style={{ backgroundColor: '#67001F' }}>
                        Learn more
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="col-lg-12 align-items-center d-flex justify-content-center py-5">
              <div className="card border-0" style={{ width: "50rem", backgroundColor: "#f0f0f0" }}>
                <div className="row">
                  <div className="col-lg-6">
                    <img
                      src={require("../../images/Large-experiences.jpg")}
                      className="card-img-top"
                      alt="Experiences"
                    />
                  </div>
                  <div className="col-lg-6">
                    <div className="card-body">
                      <h5 className="card-title" style={{ color: "#67001F" }}>
                        Time Flies On Board FlyHigh Airways
                      </h5>
                      <p className="card-text" style={{ color: "#666" }}>
                        Sit back, relax and enjoy your flight with our onboard services. Learn more about our dining options, inflight entertainment.
                      </p>
                      <a href="#" className="btn btn-primary" style={{ backgroundColor: '#67001F' }}>
                        Learn more
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="col-lg-12 align-items-center d-flex justify-content-center py-5">
              <div className="card border-0" style={{ width: "50rem", backgroundColor: "#f0f0f0" }}>
                <div className="row">
                  <div className="col-lg-6">
                    <img
                      src={require("../../images/Large-Upgrade.jpg")}
                      className="card-img-top"
                      alt="Upgrade"
                    />
                  </div>
                  <div className="col-lg-6">
                    <div className="card-body">
                      <h5 className="card-title" style={{ color: "#67001F" }}>
                        Let's Get You Upgraded with FlyHigh Airways
                      </h5>
                      <p className="card-text" style={{ color: "#666" }}>
                        Here's your chance to upgrade to a higher class. Place a bid and experience the best in comfort, services, and entertainment.
                      </p>
                      <a href="#" className="btn btn-primary" style={{ backgroundColor: '#67001F' }}>
                        Learn more
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <Footer />
      
    </>
  );
};

export default Home;