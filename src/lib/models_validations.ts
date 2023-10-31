export const isValidEmail = (email: string) => {
    // Validate the email address using a regex
    const re = /\S+@\S+\.\S+/;
    return re.test(email);
}
    

export const isValidUsername = (username: string) => {
    return username.length > 3;
};


