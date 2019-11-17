
function makebar() {
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Almond Milk", "Salt Water", "Olive Oil", "Soil", "Suger Water","Tea","Water","Orange Juice"],
      datasets: [
        {
          label: "Probability",
          backgroundColor: ["#EB3052", "#22283E","#EB3052","#22283E","#EB3052","#22283E","#EB3052", "#22283E"],
          data: [7.77269,5.26099,5.6249,86.1268,5.20933,15.5578,0.207331,34.2519]
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