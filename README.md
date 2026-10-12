PROJECT OVERVIEW
The deploy_agent.sh shell script bootstraps the Student Attendance Tracker workspace. It builds the directory structure, generates the source files, configures attendance thresholds via sed, validates the environment, secures configuration permissions, and cleans up safely if the user cancels mid-run.

HOW TO RUN
Use the command: ./deploy_agent.sh OR bash deploy_agent.sh
The script will then prompt you for: an environment tag suffix, whether you want to use the template roster or generate a custom mock roster, and custom warning/failure threshold percentages.
