all: build doc

build: college

doc:
	@doxygen -g my_proj.conf

output: collegemain.o course.o college.o
	g++ collegemain.o course.o college.o -o output

collegemain.o: collegemain.cc
	g++ -c collegemain.cc

course.o: course.cc course.h
	g++ -c course.cc

college.o: college.cc college.h
	g++ -c college.cc 

clean:
	rm my_proj.conf output *.o

