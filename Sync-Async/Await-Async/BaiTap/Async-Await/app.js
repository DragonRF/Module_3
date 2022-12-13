// async function getDivision(a,b){
//     if (a > b)
//         return(a + ' la so lon nhat');
//     return new Error('Math Error')
// }
//
// async function f(){
//     try{
//         let result = await getDivision(2,3);
//         console.log(result)
//     }
//     catch(error){
//         console.log(error);
//     }
// }
// f();
//
// const promise = (a, b)=> {
//     return new Promise((resolve, reject) => {
//         setTimeout(() => {
//             if (a > b) {
//                 resolve(a + ' la so lon nhat');
//             } else {
//                 reject(new Error("Math error"));
//             }
//         });
//     });
// };
// //
// promise(2, 0).then(x => console.log(x))
//     .catch(error => console.log(error));


async function getMax(arr){
    if (arr instanceof Array){
        let max = arr[0];
        for (let i = 0;i < arr.length; i++){
            if (arr[i] > max)
                max = arr[i];
        }
        return max
    }
    throw new Error('Input data is incorrect')
}
async function f(){
    try{
        let result = await getMax([1,2,3,4,5])
        console.log(result)
    }catch (error){
        console.log(error)
    }
}
f();