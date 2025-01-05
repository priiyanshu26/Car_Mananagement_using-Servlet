<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f4f4f9; color: #333;">
    <div style="text-align: center; padding: 20px; background-color: #0073e6; color: white;">
        <h1 style="margin: 0; font-size: 2.5em;">ADD CAR</h1>
    </div>
    <div style="display: flex; justify-content: center; align-items: center; height: calc(100vh - 80px);">
        <form action="add-car" method="post" 
              style="background-color: white; padding: 30px 50px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            <input type="number" placeholder="Enter the car ID" name="carid" 
                   style="width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 1em;"><br>
            <input type="text" placeholder="Enter the car model" name="carmodel" 
                   style="width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 1em;"><br>
            <input type="text" placeholder="Enter the car brand" name="carbrand" 
                   style="width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 1em;"><br>
            <input type="text" placeholder="Enter the car color" name="carcolor" 
                   style="width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 1em;"><br>
            <input type="number" placeholder="Enter the car price" name="carprice" 
                   style="width: 100%; margin-bottom: 15px; padding: 10px; border: 1px solid #ccc; border-radius: 5px; font-size: 1em;"><br>
            <input type="submit" value="ADD" 
                   style="width: 100%; padding: 10px; background-color: #0073e6; color: white; border: none; border-radius: 5px; font-size: 1.2em; cursor: pointer; transition: background-color 0.3s;">
        </form>
    </div>
</body>
</html>
