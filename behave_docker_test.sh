if [ "$#" -lt 3 ]
then
   echo "Usage: behave_docker_test.sh <container> <platform> <browser> [filter type] [filter]"
   echo "E.G.: behave_docker_test.sh py_automation_al_py_automation_1 sauce chrome tags visitorSegmentExample"
   echo "Or: behave_docker_test.sh sauce chrome include homepage"
   exit
fi
container=$1
platform=$2
browser=$3
filtertype=$4
filter=$5

if [ $filtertype == 'tags' ]
then
    docker exec -it $container /bin/bash /al_py_automation/behave_tags.sh $platform $browser $filter
elif [ $filtertype == 'include' ]
then
    docker exec -it $container /bin/bash /al_py_automation/behave_include.sh $platform $browser $filter
else
    docker exec -it $container /bin/bash /al_py_automation/behave_default.sh $platform $browser
fi
echo "Test complete"
