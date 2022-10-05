function atleastTwoCharacters(text)// takes a grp of characters which may or may not be word
{
    const letters = text.match(/[a-z]/gi) || [];//do a global search
    
    return letters.length>=2;
}
function absenceOfThreeConsecutiveCharacters(text)
{
    for(const character of text)
    {
        const occurances = Array.from(text).filter(v => v == character).length;

        if(occurances >=3)
        {
            return false;
        }
    }
    return true;
}

const checks = [atleastTwoCharacters,absenceOfThreeConsecutiveCharacters];
const textInput = document.querySelector(".text-input");
const wordCountElement = document.querySelector(".word-count");
const lowerCountElement = document.querySelector(".lower-count");
const spaceCountElement = document.querySelector(".space-count");
const uppercountElement = document.querySelector(".upper-count");
const totalCountElement = document.querySelector(".total-count");
const digitCountElement = document.querySelector(".digit-count");
const specialCountElement = document.querySelector(".special-count");


textInput.addEventListener("input",()=>
{
    const splitted = textInput.value.trim().split(/[\s-]/);
    const lowercase = (textInput.value.match(/[a-z]/g) || []).length;
    const spaceCount = (textInput.value.match(/\s+/g) || []).length;
    const uppercase = (textInput.value.match(/[A-Z]/g) || []).length;
    const digit = (textInput.value.match(/[0-9]/g) || []).length;
    const special = (textInput.value.match(/[!@#$%^&*()-_+={}|\\:;'"<>,.?/`~]/g) || []).length;

    let wordCount = 0;
    outer:
    for(const text of splitted)
    {
        for(const check of checks)
        {
            if(!check(text))
            {
                continue outer;
            }
        }
        wordCount++;
    }
    wordCountElement.textContent = wordCount;
    lowerCountElement.textContent = lowercase;
    spaceCountElement.textContent = spaceCount;
    uppercountElement.textContent = uppercase;
    totalCountElement.textContent = lowercase+uppercase;
    digitCountElement.textContent = digit;
    specialCountElement.textContent = special;

});