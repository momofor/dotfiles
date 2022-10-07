use hyper::{body::HttpBody, Body, Client, Method, Request, Uri};
#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let req = Request::builder()
        .method(Method::POST)
        .uri("http://httpbin.org/post")
        .header("content-type", "application/json")
        .body(Body::from(r#"{"library":"hyper"}"#))?;

    let client = Client::new();

    // POST it...
    let resp = client.request(req).await?;

    let ip_fut = async {
        let resp = client
            .get(Uri::from_static("http://httpbin.org/ip"))
            .await?;
        hyper::body::to_bytes(resp.into_body()).await
    };

    let headers_fut = async {
        let resp = client
            .get(Uri::from_static("http://httpbin.org/headers"))
            .await?;
        hyper::body::to_bytes(resp.into_body()).await
    };

    let (ip, headers) = futures::try_join!(ip_fut, headers_fut)?;

    println!("Response: {}", resp.status());
    Ok(())
}
