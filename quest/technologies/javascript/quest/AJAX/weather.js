const latitude = document.getElementById("latitude");
const longitude = document.getElementById("longitude");
const target = document.getElementById("weatherResult");
const button = document.getElementById("button");

//現在の天気を取得する
async function getWeatherData(lat, lon) {
  try {
    const apiKey = "6ce2814b19862546eed33b2be26eecc4";
    const requestUrl = `https://api.openweathermap.org/data/2.5/weather?&units=metric&lat=${lat}&lon=${lon}&appid=${apiKey}&lang=ja`;
    const res = await fetch(requestUrl);
    const data = await res.json();
    let name = document.createElement("div");
    let temp = document.createElement("div");
    let weather = document.createElement("div");
    name.textContent = `地名: ${data.name}`;
    temp.textContent = `気温: ${data.main.temp}℃`;
    weather.textContent = `天気: ${data.weather[0].description}`;
    target.appendChild(name);
    target.appendChild(temp);
    target.appendChild(weather);
  } catch (error) {
    console.error("天気情報の取得に失敗しました。:", error);
    let errorText = document.createElement("div");
    errorText.textContent = "天気情報の取得に失敗しました。";
    target.appendChild(errorText);
  }
}

button.addEventListener("click", (e) => {
  e.preventDefault();
  target.innerHTML = ""
  const lat = latitude.value;
  const lon = longitude.value;
  getWeatherData(lat, lon);
  latitude.value = ""
  longitude.value = ""
});
