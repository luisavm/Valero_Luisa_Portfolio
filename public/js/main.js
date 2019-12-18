(()=> {
    console.log("fire");
    const HB = document.querySelector("#HB"),
          HBmenu = document.querySelector("#burgerCon"),
          lis = document.querySelectorAll(".li");

    function ocMenu() {
      HBmenu.classList.toggle("showHB");
      HB.classList.toggle("rotate");
    }

    HB.addEventListener("click", ocMenu);
    lis.forEach(li => 
      li.addEventListener("click", function() {
        HBmenu.classList.remove("showHB");
        HB.classList.remove("rotate");
      })
    );

    const homeHB = document.querySelector(".homeHB");

    if (homeHB === null) {
      console.log("no need for menu color change");
    } else {
      window.addEventListener('scroll', function () {
        if (window.pageYOffset >= 300) {
          homeHB.classList.add("dark");
        }
      });
  
      window.addEventListener('scroll', function () {
        if (window.pageYOffset <= 300) {
          homeHB.classList.remove("dark");
        }
      });
    }

    const contactB = document.querySelector("#conBut"),
          conForm = document.querySelector("#contactMe"),
          cloCon = document.querySelector(".close");

    if (contactB, cloCon, cloCon === null) {
      console.log("this page has no contact form");
    } else {
      function openCont() {
        conForm.classList.remove("hiddenCon");
      }
      function closeCont() {
        conForm.classList.add("hiddenCon");
      }
      contactB.addEventListener("click", openCont);
      cloCon.addEventListener("click", closeCont);
    }


    

})();