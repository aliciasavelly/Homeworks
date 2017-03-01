document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const handleFavForm = (e) => {
    e.preventDefault();

    const favInput = document.querySelector(".favorite-input");
    const fav = favInput.value;
    favInput.value = "";

    const li = document.createElement("li");
    li.textContent = fav;
    const ul = document.getElementById("sf-places");

    ul.appendChild(li);
  };

  const listSubmit = document.querySelector(".favorite-submit");
  listSubmit.addEventListener("click", handleFavForm);

  // adding new photos

  // --- your code here!

  const toggleNewPhotoForm = (e) => {

    const photoFormDiv = document.querySelector(".photo-form-container")
    if (photoFormDiv.className === "photo-form-container") {
      photoFormDiv.className = "photo-form-container hidden";
    } else {
      photoFormDiv.className = "photo-form-containe";
    }
  }

  const photoShowButton = document.querySelector(".photo-show-button");
  photoShowButton.addEventListener("click", toggleNewPhotoForm);

  const handleNewPhotoForm = (e) => {
    e.preventDefault();

    const photoUrlInput = document.querySelector(".photo-url-input");
    const photoUrl = photoUrlInput.value;
    photoUrlInput.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const li = document.createElement("li");
    li.appendChild(newImg);

    const ul = document.querySelector(".dog-photos");
    ul.appendChild(li);
  }

  const photoSubmitButton = document.querySelector(".photo-url-submit");
  photoSubmitButton.addEventListener("click", handleNewPhotoForm);
});
