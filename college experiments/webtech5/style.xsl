<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Apply basic page styling -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Information</title>
                <style>
                    body {
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f9;
                    margin: 20px;
                    padding: 20px;
                    }

                    h1 {
                    text-align: center;
                    color: #333;
                    }

                    .student {
                    background-color: #fff;
                    margin-bottom: 15px;
                    padding: 15px;
                    border-radius: 5px;
                    border: 1px solid #ddd;
                    }

                    .student h2 {
                    color: #2c3e50;
                    font-size: 1.2em;
                    }

                    .student p {
                    margin: 5px 0;
                    }

                    .student span {
                    font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1>Student Information</h1>
                <xsl:for-each select="students/student">
                    <div class="student">
                        <h2>
                            <xsl:value-of select="fName" />
                            <xsl:value-of select="lName" />
                        </h2>
                        <p>
                            <span>Date of Birth:</span>
                            <xsl:value-of select="DoB" />
                        </p>
                        <p>
                            <span>Year of Joining:</span>
                            <xsl:value-of select="yearOfJoining" />
                        </p>
                        <p>
                            <span>Branch:</span>
                            <xsl:value-of select="branch" />
                        </p>
                        <p>
                            <span>Section:</span>
                            <xsl:value-of select="section" />
                        </p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>