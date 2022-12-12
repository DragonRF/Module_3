let money = 10000;
const buyACar = (car: any) => {
    return new Promise(((resolve, reject) => {
        setTimeout(() => {
            if (money >= 10000) {
                resolve("can buy " + car);
            } else {
                reject("Do not enough money");
            }
        }, 100);
    }))
}
money = 50000
let promise = buyACar("Vinfast").then(value => {
    console.log(value);
}) .catch((error) => {
    console.log(error);
})

console.log(promise)