import React from "react";
import "./Overview.css";
import Session from  "../../components/sessions/sessions"
import pws from "../../components/pws/pws"
import pathway from './pathway.png'

function Overview(){
return(
 <div className="flex-container">
 <div >
    <img clasName ='pathway' src={pathway}/>
 </div>
 <div className= "sessions">  
        <Session/>
        <Session/>
        <Session/>
        <Session/>
        <Session/>
        <Session/>
        <Session/>
        <Session/>
        <Session/>

</div>

 </div>
)

}

export default Overview;




    
  