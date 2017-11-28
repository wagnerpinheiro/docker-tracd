# Docker / Trac / Agilo

Run a existent Trac project (w/ Agilo) as a docker container

## Prepare

1. Clone this repository;

2. If necessary, update the agilo for trac package on the vendor folder of the project;

2. Do a local Local buid:
```
docker build -t tracd .
```

## Run

Run with local build:
```
mkdir -p ./data/trac
docker run --name tracd -p 81:8080 -v ./data/trac:/trac tracd
```

OR, use the docker-compose.yml sample file on the root folder of the project:

```
docker-compose up
```

## Init a new trac project

1. Init the project:
```
docker-compose exec tracd trac-admin /trac initenv
docker-compose exec tracd trac-admin /trac permission add admin TRAC_ADMIN
```

2. Create the .htpasswd file with credentials:
```
# sudo apt install apache2-utils
docker-compose exec tracd htpasswd -c /trac/.htpasswd admindocker-compose exec tracd 
```

## Administration

```
docker-compose exec tracd trac-admin /trac
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
 * https://trac-hacks.org/wiki/TimingAndEstimationPlugin
  * https://trac-hacks.org/svn/timingandestimationplugin/branches/trac0.12/
 * https://trac-hacks.org/wiki/TracJsGanttPlugin
  * https://trac-hacks.org/svn/tracjsganttplugin/0.11/


## More Info
 * http://trac.edgewall.org/wiki/TracOnUbuntu
 * http://trac.edgewall.org/wiki/TracStandalone
 * http://www.agilofortrac.com/documentation/
 * http://trac-hacks.org/wiki/HackIndex


## TO-DO
 * add option to create a new project



