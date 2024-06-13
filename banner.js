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
        <h5></h5>
       
        </div>
  `;

class EmployeeCard extends HTMLElement{
    constructor(){
        super();
        this.attachShadow({ mode: 'open'});
        this.shadowRoot.appendChild(template.content.cloneNode(true));
        this.shadowRoot.querySelector('h1').innerText = this.getAttribute('title');
        this.shadowRoot.querySelector('h5').innerText = this.getAttribute('date');
        //this.shadowRoot.querySelector('img').src = this.getAttribute('avatar');   
    }

 connectedCallback(){
    this.h1 = this.getAttribute("title")
    this.h5 = this.getAttribute("date")
   
    this.render();
  }
 
  render(){
    this.h1;
    this.h5;
  }
}
window.customElements.define('employee-card', EmployeeCard);