from pyspark.sql import SparkSession

# Initialize a Spark session
spark = SparkSession.builder \
    .appName("PySpark Example") \
    .master("spark://localhost:7077") \
    .getOrCreate()

# Print the Spark version
print(f"Spark version: {spark.version}")

# Create a simple DataFrame
data = [("Alice", 34), ("Bob", 45), ("Cathy", 29)]
columns = ["Name", "Age"]
df = spark.createDataFrame(data, columns)

# Show the DataFrame
print("DataFrame:")
df.show()

# Perform some transformations and actions
# Filter rows where age > 30
df_filtered = df.filter(df.Age > 30)
print("Filtered DataFrame (Age > 30):")
df_filtered.show()

# Compute average age
average_age = df.groupBy().avg("Age").collect()[0][0]
print(f"Average Age: {average_age}")

# Stop the Spark session
spark.stop()
