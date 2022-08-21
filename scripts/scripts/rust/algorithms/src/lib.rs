pub trait Sorter {
    fn sort<T>(slice: &mut [T])
    where
        T: Ord;
}

pub fn sort<T, S>(slice: &mut [T])
where
    T: Ord,
    S: Sorter,
{
    S::sort(slice);
}

mod bubblesort;

#[cfg(test)]
mod tests {
    use super::*;

    struct StdSort;
    impl Sorter for StdSort {
        fn sort<T>(slice: &mut [T])
        where
            T: Ord,
        {
            slice.sort();
        }
    }

    #[test]
    fn std_sorter_works() {
        let mut test_vec = vec![5, 0, 6, 11, 75, 2];
        StdSort::sort(&mut test_vec);
        assert_eq!(vec![0, 2, 5, 6, 11, 75], test_vec);
    }
}
