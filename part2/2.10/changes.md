# Changes made to backend dockerfile
- Removed environment sets and port exposing --> moved over to the docker-compose.yml file
# Changes made to frontend dockerfile
- Removed environment sets and port exposing --> moved over to the docker-compose.yml file
# Changes made to the docker-compose file
- Added frontend and backend environment configs
    - Added request origin of localhost for backend
    - Added backend mapping of localhost for frontend
        - Both changes made because nginx takes care of routing requests to correct places

