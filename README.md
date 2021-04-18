# Local setup
Clone the repo including submodules and enter `infrastructure/local` directory
```bash
git clone --recurse-submodules https://gitlab.com/reliable-and-scalable-biskup/infrastructure.git
cd infrastructure/local
```
Start the backend
```bash
./start-backend.sh # Linux
start-backend # Windows
```
Stop the backend
```bash
./stop-backend.sh # Linux
stop-backend # Windows
```
Stop the backend and delete all containers
```bash
./kill-backend.sh # Linux
kill-backend # Windows
```
Pull changes from all remote repositories to get the latest backend state
```bash
git pull
git submodule update --recursive --remote
```