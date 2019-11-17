
function makebar() {
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Almond Milk", "Salt Water", "Olive Oild", "Soil", "Suger Water","Tea","Water","Orange Juice"],
      datasets: [
        {
          label: "Probability",
          backgroundColor: ["#EB3052", "#22283E","#EB3052","#22283E","#EB3052","#22283E","#EB3052", "#22283E"],
          data: [x1,x2,x3,x4,x5,x6,x7,x8]
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
