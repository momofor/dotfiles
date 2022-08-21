pub mod bubblesort {
    use crate::Sorter;
    #[derive(Debug)]
    pub struct BubbleSort;

    impl Sorter for BubbleSort {
        fn sort<T>(slice: &mut [T])
        where
            T: Ord,
        {
            for p in 0..slice.len() {
                let mut sorted = true;
                for i in 0..(slice.len() - 1) - p {
                    if slice[i] > slice[i + 1] {
                        slice.swap(i, i + 1);
                        sorted = false;
                    }
                }
                if sorted {
                    return;
                }
            }
        }
    }
}

#[test]
fn bubble_sorter_works() {
    use crate::{bubblesort::bubblesort::BubbleSort, Sorter};
    let mut test_vec = vec![5, 0, 6, 11, 75, 2];
    BubbleSort::sort(&mut test_vec);
    assert_eq!(vec![0, 2, 5, 6, 11, 75], test_vec);
}
