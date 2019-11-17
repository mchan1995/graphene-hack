function makebubble() {
new Chart(document.getElementById("bubble-chart"), {
    type: 'bubble',
    data: {
      datasets: [
        {
          label: ["90% Confidence Almond Milk"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 10000,
            y: 0.163,
            r: 40
          }]
        }, {
          label: ["90% Confidence Salt Water"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 20000,
            y: 0.26,
            r: 30
          }]
        }, {
          label: ["Data Point"],
          backgroundColor: "rgba(235,48,81,0.2)",
          borderColor: "rgba(235,48,81,0.2)",
          data: [{
            x: 10000,
            y: 0.2,
            r: 7
          }]
        },
        {
          label: ["90% Confidence Olive Oil"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 100,
            y: 0.03,
            r: 20
          }]
        },
        {
          label: ["90% Confidence Soil"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 11000,
            y: 0.5,
            r: 26
          }]
        },
        {
          label: ["90% Confidence Suger Water"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 7000,
            y: 0.04,
            r: 30
          }]
        },
        {
          label: ["90% Confidence Tea"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 8000,
            y: 0.54,
            r: 40
          }]
        },
        {
          label: ["90% Water"],
          backgroundColor: "rrgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 6000,
            y: 0.24,
            r: 30
          }]
        },{
          label: ["90% Confidence Orange Juice"],
          backgroundColor: "rgba(34,40,62,0.2)",
          borderColor: "rgba(34,40,62,0.2)",
          data: [{
            x: 34000,
            y: 0.8,
            r: 20
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
                    suggestedMax: 1
                },
          scaleLabel: {
            display: true,
            labelString: "Conductivity [MOhm]"
          }
        }],
        xAxes: [{
          ticks: {
                    suggestedMin: 0,
                    suggestedMax: 30000
                },
          scaleLabel: {
            display: true,
            labelString: "Speed"
          }
        }]
      }
    }
});
}