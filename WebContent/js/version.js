function Open (i) {
	var add = document.getElementById("open"+i);
	var minus = document.getElementById("close"+i);
	var con = document.getElementById("verCon"+i);
	if(minus.style.display == 'none') {
		add.style.display = 'none';
		minus.style.display = '';
		con.style.display = '';
	}else {
		minus.style.display = 'none';
		add.style.display = '';
		con.style.display = 'none';
	}
	
}