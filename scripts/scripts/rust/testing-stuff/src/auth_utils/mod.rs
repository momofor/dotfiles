pub fn login(creds: models::Credentials) {
    crate::database::get_user();
}

fn logout() {}
pub mod models;
