document.addEventListener("DOMContentLoaded", function () {
  const searchInput = document.getElementById("searchInput");
  const venueCards = document.querySelectorAll(".venue-card");

  // Filter venues by name
  searchInput.addEventListener("keyup", function () {
    const filter = this.value.toLowerCase();
    venueCards.forEach(card => {
      const venueName = card.querySelector("h2").textContent.toLowerCase();
      card.style.display = venueName.includes(filter) ? "block" : "none";
    });
  });

  // Click feedback on action links
  const actionLinks = document.querySelectorAll(".action-link");
  actionLinks.forEach(link => {
    link.addEventListener("click", function (event) {
      alert("Redirecting to: " + this.textContent);
      // Optional: prevent redirect for demo
      // event.preventDefault();
    });
  });
});
