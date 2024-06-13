const template = document.createElement('template');
template.innerHTML = `

<style>

.title h1 {
    font-size: 40px;
    font-weight: bold;
    color: #fff;
    line-height: 52px !important;
    margin-bottom: 8px;
    text-transform: uppercase;
}

h4{
    font-size:33px;
    font-weight: 500;
    margin:0px 0px 6px 0px;
    color: #fff;
}

 h5{
    font-size:20px;
    font-weight: 200;
    margin-bottom: 5px;
    color: #fff;
    text-transform: capitalize;
    margin:0px 0px 10px 0px
   
}


</style>

    <div class="col-12">
        <div class=" title">
            <h1> </h1>
            <h4>Global Virtual Summits</h4>
        </div>
        <i class="fa fa-calendar" aria-hidden="true"></i>
        
       
        </div>
  `;

class EmployeeCard extends HTMLElement{
    constructor(){
        super();
        this.attachShadow({ mode: 'open'});
        this.shadowRoot.appendChild(template.content.cloneNode(true));
        this.shadowRoot.querySelector('h1').innerText = this.getAttribute('title');
       
        //this.shadowRoot.querySelector('img').src = this.getAttribute('avatar');   
    }

 connectedCallback(){
    this.h1 = this.getAttribute("title")
 
   
    this.render();
  }
 
  render(){
    this.h1;

  }
}
window.customElements.define('employee-card', EmployeeCard);




//==============================================================================
//=============DATA GRAPHIC FOOTER NOTE=========================================


const template2 = document.createElement('template');
template2.innerHTML = `

<style>
p{
    font-size: 16px;
    letter-spacing: 0;
    line-height: 25px;
    color: #000000;
    margin-bottom: 0;
    text-align:center;
    width:100%
}   

a{
    text-decoration:none;
}



</style>

    
    <p class="infolink mt-2">Source:<a href=" " target="_blank" class="linkblue"> StrategyR</a></p>
    
  `;

class DgFooter extends HTMLElement{
    constructor(){
        super();
        this.attachShadow({ mode: 'open'});
        this.shadowRoot.appendChild(template2.content.cloneNode(true));
      //  this.shadowRoot.querySelector('h1').innerText = this.getAttribute('title');
       
        this.shadowRoot.querySelector('a').href = this.getAttribute('glink');   
    }

 connectedCallback(){
    this.a = this.getAttribute("glink")
 
   
    this.render();
  }
 
  render(){
    this.a;

  }
}
window.customElements.define('dgfooter-card', DgFooter);


//=================================================================================

class EventCollapseComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
     
    <div id="collapseblock">
      <div class="d-flex justify-content-center align-items-center my-2 w-100 ">
        <a class="mb-0 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white font-display4 recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false"  aria-controls="collapseExample" /> Program Details </a>
        <a class="mb-0 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white font-display4 recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false"  aria-controls="collapseExample" > SPONSOR ROI </a>
        <a class="mb-0 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white font-display4 recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"  aria-controls="collapseExample" >
        RECOMMEND AN EXPERT </a>
      </div>
      <!---->
      <div class=" w-100 mx-0 mt-3">
        
        <!---RECOMMEND AN ENXPORT--->
        <div class="collapse  mt-0 " id="collapseExample"  data-parent="#collapseblock">  

          

          <div class="row mx-0">
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3 border shadow-sm bg-white ">
              <div class="w-100">
                <h3 class="font-display4 mt-3 p-3 mb-4">Please nominate another domain expert you know or self-nominate for a prompt consideration and on-boarding. You must be first registered and logged-in on our service to nominate.</h3>
              </div>
              

            <div class="w-100">
              <form action="sponsor.html  " method="POST" id="formblock">

                <div class=" w-100 ml-1 pl-1 pb-2 d-flex align-items-center  justify-content-start my-1">
                  <!--input type="checkbox" class="form-check-input" id="exampleCheck1"--->
                  <label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1 font-display4 main-font-color" for="exampleCheck1">NOMINATOR</label>
                  </div>

                <div class="row mx-0">
                  <!-- Name -->
                  <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required="">
                  </div>
                  <!-- Name -->
                  <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required="">
                  </div>

                   <!-- Name -->
                   <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0 " type="text" placeholder="LinkedIn Link" required="">
                  </div>
                  <!-- Name -->
                  <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0" type="text" placeholder="Position " required="">
                  </div>


                   <!-- Email -->
                   <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0" type="text" placeholder=" Company  " required="">
                  </div>
                  <!-- subject -->
                  <div class="col-sm-6 mb-3 px-1">
                    <span class="formmandatory">* </span>
                    <input class="form-control w-100 border-radius-0" type="email" placeholder="Email ">
                  </div>
                      
                </div>

