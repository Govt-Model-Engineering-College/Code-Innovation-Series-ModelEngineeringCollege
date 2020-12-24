import React from "react";
import './sessions.css'
const Session = ()=> {
 return(
 <div className = " nav container-fluid">
   <div className='flex-container'>
        <div>
            <div className='circle'>
              <div className='circle circle-inner'></div>
            </div>
            <div className='line'></div>
        </div>
  <div>

        <div className="courses-container">
          <div className="course">
            <div className="course-preview">
              <h6>Course</h6>
              <h2>JavaScript Fundamentals</h2>
              <a href="#">View all chapters <i className="fas fa-chevron-right" /></a>
            </div>
            <div className="course-info">
              <div className="progress-container">
                <div className="progress" />
                <span className="progress-text">
                  6/9 Challenges
                </span>
              </div>
              <h6>Chapter 4</h6>
              <h2>Callbacks &amp; Closures</h2>
              <button className="btn">Continue</button>
            </div>
          </div>
        </div>
      </div>
      </div>
 </div>)
}

export default Session;