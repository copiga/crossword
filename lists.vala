using GLib;

class lists
{
    public static List<string> rows;
    public static List<string> columns;
    
    public static void read_lines(FileStream input_file, ref List<string> lines)
	{
		input_file.rewind();
		while(!input_file.eof())
		{
			lines.append(input_file.read_line());
		}
	}

	public static void init_lists()
	{
		rows = new List<string>();
		columns = new List<string>();
	}

#if debug
	public static void print_lists(List<string> list)
	{
		list.foreach((entry) =>
		{
			stdout.printf("%s\n", entry);
		});
	}
#endif
	
}
