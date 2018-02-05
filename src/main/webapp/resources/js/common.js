/* 
 * Author: George <GeorgeNiceWorld@gmail.com> | <Georgeinfo@163.com>
 * Copyright (C) George (www.georgeinfo.com), All Rights Reserved.
 */
String.prototype.replaceAll = function (s1, s2) {
    return this.replace(new RegExp(s1, "gm"), s2);
};

/** 
 * ajax 封装函数.
 * @param {String} url 请求的后端地址 
 * @param {FormData} formData Form表单数据 
 * @param {Function} successCallback ajax请求成功时的回调函数 
 * @param {Function} errorCallback ajax请求失败时的回调函数
 **/
function doAjax(url, formData, successCallback, errorCallback) {
    if (self.fetch) {
        fetch(url, {
            credentials: 'same-origin',
            method: 'post',
            headers: {
                'Accept': 'application/json, text/javascript, */*; q=0.01',
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            /*mode: 'cors',
            credentials: 'credentials',
            cache: 'default'*/
            body: "account=ddd"
        }).then(function (response) {
            if (response.status == 200) {
                //return Promise.resolve(response);
                return response.json();
            } else {
                return Promise.reject(new Error(response.statusText));
            }
        })
                .then(function (data) {
                    successCallback(data);
                }).catch(function (err) {
            errorCallback(err);
        });
    } else {
        alert("fuck you");
        try {
            var xhr = new XMLHttpRequest();
            xhr.onload = function () {
                $.hideLoading();
                var jsonObj = JSON.parse(xhr.responseText);
                successCallback(jsonObj);
            };
            xhr.open('POST', url, true);
            xhr.send(formData);
        } catch (e) {
            errorCallback(e);
        }
    }
}