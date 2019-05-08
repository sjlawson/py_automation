if [ "$#" -lt 3 ]
then
   echo "Usage: behave_docker_test.sh <container> <testService> <browser> [filter type] [filter]"
   echo "E.G.: behave_docker_test.sh py_automation_al_py_automation_1 sauce chrome tags visitorSegmentExample"
   echo "Or: behave_docker_test.sh sauce chrome include homepage"
   exit
fi
container=$1
testService=$2
browser=$3
filtertype=$4
filter=$5

if [ $filtertype == 'tags' ]
then
    docker exec -it $container /bin/bash /al_py_automation/behave_tags.sh $testService $browser $filter
elif [ $filtertype == 'include' ]
then
    docker exec -it $container /bin/bash /al_py_automation/behave_include.sh $testService $browser $filter
elif [ $filtertype == 'scenario' ]
then
    docker exec -it $container /bin/bash /al_py_automation/behave_scenario.sh $testService $browser "$filter"
else
    docker exec -it $container /bin/bash /al_py_automation/behave_default.sh $testService $browser
fi
echo "Test complete"
