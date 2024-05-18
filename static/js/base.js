const hamburger = document.getElementById("hamburger");
const navMenu = document.getElementById("nav-menu");
const navLinks = document.querySelectorAll(".nav-link");
const navItems = document.querySelectorAll(".nav-item");

function mobileMenu() {
    hamburger.classList.toggle("active");
    navMenu.classList.toggle("active");
}

hamburger.addEventListener("click", mobileMenu);

navLinks.forEach((link, index) => {
    link.addEventListener("click", () => {
        navItems.forEach(item => item.classList.remove("active"));
        navItems[index].classList.add("active");
        closeMenu();
    });
});

function closeMenu() {
    hamburger.classList.remove("active");
    navMenu.classList.remove("active");
}


