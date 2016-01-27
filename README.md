# ZKPopStateView
一个很好用的popview


- (IBAction)showSuccessAction:(UIButton *)sender {
    [ZKPopStateViewHUD showSuccessWithMessage:@"sdad"];
}

- (IBAction)showErrorAction:(UIButton *)sender {
    [ZKPopStateViewHUD showErrorWithMessage:@"error"];
}

- (IBAction)showLoadAction:(UIButton *)sender {
    [ZKPopStateViewHUD showLoadWithMessage:@"load..."];

}

- (IBAction)hidenAction:(UIButton *)sender {
    [ZKPopStateViewHUD hideHud];
}

- (IBAction)showMessageActon:(UIButton *)sender {
    [ZKPopStateViewHUD showMessage:@"message"];
}
