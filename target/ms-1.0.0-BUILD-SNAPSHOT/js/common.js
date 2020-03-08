const getUrlLocation = type => {
	const url = location.href;
	const pathName = location.pathname;

	if(type === "url") {
		return url;
	}
 	else if(type === "pathname") {
		return pathName;
	} 
	else if(type === "param") {
		const params = (url.slice(url.indexOf('?') + 1, url.length)).split('&');
		let paramObj = {};
		for(let i=0; i<params.length; i++) {
			const key = params[i].split('=')[0];
			const value = params[i].split('=')[1];
			paramObj[key] = value;
		}
		return paramObj;
	}
} 

const ajaxCall = (url, data, type) => {
	console.log('ajaxCall test');

	if(!type) 
		type = 'GET';

	return new Promise((resolve, reject) => {
		$.ajax({
			url: "http://localhost:8080" + url,
			type: type,
			data: data,
			datatype: 'json',
			beforesend: xhr => {
				xhr.setRequestHeaders("Access-Control-Allow-Headers", "*");
			},
			error: (xhr, status, error) => {
				// reject();
			},
			success: result => {
				console.log(result);
				resolve(result);
			}
		});
	});
}