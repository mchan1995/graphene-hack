
function makebar() {
new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Water", "Salt Water", "Tears", "Vodka", "Sweat"],
      datasets: [
        {
          label: "Probability",
          backgroundColor: ["#EB3052", "#22283E","#EB3052","#22283E","#EB3052"],
          data: [10,25,30,80,7]
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