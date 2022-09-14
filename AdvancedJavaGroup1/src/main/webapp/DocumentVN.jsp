<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tài Liệu VN</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h2>DocumentVN</h2>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#registerModal">
  Đăng ký
</button>

<%
	final String PROVINCES[] = {"Tỉnh/TP", "An Giang", "Bac Giang", "Bac Kan", "Bac Lieu", "Bac Ninh", "Ba Ria-Vung Tau", "Ben Tre", "Binh Dinh", "Binh Duong", "Binh Phuoc", "Binh Thuan", "Ca Mau", "Cao Bang", "Dac Lak", "Dac Nong", "Dien Bien", "Dong Nai", "Dong Thap", "Gia Lai", "Ha Giang", "Hai Duong", "Ha Nam", "Ha Tay", "Ha Tinh", "Hau Giang", "Hoa Binh", "Hung Yen", "Khanh Hoa", "Kien Giang", "Kon Tum", "Lai Chau", "Lam Dong", "Lang Son", "Lao Cai", "Long An", "Nam Dinh", "Nghe An", "Ninh Binh", "Ninh Thuan", "Phu Tho", "Phu Yen", "Quang Binh", "Quang Nam", "Quang Ngai", "Quang Ninh", "Quang Tri", "Soc Trang", "Son La", "Tay Ninh", "Thai Binh", "Thai Nguyen", "Thanh Hoa", "Thua Thien-Hue", "Tien Giang", "Tra Vinh", "Tuyen Quang", "Vinh Long", "Vinh Phuc", "Yen Bai", "Can Tho", "Da Nang", "Hai Phong", "Hanoi", "Ho Chi Minh"};
	final String DATES[] = {"Ngày", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"};
	final String MONTHS[] = {"Tháng", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"};
%>
<!-- Modal -->
<div class="modal fade" style="top:100px;" id="registerModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="registerModal">Đăng ký</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="container">
		  <div class="row">
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3">
				  <input type="text" class="form-control" placeholder="Nhập Username" aria-label="Username" aria-describedby="basic-addon1">
				</div>
		    </div>
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3">
				  <input type="text" class="form-control" placeholder="Nhập Họ và Tên" aria-label="Name" aria-describedby="basic-addon1">
				</div>
		    </div>
		
		    <div class="w-100 d-none d-md-block"></div>
		    
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3">
				  <input type="password" class="form-control" placeholder="Nhập mật khẩu" aria-label="Password" aria-describedby="basic-addon1">
				</div>
		    </div>
		    <div class="col-6 col-sm-3">
		    	<div class="input-group mb-3">
				  <select>
				  <option>Giới tính</option>
				   <option>Nam</option>
				   <option>Nữ</option>
				  </select>
				</div>
		    </div>
		    
		    <div class="w-100 d-none d-md-block"></div>
		    
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3">
				  <input type="password" class="form-control" placeholder="Nhập lại mật khẩu" aria-label="Username" aria-describedby="basic-addon1">
				</div>
		    </div>
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3 mr-2">
				  <div class="input-group mb-2">
					  <select>
					  		<%for(int i=0; i<DATES.length; i++){%>
						   		<option><%=DATES[i] %></option>
					  		<%} %>
					  </select>
					  <select>
					  		<%for(int i=0; i<MONTHS.length; i++){%>
						   		<option><%=MONTHS[i] %></option>
					  		<%} %>
					  </select>
					  <select>
					  		<option>Năm</option>
					  		<%for(int i=1990; i<=1999; i++){%>
						   		<option><%=i + "" %></option>
					  		<%} %>
					  </select>
					  <div class="input-group">
				</div>

				</div>
		    </div>
		  </div>
		    
		    <div class="w-100 d-none d-md-block"></div>
		    
		    <div class="col-6 col-sm-6">
		    	<div class="input-group mb-3">
				  <input type="email" class="form-control" placeholder="Nhập địa chỉ Email" aria-label="Username" aria-describedby="basic-addon1">
				</div>
		    </div>
		    <div class="col-6 col-sm-3">
		    	<div class="input-group mb-3">
				  <select>
				  		<%for(int i=0; i<PROVINCES.length; i++){%>
					   		<option><%=PROVINCES[i] %></option>
				  		<%} %>
				  </select>
				</div>
		    </div>
		    
		    <div class="w-100 d-none d-md-block"></div>
		    
		    <div>
		    	<div class="input-group mb-3">
				  <input type="email" class="form-control" placeholder="Nhập lại địa chỉ Email" aria-label="Username" aria-describedby="basic-addon1">
				</div>
		    </div>
		</div>
      </div>
      <div class="modal-footer">
      	<div class="flex textContent-center alignCenter">
      		<input type="checkbox" />
        	<span>
        		Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
        	</span>
      	</div>
        <button type="button" class="btn btn-primary">Đăng ký</button>
      </div>
    </div>
  </div>
</div>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>