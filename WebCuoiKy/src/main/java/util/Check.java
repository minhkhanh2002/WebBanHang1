package util;

public class Check {
	
	 // Hàm kiểm tra mật khẩu
    public static boolean kiemTraMatKhau(String matKhau) {
        // Ít nhất 8 ký tự, ít nhất một chữ cái in hoa, một chữ cái thường, và một chữ số
        String regex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d).{8,}$";

        // Kiểm tra xem mật khẩu thỏa mãn điều kiện không
        return matKhau.matches(regex);
    }
}
