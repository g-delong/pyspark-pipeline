from zenml import pipeline, step
from zenml.client import Client

from pyspark.sql import SparkSession, DataFrame
from pyspark.sql.types import StructType, StructField, IntegerType, StringType


@pipeline
def spark_pipeline():
    load_data_local()
    print("Done!")

@step
def load_data_local() -> DataFrame:


    # Create SparkSession
    spark = SparkSession.builder \
        .appName("Sample DataFrame Creation") \
        .getOrCreate()

    # Define schema for the DataFrame
    schema = StructType([
        StructField('id', IntegerType(), True),
        StructField('name', StringType(), True),
        StructField('age', IntegerType(), True),
        StructField('city', StringType(), True)
    ])

    # Sample data
    data = [
        (1, 'Alice', 25, 'New York'),
        (2, 'Bob', 30, 'Los Angeles'),
        (3, 'Charlie', 35, 'Chicago'),
        (4, 'David', 40, 'Houston'),
        (5, 'Eve', 45, 'Phoenix')
    ]

    # Create DataFrame
    df = spark.createDataFrame(data, schema=schema)

    # Display DataFrame
    print(df.show())
    return df

