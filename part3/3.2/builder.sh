#! /bin/bash

# Started out as a script with parameters etc, but opted for a more simpler version

#helpFunction()
#{
    #echo ""
    #echo "Usage: $0 -g <link_to_github_repo> -c <name_of_dockerhub>"
    #echo -e "\t-g <link_to_github_repo> is a required argument"
    #echo -e "\t-c <name_of_dockerhub> is a required argument"
    #exit 1
#}

#while getopts ":g:c:" opt
#do
    #case "$opt" in
        #g ) link_to_github_repo="$OPTARG";;
        #c ) name_of_dockerhub="$OPTARG";;
        #? ) helpFunction ;;
    #esac
#done

#if [ -z "$link_to_github_repo" ] || [ -z "$name_of_dockerhub" ]
#then
    #echo "Some or all of the parameters are empty"
    #helpFunction
#fi

#echo "link_to_github_repo: $link_to_github_repo"
#echo "name_of_dockerhub: $name_of_dockerhub"

echo "Cloning repo..."
git clone https://github.com/oskarikotajarvi/express-hello-world
cd express-hello-world
echo "Docker login..."
# The password and username would be passed in for example from github actions
# But for now, we'll have to put them here manually as this "project" is not in github
docker login -u <username> -p <password>
echo "Building image..."
docker build . -t express-hello-world
echo "Tagging and pushing image..."
docker tag express-hello-world okotajarvi/express-hello-world
docker push okotajarvi/express-hello-world:latest
