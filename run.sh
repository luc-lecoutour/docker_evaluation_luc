docker network create eval

docker run  --network=eval -e PORT=3000   -e ADDRESS=http://planner --name planner -d planner

docker run  --network=eval -e PORT=8080   -e ADDRESS=http://worker --name worker -d worker
#docker run  --network=eval -e PORT=8081   -e ADDRESS=http://worker --name worker -d worker
#docker run  --network=eval -e PORT=8082   -e ADDRESS=http://worker --name worker -d worker