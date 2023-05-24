# difference between file::path and file#path

=begin
::path returns the string representation of the given path File.path("string representation of file.path")
#path

#path returns the pathname used to create file as a string, pathname may
not point to the file corresponding to file name (does not normalize a name)
=end

# :: class method, is called on the File class and # instance method, called on objects
