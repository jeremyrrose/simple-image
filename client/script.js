const button = document.querySelector("#button")

button.addEventListener("click", async (e) => {
  e.preventDefault();
  const form = document.querySelector("form");
  const userData = new FormData(form);
  console.dir(userData)
  const resp = await axios.post("http://localhost:3000/photos", userData);
  console.log(resp);
});