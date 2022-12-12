let money = 0;
const buyCar = (car) => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (money >= 10000) {
                resolve(`Du tien de mua ${car}`)
            } else {
                reject(`Ban Ngheo VV`)
            }
        }, 100)
    })
}

money = 10000

const promise = buyCar('Vinfast').then(value => {
    console.log(value)
}, error => {
    console.log(error)
})