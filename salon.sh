#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t --no-align -c"

# Display available services
echo -e "\n~~~~~ Salon Appointment Scheduler ~~~~~\n"

MAIN_MENU() {
  # Get list of services
  SERVICES=$($PSQL "SELECT service_id, name FROM services")
  
  # Display services
  echo -e "\nPlease select a service:"
  echo "$SERVICES" | while IFS="|" read SERVICE_ID SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # Read service ID from user input
  read SERVICE_ID_SELECTED

  # Check if the input service exists in the database
  VALID_SERVICE_ID=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")

  # If the service ID is not valid, show the service menu again
  if [[ -z $VALID_SERVICE_ID ]]
  then
    echo -e "\nThat is not a valid service. Please select again."
    MAIN_MENU
  else
    # Proceed with the appointment booking if the service is valid
    echo -e "\nPlease enter your phone number:"
    read CUSTOMER_PHONE

    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

    # If customer doesn't exist, add them
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nIt seems you are a new customer. What's your name?"
      read CUSTOMER_NAME
      INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
    fi

    # Get customer_id
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

    # Ask for appointment time
    echo -e "\nWhat time would you like your appointment?"
    read SERVICE_TIME

    # Insert the appointment
    INSERT_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")

    # Get service name
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")

    # Confirm appointment
    echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
}

MAIN_MENU
