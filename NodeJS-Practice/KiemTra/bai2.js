let chuoi = "Aa11aA";

function isPalindrome(str) {

    let arr = str.split("");

    let firstCharacter = arr[0];
    let lastCharacter = arr[arr.length-1];

    if (firstCharacter === lastCharacter) {
        arr.shift();
        arr.pop();
        if (isEnd(arr)) {
            return true;
        } else {
            let newStr = arr.join("");
            return isPalindrome(newStr);
        }
    }

    return false;

}

function isEnd(arr) {
    return arr.length === 0 || arr.length === 1;
}


function main() {
    console.log(isPalindrome(chuoi));
}
main()