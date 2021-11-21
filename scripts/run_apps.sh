
#!/usr/bin/env bash
if [[ "$1" == "dev" || "$1" = "staging" || "$1" = "production" ]]; then
        yes | cp -RfX  "environment/$2/.env" .env
        echo "running app with environment $1"
            if [ $1 == "dev" ]; then
                ENVFILE=.env npx react-native run-ios --simulator=\"iPhone 11 Pro Max\" --scheme TravelApp.Dev --configuration Dev.Debug
            elif [ $1 == "staging" ]; then
                ENVFILE=.env npx react-native run-ios --simulator=\"iPhone 11 Pro Max\" --scheme TravelApp.Staging --configuration Staging.Debug
            else
                ENVFILE=.env npx react-native run-ios --simulator=\"iPhone 11 Pro Max\" --scheme TravelApp --configuration Debug
            fi
    else
    echo "please choose environment \"dev | staging | production\""
fi