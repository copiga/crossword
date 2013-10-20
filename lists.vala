using GLib;

class lists
{
    public static List<string> rows;
    public static List<string> columns;
    
    public static void read_lines(FileStream input_file, ref List<string> lines)
	/*read lines from file, store in a LL*/
	{
		input_file.rewind();
		while(!input_file.eof())
		{
			lines.append(input_file.read_line());
		}
	}

	public static void init_lists()
	/*make the lists so we can use them*/
	{
		rows = new List<string>();
		columns = new List<string>();
	}

#if debug
	public static void print_lists(List<string> list)
	/*output list to stdout*/
	{
		list.foreach((entry) =>
		{
			stdout.printf("%s\n", entry);//for some reason this warns when i try to compile, it works though which is confusing...
		});
	}
#endif
	
}
