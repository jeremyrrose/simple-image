const button = document.querySelector("#button")

button.addEventListener("click", async (e) => {
  e.preventDefault();
  const form = document.querySelector("form");
  const userData = new FormData(form);
  console.dir(userData)
  const resp = await axios.post("https://simple-photo.herokuapp.com/photos", userData);
  console.log(resp);
});