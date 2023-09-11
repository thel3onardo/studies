### The Maven Build Tool

Java files belonging to the same "category" are organized into packages.

#### Overview of Maven functionality

Maven is more than just a build tool (it seems like it is also a package manager :P)

> Every library, used in my project, must be in the java classpath

Maven allows me to specify the external libraries I wanna use inside a <em>Project Object Model (POM file)</em>

> pom.xml

I can search for libs here: https://central.sonatype.com/?smo=true

#### Maven plugins

Maven relies on Java programs called plugins to execute tasks, such as building, deploying, testing, etc.

I can specify which plugins I wanna use inside the "plugins" section, in <em>pom.xml</em> file.

If I do not specify the plugins, Maven will use a set of default built-in plugins (which versions I cannot define). For that reason, the author recommends me to always define the plugins of my project, alongside their specific versions.

#### Maven project layout

I can define a specific project folder structure, but the following is the default one:

Project Folder
    /src
        /main
            /java        
            /resources    
        /test
            /java        
            /resources
    pom.xml file

After compilation, Maven will create a /target directory, which will include the packaged file called the <em>jar</em> file.