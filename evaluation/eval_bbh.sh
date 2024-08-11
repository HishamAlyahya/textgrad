#!/bin/bash

# List of tasks
tasks=(
    'boolean_expressions'
    'causal_judgement'
    'date_understanding'
    'disambiguation_qa'
    'dyck_languages'
    'formal_fallacies'
    'geometric_shapes'
    'hyperbaton'
    'logical_deduction_five_objects'
    'logical_deduction_seven_objects'
    'logical_deduction_three_objects'
    'movie_recommendation'
    'multistep_arithmetic_two'
    'navigate'
    'object_counting'
    'penguins_in_a_table'
    'reasoning_about_colored_objects'
    'ruin_names'
    'salient_translation_error_detection'
    'snarks'
    'sports_understanding'
    'temporal_sequences'
    'tracking_shuffled_objects_five_objects'
    'tracking_shuffled_objects_seven_objects'
    'tracking_shuffled_objects_three_objects'
    'web_of_lies'
    'word_sorting'
)

# Loop through each task and run the command
for task in "${tasks[@]}"; do
    echo "Running task: $task"
    python prompt_optimization.py --task=BBH_"$task" --run_validation --evaluation_engine=gpt-4-turbo --test_engine=gpt-4o-mini
done
