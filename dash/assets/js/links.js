document.addEventListener("DOMContentLoaded", () => {
  const STROBE_jl_link = document.getElementById("STROBE.jl-link");

  STROBE_jl_link.addEventListener("click", (event) => {
    event.preventDefault();
    const url = STROBE_jl_link.getAttribute("href");
    window.open(url, "_blank");
  });

  const fab_link = document.getElementById("fab-link");

  fab_link.addEventListener("click", (event) => {
    event.preventDefault();
    const url = fab_link.getAttribute("href");
    window.open(url, "_blank");
  });

  const footer_link_1 = document.getElementById("footer-link-1");

  footer_link_1.addEventListener("click", (event) => {
    event.preventDefault();
    const url = footer_link_1.getAttribute("href");
    window.open(url, "_blank");
  });

  const footer_link_2 = document.getElementById("footer-link-2");

  footer_link_2.addEventListener("click", (event) => {
    event.preventDefault();
    const url = footer_link_2.getAttribute("href");
    window.open(url, "_blank");
  });
});
