
function makebar() {
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Almond Milk", "Salt Water", "Olive Oild", "Soil", "Suger Water","Tea","Water","Orange Juice"],
      datasets: [
        {
          label: "Probability",
          backgroundColor: ["#EB3052", "#22283E","#EB3052","#22283E","#EB3052","#22283E","#EB3052", "#22283E"],
          data: [10,25,30,80,7,10,12,14]
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: 'Probability'
      }
    }
});

}