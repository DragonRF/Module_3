const axios = require('axios');
async function run(){
    let list = []

    await axios.get('https://jsonplaceholder.typicode.com/users/1').then((res)=> {
    list.push(res.data)
})
    await axios.get('https://jsonplaceholder.typicode.com/users/2').then((res)=> {
    list.push(res.data)
})
    await axios.get('https://jsonplaceholder.typicode.com/users/3').then((res)=> {
    list.push(res.data)
})
    await axios.get('https://jsonplaceholder.typicode.com/users/4').then((res)=> {
    list.push(res.data)
})
    await axios.get('https://jsonplaceholder.typicode.com/users/5').then((res)=> {
    list.push(res.data)
})
    console.log(list.filter(item => item.name.includes('le')))
}

run().then()