fn main(){
    starkNet();
    myArr();
}

fn starkNet(){
    // Amount of  tokens HODLed by signer
    let starkToken = 1000;

    // Bonus for signer, after reaching a certain level
    let bonus = starkToken + 100;

    // StarkToken to Dollar
    let mut starkTodollar = 35;

    // StarkToken to Naira
    let mut starkToNaira = starkTodollar * 1400;
    
    // A condition to check if the signer is eligible for the bonus
    if starkToken == 1000 {
        let balance = starkToNaira + bonus;
        println!("You were gifted an extra bonus, Your Balance: {}", balance);
    } else {
        println!("Your balance: {}", starkToNaira);    
    }
}

fn myArr() {
    let mut a : Array<felt252> = ArrayTrait::new();
    a.append(10);
    a.append(12);
    a.append(14);

    let index_element = a.get(1);
    assert( *index_element.unwrap().unbox() ==12, 'Not it')
}

// fn numbers(){
//     const number: u8 = 3;
//     const small_number: u8 = 3_u8; //don't change the value of this constant
    
//     println!("NUMBER is {}", number.try_into().unwrap());
//     println!("SMALL_NUMBER is {}", small_number.try_into().unwrap());
// }

