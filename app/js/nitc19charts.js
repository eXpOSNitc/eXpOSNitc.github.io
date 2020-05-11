var ctx = document.getElementById('nitc19phase').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Phase 1', 'Phase 2', 'Phase 3', 'Phase 4', 'Phase 5', 'Phase 6', 'Phase 7', 'Phase 8'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55","#f88379", "#e9b872", "#fc6471", "#c0a9b0", "#e55381", "#efc2ae"],
            data: [2, 2, 4, 8, 21, 9, 7, 5]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'right',
        }
    }
});
var ctx = document.getElementById('nitc19time').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['<5 hours', '5-10 hours', '10-15 hours', '>15 hours'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381","#f88379"],
            data: [3,11,26,18]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19timephase5').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['<5 hours', '5-10 hours', '10-15 hours', '>15 hours'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381","#f88379"],
            data: [1,5,20,16]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/42*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19roadmap').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['100%', '>90%', '>75%', '>50%'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381","#f88379"],
            data: [25,29,4,18]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19roadmapphase5').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['100%', '>90%', '>75%', '>50%'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381","#f88379"],
            data: [20,20,2,0]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/42*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19theory').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Clear advantage in understanding theory', 'Minor advantage in understanding theory'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55"],
            data: [54,4]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19theoryphase5').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Clear advantage in understanding theory', 'Minor advantage in understanding theory'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55"],
            data: [39,3]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/42*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19coding').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Considerable improvement', 'Moderate improvement', 'No serious improvement'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381"],
            data: [25,30,3]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19codingphase5').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'pie',

    // The data for our dataset
    data: {
        labels: ['Considerable improvement', 'Moderate improvement', 'No serious improvement'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55", "#e55381"],
            data: [22,19,1]
        }]
    },

    // Configuration options go here
    options: {
        elements: {
                arc: {
                    borderWidth: 0.75,
                }
        },
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/42*100) + '%';
            }
          }
        },
        legend: {
            display: true,
            position: 'top',
        }
    }
});
var ctx = document.getElementById('nitc19bg').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
    data: {
        labels: ['Sufficient', 'Computer Organization/Hardware', 'Programming', 'Data Structures', 'Compilers'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55","#f88379", "#e9b872", "#fc6471"],
            data: [33,22,0,0,4]
        }]
    },

    // Configuration options go here
    options: {
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/58*100) + '%';
            }
          }
        },
        legend: {
            display: false
        }
    }
});
var ctx = document.getElementById('nitc19bgphase5').getContext('2d');
var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'bar',

    // The data for our dataset
    data: {
        labels: ['Sufficient', 'Computer Organization/Hardware', 'Programming', 'Data Structures', 'Compilers'],
        datasets: [{
            backgroundColor: ["#f42069", "#b4da55","#f88379", "#e9b872", "#fc6471"],
            data: [28,11,0,0,3]
        }]
    },

    // Configuration options go here
    options: {
        tooltips: {
          callbacks: {
            label: function(tooltipItem, data) {
              return data['labels'][tooltipItem['index']] + ': ' + Math.round(data['datasets'][0]['data'][tooltipItem['index']]/42*100) + '%';
            }
          }
        },
        legend: {
            display: false
        }
    }
});