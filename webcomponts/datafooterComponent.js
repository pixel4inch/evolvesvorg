const template = document.createElement('template');
template.innerHTML = `

<style>

p{
    color:#000;

}

a{
    color:blue;
}

</style>

    <div class="col-12">
                <p class="infolink mt-2">Data Provider:<a href=" " target="_blank" class="linkblue"> StrategyR</a></p>
    </div>
  `;

class DgFooterLink extends HTMLElement{
    constructor(){
        super();
        this.attachShadow({ mode: 'open'});
        this.shadowRoot.appendChild(template.content.cloneNode(true));
       // this.shadowRoot.querySelector('h1').innerText = this.getAttribute('title');
        this.shadowRoot.querySelector('a').href = this.getAttribute('Glink');   
    }

 connectedCallback(){
    this.a = this.getAttribute("Glink")
    this.render();
  }
 
  render(){
    this.a;

  }
}
window.customElements.define('dgfooterlink', DgFooterLink);