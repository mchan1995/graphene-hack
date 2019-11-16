function makebubble() {
new Chart(document.getElementById("bubble-chart"), {
    type: 'bubble',
    data: {
      datasets: [
        {
          label: ["90% Confidence Water"],
          backgroundColor: "rgba(255,221,50,0.2)",
          borderColor: "rgba(255,221,50,1)",
          data: [{
            x: 20000,
            y: 6,
            r: 50
          }]
        }, {
          label: ["90% Confidence Vodka"],
          backgroundColor: "rgba(60,186,159,0.2)",
          borderColor: "rgba(60,186,159,1)",
          data: [{
            x: 200000,
            y: 7.526,
            r: 20
          }]
        }, {
          label: ["Data Point"],
          backgroundColor: "rgba(60,186,159,0.2)",
          borderColor: "rgba(60,186,159,1)",
          data: [{
            x: 70000,
            y: 9,
            r: 3
          }]
        },
        {
          label: ["90% Confidence Whisky"],
          backgroundColor: "rgba(0,0,0,0.2)",
          borderColor: "#000",
          data: [{
            x: 100000,
            y: 15,
            r: 150
          }]
        }, {
          label: ["90% Confidence Milk"],
          backgroundColor: "rgba(193,46,12,0.2)",
          borderColor: "rgba(193,46,12,1)",
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