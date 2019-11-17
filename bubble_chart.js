function makebubble() {
new Chart(document.getElementById("bubble-chart"), {
    type: 'bubble',
    data: {
      datasets: [
        {
          label: ["90% Confidence Water"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 20000,
            y: 6,
            r: 50
          }]
        }, {
          label: ["90% Confidence Vodka"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 200000,
            y: 7.526,
            r: 20
          }]
        }, {
          label: ["Data Point"],
          backgroundColor: "rgba(235,48,81,0.2)",
          borderColor: "rgba(235,48,81,0.2)",
          data: [{
            x: 70000,
            y: 9,
            r: 3
          }]
        },
        {
          label: ["90% Confidence Whisky"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 100000,
            y: 15,
            r: 150
          }]
        }, {
          label: ["90% Confidence Milk"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 30000,
            y: 40,
            r: 100
          }]
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: 'AI Matrix'
      }, scales: {
        yAxes: [{
          ticks: {
                    suggestedMin: 0,
                    suggestedMax: 50
                },
          scaleLabel: {
            display: true,
            labelString: "Speed"
          }
        }],
        xAxes: [{
          ticks: {
                    suggestedMin: 0,
                    suggestedMax: 250000
                },
          scaleLabel: {
            display: true,
            labelString: "Conductivity"
          }
        }]
      }
    }
});
}