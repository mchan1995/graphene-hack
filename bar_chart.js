
function makebar() {
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Water", "Salt Water", "Tears", "Vodka", "Sweat"],
      datasets: [
        {
          label: "Probability",
          backgroundColor: ["#EB3052", "#22283E","#EB3052","#22283E","#EB3052"],
          data: [x1,x2,x3,x4,x5]
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
