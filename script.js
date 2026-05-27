// CHECKLIST INTERACTION

const checklistItems = document.querySelectorAll(".checklist-item");

checklistItems.forEach(item => {

    item.addEventListener("click", () => {

        const circle = item.querySelector(".check-circle");
        const icon = item.querySelector(".check-icon");

        circle.classList.toggle("active");

        if (circle.classList.contains("active")) {

            circle.style.backgroundColor = "#af101a";
            icon.style.color = "#ffffff";

        } else {

            circle.style.backgroundColor = "transparent";
            icon.style.color = "#af101a";
        }
    });
});


// STICKY HEADER SHADOW

window.addEventListener("scroll", () => {

    const header = document.querySelector(".main-header");

    if (window.scrollY > 20) {

        header.style.boxShadow = "0 2px 10px rgba(0,0,0,0.1)";

    } else {

        header.style.boxShadow = "none";
    }
});
