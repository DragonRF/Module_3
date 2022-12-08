// let str = "I love you and our son";
//
// console.log(str.split("ou").length - 1);
//
// console.log(str.split("o").length - 1);

let str = `aabacdbc`
let count = 0
let flag = true
for (let i = 0; i < str.length; i++) {
    count = 0
    flag = true
    for (let j = 0; j < str.length; j++) {
        if (str[i]===str[j]) {
            count++
        }
    }
    for (let k =0;k<i;k++){
        if (str[i]===str[k]) {
            flag = false;
        }
    }
    if (flag === true){
        console.log(`${str[i]} xuat hien ${count} lan`)
    }
}

