axios = require('axios');

function getPictureDay() {
    return new Promise(function (resolve) {
        axios.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
            .then(function (json) {
                resolve(json.data);
            });
    });
}

getPictureDay().then(result => {
    console.log(result);
})
