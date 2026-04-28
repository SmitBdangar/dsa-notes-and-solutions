use std::io::{self, Read};
fn main() {
    let mut input = String::new();
    io::stdin().read_to_string(&mut input).unwrap();
    let mut iter = input.split_whitespace();
    let t: usize = iter.next().unwrap().parse().unwrap();

    for _ in 0..t {
        solve(&mut iter);
    }
}

# fn main(){
#  let mut s=String::new();stdin().read_to_string(&mut s).unwrap();
#  let mut it=s.split_whitespace();
#  let t:usize=it.next().unwrap().parse().unwrap();
#  let mut o=String::new();
#  for _ in 0..t{
#   let n:usize=it.next().unwrap().parse().unwrap();
#   let mut a=Vec::new();
#   for _ in 0..n{a.push(it.next().unwrap().parse::<i64>().unwrap());}
#   let mut i=0;let mut r=0;
#   while i<n{
#    r+=a[i];
#    i+=1;
#   }
#   o.push_str(&(r.to_string()));o.push('\n');
#  }
#  print!("{}",o);
# }


fn solve(iter: &mut std::str::SplitWhitespace) {
    let n: usize = iter.next().unwrap().parse().unwrap();
    let mut arr = Vec::with_capacity(n);
    for _ in 0..n {
        let val: i64 = iter.next().unwrap().parse().unwrap();
        arr.push(val);
    }
    let mut sum = 0i64;
    for x in &arr {
        sum += *x;
    }
    println!("{}", sum);
}
fn gcd(mut a: i64, mut b: i64) -> i64 {
    while b != 0 {
        let temp = b;
        b = a % b;
        a = temp;
    }
    a
}
fn mod_pow(mut base: i64, mut exp: i64, modu: i64) -> i64 {
    let mut result = 1;
    base %= modu;
    while exp > 0 {
        if exp % 2 == 1 {
            result = result * base % modu;
        }
        base = base * base % modu;
        exp /= 2;
    }
    result
}