<br/>
                <div class=" w-100 ml-1 pl-1 pb-2 d-flex align-items-center  justify-content-start my-1">
                <!--input type="checkbox" class="form-check-input" id="exampleCheck1"--->
                <label class="form-check-labe  font-weight-bold mb-0 mt-1 font-display4 main-font-color" for="exampleCheck1">RECOMMENDED DOMAIN EXPERT</label>
                </div>


                <div class="row mx-0">
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required="">
                </div>
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required="">
                </div>

                 <!-- Name -->
                 <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="LinkedIn Link" required="">
                </div>
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Position " required="">
                </div>


                 <!-- Email -->
                 <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder=" Company  " required="">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="email" placeholder="Email ">
                </div>
                  <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory</p>
                  <!-- Submit Button -->
                  <div class="col-12 text-center my-4">
                    <button class="btn btn-main-md mx-auto py-2 px-2 ">Submit</button>
                  </div>
                </div>

              </form>
            </div>
            </div>
          </div>
        </div>


        <!---SPONSER--->
        <div class="collapse  mt-0  " id="collapseExample2"  data-parent="#collapseblock">  
          <div class="w-100 mx-0">
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3 border shadow-sm bg-white ">
            <form action="sponsor.html  " method="POST" id="formblock">
<h3 class="font-display4 mt-3 p-3 mb-4"">EVOLV™ offers compelling value propositions to supporting entities.</h3>

              <div class=" w-100 ml-4 pl-1 pb-2 d-flex align-items-center  justify-content-start my-1">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-labe ml-2 font-weight-bold mb-0 mt-1" for="exampleCheck1">Request Sponsorship Details</label>
                </div>

              <div class="row mx-0">
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required="">
                </div>
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required="">
                </div>


                  <!-- Email -->
                  <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder=" Position  " required="">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Company ">
                </div>
                <!-- Email -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="email" placeholder=" Email " required="">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <input class="form-control w-100 border-radius-0" type="number" placeholder="Phone No">
                </div>
                <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory</p>
                <!-- Submit Button -->
                <div class="col-12 text-center my-4">
                  <button class="btn btn-main-md mx-auto py-2 px-2 ">Submit</button>
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>


        <!---PRGOARM DETAILS--->
        <div class="collapse  mt-0  " id="collapseExample3"  data-parent="#collapseblock">  
          <div class="w-100 mx-0">
            <div class="col-xl-10 col-lg-9 col-md-12 col-12 mx-auto p-3 border shadow-sm bg-white ">
            <form action="sponsor.html  " method="POST" id="formblock">
              <h3 class="font-display4 mt-3 p-3 mb-4 text-center">PROGRAM DETAILS FORTHCOMING<br/>
                SIGN-UP TO BE INFORMED WHEN REGISTRATIONS OPEN</h3>

              
              <div class="row mx-0">
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0 " type="text" placeholder="First Name" required="">
                </div>
                <!-- Name -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Last Name" required="">
                </div>


                  <!-- Email -->
                  <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder=" Designation  " required="">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Company Name " required>
                </div>

                 <!-- Email -->
                 <div class="col-sm-12 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Company URL" required="">
                </div>
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <span class="formmandatory">* </span>
                  <input class="form-control w-100 border-radius-0" type="text" placeholder="Work Email ">
                </div>
                
                <!-- subject -->
                <div class="col-sm-6 mb-3 px-1">
                  <input class="form-control w-100 border-radius-0" type="number" placeholder="Phone">
                </div>
                <p class="text-xl-left text-lg-left ml-2 text-md-left text-sm-left text-center mt-0  mandatory-msg ">Fields marked with <span style="color:red">*</span> are mandatory</p>
                <!-- Submit Button -->
                <div class="col-12 text-center my-4">
                  <button class="btn btn-main-md mx-auto py-2 px-2 ">Submit</button>
                </div>
              </div>
            </form>
          </div>
          </div>
        </div>
      </div>



      </div>

      
      `;


  }

}



customElements.define('eventcolapse-component', EventCollapseComponent);
