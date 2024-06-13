 <%
redirect_uri="https://www.evolv.cc/getLinkedinData.asp?UsID="&request("UsID")&"&rcode="&request("rcode")&"&ecode="&request("ecode")&""

client_id="776mq7f8zjs87n"
client_secret="V6hXNRRgPVy75bWZ"

response.redirect "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=" &client_id  &"&redirect_uri=" &redirect_uri &"&scope=r_emailaddress,r_liteprofile&state=547326198" 

 %>