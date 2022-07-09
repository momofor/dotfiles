use std::fmt::{self, Display};

#[derive(Debug, Clone)]
struct Vector3<A, B, C> {
    x: A,
    y: B,
    z: C,
}

impl Vector3<usize, usize, usize> {
    fn new<A, B, C>(x: A, y: B, z: C) -> Vector3<A, B, C> {
        Vector3 { x, y, z }
    }
}

impl Into<Vec<usize>> for Vector3<usize, usize, usize> {
    fn into(self) -> Vec<usize> {
        vec![self.x as usize, self.y as usize, self.z as usize]
    }
}

trait test {
    fn addu(a: i32, x: i32) -> i32;
}

impl test for Vector3<usize, usize, usize> {
    fn addu(a: i32, x: i32) -> i32 {
        a + x
    }
}

impl Display for Vector3<usize, usize, usize> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "({},{},{})", self.x, self.y, self.z)
    }
}

fn main() {
    let noice = Vector3::new(10, 5, 6);
    let tes = noice.clone();
    let cool: Vec<usize> = noice.into();
    println!("noice is: {}", tes);

    cool.iter()
        .map(|x| println!("My value is: {}", x))
        .collect::<Vec<_>>();
}
