using GLib;

int main(string[] argv)
{
	if(argv.length < 3)
	{
		stdout.printf("usage: %s horizontal_file vertical_file\n", argv[0]);
		return 1;
	}

	FileStream horizontal, vertical;

	horizontal = FileStream.open(argv[1], "r");
	vertical = FileStream.open(argv[2], "r");
	
	if(horizontal == null)
	{
		stdout.printf("please enter a valid horizontal file\n");
		return 2;
	}
	
	if(vertical == null)
	{
		stdout.printf("please enter a valid vertical file\n");
		return 3;
	}

	lists.init_lists();
	
	lists.read_lines(horizontal, ref lists.rows);
	lists.read_lines(vertical, ref lists.columns);

	return 0;
}
