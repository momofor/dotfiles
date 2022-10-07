use std::fmt::{self, Display};

#[derive(Debug, Clone, Copy)]

struct Vector3<A, B, C> {
    x: A,
    y: B,
    z: C,
}
impl<A, B, C> Vector3<A, B, C> {
    fn new(x: A, y: B, z: C) -> Vector3<A, B, C> {
        Vector3 { x, y, z }
    }
}

impl<A, B, C> Into<Vec<(A, B, C)>> for Vector3<A, B, C> {
    fn into(self) -> Vec<(A, B, C)> {
        vec![(self.x, self.y, self.z)]
    }
}

trait Test {
    fn addu(a: i32, x: i32) -> i32;
}

impl<A, B, C> Test for Vector3<A, B, C> {
    fn addu(a: i32, x: i32) -> i32 {
        a + x
    }
}

impl<A, B, C> Display for Vector3<A, B, C>
where
    A: Display,
    B: Display,
    C: Display,
{
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "({},{},{})", self.x, self.y, self.z)
    }
}

fn main() {
    let noice = Vector3::new(10.6, 5, 6.5);
    let cool: Vec<(f64, i32, f64)> = noice.into();
    let test = Vector3::new(10, 5, 6);
    print!("noice: {}", noice);
    let noice = ("hello", "bye");
}
