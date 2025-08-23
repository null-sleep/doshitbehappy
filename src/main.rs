mod heatmap {
    
    #[derive(Debug, Clone, PartialEq)]
    pub struct Heatmap {
        pub name: String,
        pub data: Vec<Vec<DataPoint>>,
        pub metadata: Option<Metadata>,
    }
    
    #[derive(Debug, Clone, Copy, PartialEq, PartialOrd)]
    pub struct DataPoint {
        pub date: u64,
        pub value: f64,
    }
    
    #[derive(Debug, Clone, PartialEq, Eq)]
    pub struct Metadata {
        pub rows: usize,
        pub cols: usize,
        pub row_label: Option<String>,
        pub col_label: Option<String>,
    }

}

fn main() {
    println!("Hello, world!");
}
