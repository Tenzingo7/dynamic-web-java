<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Product form</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                min-height: 100vh;
                background: white;
                display: flex;
                font-family: sans-serif;
            }
            .container{
                margin: auto;
                width: 500px;
                max-width: 90%;
            }
            .container form{
                width: 100%;
                height: 100%;
                padding: 20px;
                background: white;
                border-radius: 4px;
                box-shadow: 0 8px 16px black;
            }
            .container form h1{
                text-align: center;
                margin-bottom: 24px;
                color: black;
            }
            .container form .form-control{
                width: 100%;
                height: 40px;
                background: white;
                border-radius: 40px;
                border: 1px solid silver;
                margin: 10px 0 18px 0;
                padding: 0 10px;
            }
            .container form .btn {
            display: inline-block;
             width: 120px;
             height: 40px;
             border: none;
             outline: none;
             background: pink;
            cursor: pointer;
            font-size: 16px;
            text-align: center; /* Center the text horizontally */
            line-height: 40px; /* Center the text vertically */
             text-transform: uppercase;
            color: black;
            border-radius: 4px;
            transition: 0.3s;
            }

            .container form .btn:hover {
           opacity: 0.7;
            }

            .container form .back-btn {
              display: inline-block;
              margin-left: 200px; /* Adjust spacing between buttons */
              width: 50px; /* Let the button size adjust to the text */
             height: 40px;
             border: none;
             outline: none;
             background: pink;
             cursor: pointer;
            font-size: 16px;
            text-align: center; /* Center the text horizontally */
             line-height: 40px; /* Center the text vertically */
             text-transform: uppercase;
             color: black;
            border-radius: 4px;
             transition: 0.3s;
             text-decoration: none;
            }


        </style>
    </head>
    <body>
        <div class="container">
            <form action="<%= request.getContextPath() %>/AddProduct" method="post">
                <h1>Add Product form</h1>
                <div class="form-group">
                    <label for="">Product name</label>
                    <input type="text" name = "productname" class="form-control" required>

                </div>
                <div class="form-group">
                    <label for="">Product description</label>
                    <input type="text" name = "productdescription" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="">Product price</label>
                    <input type="number" name = "productprice" class="form-control" required>

                </div>
                <div class="form-group">
                    <label for="">Product stock</label>
                    <input type="number" name = "productstock" class="form-control" required>

                </div>
                <input type="submit" class="btn" value="Add">
                <a href="<%= request.getContextPath() %>/admin" class="btn back-btn">Back</a>
            </form>

        </div>
    </body>
    </html>