# Docker / Trac / Agilo

Run a existent Trac project (w/ Agilo) as a docker container

## Prepare

Before start, download agilo for trac on vendor folder of the project.

Local buid:
```
docker build -t tracd .
```

## Run

```
docker run --name tracd -p 81:8080 -v /home/wagner/workspace/docker-trac/trac:/trac tracd
```

OR

```
docker-compose up
```

## Trac Plugins
 * Agilo for trac 
 * http://trac-hacks.org/svn/visualizationplugin/
 * http://trac-hacks.org/svn/awesomeattachmentsplugin/
 * http://trac-hacks.org/wiki/TracSqlPlugin
 * tracsql 
 * http://trac-hacks.org/wiki/JqChartMacro
  * http://trac-hacks.org/svn/jqchartmacro/
 * http://trac-hacks.org/wiki/StatusHistoryChartMacro
  * http://trac-hacks.org/svn/statushistorychartmacro/
 * http://trac-hacks.org/wiki/TicketChartsMacro
  * http://trac-hacks.org/svn/ticketchartsmacro/
 * http://trac-hacks.org/wiki/VotePlugin
  * http://trac-hacks.org/svn/voteplugin/tags/0.1.5

## More Info
 * http://trac.edgewall.org/wiki/TracOnUbuntu
 * http://trac.edgewall.org/wiki/TracStandalone
 * http://www.agilofortrac.com/documentation/
 * http://trac-hacks.org/wiki/HackIndex


## TO-DO
 * add option to create a new project



