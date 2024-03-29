(() => {
    // try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
    popOver = document.querySelector('.popover');

    // const waypoint2 = new Waypoint({
    // //     // what element is this waypoint looking at?
    // //     // the handler will fire then it scrolls into view
    // element: document.getElementById('beer2'),
    // //     // what should we do when we hit the aypoint? this is up to you.
    // //     // you can trigger animation, do an Ajax call... whatever
    // handler: function(direction) {
    //     console.log('Scrolled to waypoint 2!')
    //     this.element.innerHTML += `
    //     <p>Added this with Waypoint! We are scrolling ${direction}</p>`;
    //   }
    // })

    // const waypoint3 = new Waypoint({
    //     // what element is this waypoint looking at?
    //     // the handler will fire then it scrolls into view
    //     element: document.getElementById('beer3'),
    //     // what should we do when we hit the aypoint? this is up to you.
    //     // you can trigger animation, do an Ajax call... whatever
    //     handler: function(direction) {
    //     console.log('Scrolled to waypoint 3!')
    //     },

    //     offset: 200
    // })

    function buildPopover(tbl_tips, el) {
        popOver.querySelector(".ipa-rating").textContent = tbl_tips.Title;
        popOver.querySelector(".ratings").src=`images/${tbl_tips.Image}`;
        popOver.querySelector(".beer-description").textContent = tbl_tips.Text;
    // show the popover
        popOver.classList.add('show-popover');
        el.appendChild(popOver);
    }


    // run the fetch API and get the DB data
    function fetchData() {
        let targetEl = this,
            url = `/svgdata/${this.dataset.target}`;

            
            fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);

                // populate the popover
                buildPopover(data, targetEl);
            })
            .catch((err) => console.log(err));
    }

    const svgGraphic = document.querySelector(".svg-wrapper");

    // svgGraphic.addEventListener("click", () => {
    //     console.log(this.querySelector('.svg-wrapper'));
    // })

    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));
})();