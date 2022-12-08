let student = [
    {
        name: "Ha",
        gender: 'female',
        poin: 8
    },
    {
        name: "Huy",
        gender: 'male',
        poin: 9
    },
    {
        name: "Hung",
        gender: 'male',
        poin: 7
    },
    {
        name: "Phuong",
        gender: 'female',
        poin: 6
    },
    {
        name: "Huyen",
        gender: 'female',
        poin: 10
    },
    {
        name: "Long",
        gender: 'male',
        poin: 5
    },
    {
        name: "Luan",
        gender: 'male',
        poin: 10
    },
    {
        name: "Linh",
        gender: 'female',
        poin: 8
    }

];

    let male = [];
    let avg = 0;
    for (let i = 0; i < student.length; i++) {
        if (student[i].gender === 'male') {
                avg += student[i].poin
            male.push(i);
        }
            }
    let maleAVG = avg / male.length;
    console.log('Diem trung binh cong cua cac hoc sinh nam: ' + maleAVG)

let female = [];
let avgf = 0;
for (let i = 0; i < student.length; i++) {
    if (student[i].gender === 'female') {
        avgf += student[i].poin
        female.push(i);
    }
}
let femaleAVG = avgf / female.length;
console.log('Diem trung binh cong cua cac hoc sinh nu: ' + femaleAVG)
