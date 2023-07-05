import os
from dotenv import load_dotenv
import pandas as pd
import psycopg2 as pg2

load_dotenv()

def convert_sql_to_xlsx(sql_in, xlsx_out, xlsx_name=None):
    """
    Runs query in given .sql file, stores result as .xlsx file.

    Parameters:
        sql_in (str): relative filepath to .sql file
        xlsx_out (str): relative filepath to directory where .xlsx will be stored
        xlsx_name (str or None): If not None, file named xlsx_name.xlsx
                                 If None, file named same as sql_in

    Returns:
        None
    """
    
    #read the sql query from the file
    with open(sql_in, "r") as f:
        sql_query = f.read()
        
    conn2 = pg2.connect(dbname="adventureworks",
                    user=POSTGRES_USER,
                    host=POSTGRES_HOST,
                    password=POSTGRES_PASSWORD,
                    port=POSTGRES_PORT)

    cur = conn2.cursor()
    
    # cur.execute()
        
    df = pd.read_sql_query(sql_query, conn2)
    
    excel_file = xlsx_name + ".xlsx"
    
    excel_path = os.path.join(xlsx_out, excel_file)
    
    w = pd.ExcelWriter(excel_path)
    
    df.to_excel(w)
    
    w.save()
    
    w.close()
    
    conn2.close()
    
    return None

def convert_directory_of_queries(sql_in_dir, xlsx_out_dir):
    """
    Runs each query in sql_in_dir directory,
        stores each result as .xlsx in xlsx_out_dir.

    Parameters:
        sql_in_dir (str): relative filepath to directory
                          containing .sql files
        xlsx_out_dir (str): relative filepath to directory
                            where .xlsx will be stored
                            files named same as sql_in

    Returns:
        None
    """
    pass

def convert_sql_to_xlsx_from_cli():
    """
    Converts directory of sql queries to xlsx from CLI.
    """
    pass

if __name__ == '__main__':
    pass