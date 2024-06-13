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
    text-aling:center;
    width:100%
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

    <div class="col-12 w-100">
        <div class=" title">
            <h1 class="tx> </h1>
            <!--h4>Global Virtual Summits</h4-->
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
    font-size: 15px;
    letter-spacing: 0;
    line-height: 25px;
    color: #000000;
    margin-bottom: 0;
    text-align:right  ;
    margin-right:10px
    width:100%;
    margin-top:10px; 
}   

a{
    text-decoration:none;
}



</style>


	


    
    <p class="infolink mt-1">Source:<a href=" " target="_blank" class="linkblue"> StrategyR</a></p>
    
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
        <div class="d-flex justify-content-center align-items-center flex-wrap flex-coloum flex-lg-row my-2 w-100 ">
              <a class="my-2 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white  recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample3" role="button" aria-expanded="false"  aria-controls="collapseExample" /> Program Details </a>
              <a class="my-2 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white  recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample2" role="button" aria-expanded="false"  aria-controls="collapseExample" > SPONSOR ROI </a>
              <a class="my-2 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white  recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"  aria-controls="collapseExample" >
              RECOMMEND AN EXPERT </a>
              <a class="my-2 equal-button btn d-block btn-sm shadow   p-3  mx-3 main-bg-color text-white  recommeded_export" target="_blank" data-toggle="collapse" href="#collapseExample4" role="button" aria-expanded="false"  aria-controls="collapseExample"
              WHAT’S TRENDING </a>
          </div>
  <!---->
      <div class=" w-100 mx-0 mt-3">
        
        <!---RECOMMEND AN ENXPORT--->
        <div class="collapse  mt-0 " id="collapseExample"  data-parent="#collapseblock">  

            <iframe src="https://www.evolv.cc/Add_Recommend.asp" class="recommend-frame"></iframe>
        </div>

        <!---SPONSER--->
        <div class="collapse  mt-0  " id="collapseExample2"  data-parent="#collapseblock">  
            <iframe src="https://www.evolv.cc/Add_sponsors.asp" class="sponsors-frame"></iframe>
        </div>

        <!---PRGOARM DETAILS--->
        <div class="collapse  mt-0  " id="collapseExample3"  data-parent="#collapseblock">  
            <iframe src="https://www.evolv.cc/Add_Program_Details.asp" class="programdetial-frame"></iframe>
        </div>

        </div>
        </div>
      
      `;


  }

}



customElements.define('eventcolapse-component', EventCollapseComponent);
