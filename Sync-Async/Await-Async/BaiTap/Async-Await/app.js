async function getDivision(a,b){
    if (a > b)
        return(a + ' la so lon nhat');
    return new Error('Math Error')
}

async function f(){
    try{
        let result = await getDivision(2,3);
        console.log(result)
    }
    catch(error){
        console.log(error);
    }
}
f();

const promise = (a, b)=> {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (a > b) {
                resolve(a + ' la so lon nhat');
            } else {
                reject(new Error("Math error"));
            }
        });
    });
};
//
promise(2, 0).then(x => console.log(x))
    .catch(error => console.log(error));
