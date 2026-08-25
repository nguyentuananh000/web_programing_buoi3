<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Results</title>
    <link rel="stylesheet" href="styles/main.css">
    <style>
        .result-table {
            border-collapse: collapse;
            margin-top: 15px;
            font-size: 14px;
        }
        .result-table td {
            padding: 6px 12px;
            vertical-align: top;
        }
        .result-table td:first-child {
            font-weight: bold;
            color: #111;
            width: 160px;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #0b666a;
            font-weight: bold;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Murach Logo Image -->
    <img src="images/murach_logo.jpg" alt="Murach Logo" class="murach-logo-img">

    <h1 class="survey-title">Thanks for taking our survey!</h1>
    <p class="survey-intro">Here is the information that you entered:</p>

    <table class="result-table">
        <tr>
            <td>First Name:</td>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${user.email}</td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td>${user.dob}</td>
        </tr>
        <tr>
            <td>Heard From:</td>
            <td>${user.heardFrom}</td>
        </tr>
        <tr>
            <td>Wants Updates:</td>
            <td>${user.wantsUpdates}</td>
        </tr>
        <tr>
            <td>Email Updates:</td>
            <td>${user.emailUpdates}</td>
        </tr>
        <tr>
            <td>Contact Via:</td>
            <td>${user.contactVia}</td>
        </tr>
    </table>

    <p><a href="index.jsp" class="back-link">&larr; Return to Survey</a></p>

</body>
</html>
