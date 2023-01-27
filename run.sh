docker network create eval

docker run  --network=eval -e PORT=3000   -e ADDRESS=http://planner --name planner -d planner

#docker run  --network=eval -e PORT=8080  -e WORKTYPE=mult  -e ADDRESS=http://worker1 --name worker1 -d worker
#docker run  --network=eval -e PORT=8080  -e WORKTYPE=add  -e ADDRESS=http://worker2 --name worker2 -d worker
#docker run  --network=eval -e PORT=8080   -e ADDRESS=http://worker3 --name worker3 -d worker

for i in {1..10}; do docker run  --network=eval -e PORT=8080 -e WORKTYPE=mult  -e ADDRESS=http://worker$i --name worker$i -d worker; done

for i in {11..20}; do docker run  --network=eval -e PORT=8080 -e WORKTYPE=add  -e ADDRESS=http://worker$i --name worker$i -d worker; done

for i in {21..30}; do docker run  --network=eval -e PORT=8080  -e WORKTYPE=all -e ADDRESS=http://worker$i --name worker$i -d worker; done