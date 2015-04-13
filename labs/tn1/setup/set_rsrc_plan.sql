-- Create a resource plan to limit processes 
-- on low powered machines using the active session pool
-- so they will continue to be responsive. 
-- The parameter &1 sets the number of active session pool
-- The queuing_p1 is hard coded to 300 seconds
-- That is an inactive session will time out after 300 seconds in the queue
-- This was built for the workload for
-- practice 3-1 and 3-2 on D19165GC11
-- to be run during the practice setup and turned off afterwards

-- modified for 11g security best practices

set feedback off
set verify off

BEGIN
dbms_resource_manager.clear_pending_area();
dbms_resource_manager.create_pending_area();
dbms_resource_manager.create_plan( 'PT_LIMIT_PLAN', 'Plan to give system sessions priority, and limit active sessions');
dbms_resource_manager.create_plan_directive(
    plan => 'PT_LIMIT_PLAN',
    group_or_subplan => 'LOW_GROUP',
    comment => 'Other sessions at lowest priority',
    cpu_p1 => NULL, cpu_p2 => NULL, cpu_p3 => 100, cpu_p4 => NULL,
    cpu_p5 => NULL, cpu_p6 => NULL, cpu_p7 => NULL, cpu_p8 => NULL,
    parallel_degree_limit_p1 => NULL,
    active_sess_pool_p1 => &1,
    queueing_p1 => 300,
    switch_group => NULL,
    switch_time => NULL,
    switch_estimate => false,
    max_est_exec_time => NULL,
    undo_pool => NULL,
    max_idle_time => NULL,
    max_idle_blocker_time => NULL,
    switch_time_in_call => NULL
);
dbms_resource_manager.create_plan_directive(
    plan => 'PT_LIMIT_PLAN',
    group_or_subplan => 'OTHER_GROUPS',
    comment => 'Other sessions at lower priority',
    cpu_p1 => NULL, cpu_p2 => 100, cpu_p3 => NULL, cpu_p4 => NULL,
    cpu_p5 => NULL, cpu_p6 => NULL, cpu_p7 => NULL, cpu_p8 => NULL,
    parallel_degree_limit_p1 => NULL,
    active_sess_pool_p1 => &1,
    queueing_p1 => 300,
    switch_group => NULL,
    switch_time => NULL,
    switch_estimate => false,
    max_est_exec_time => NULL,
    undo_pool => NULL,
    max_idle_time => NULL,
    max_idle_blocker_time => NULL,
    switch_time_in_call => NULL
);
dbms_resource_manager.create_plan_directive(
    plan => 'PT_LIMIT_PLAN',
    group_or_subplan => 'SYS_GROUP',
    comment => 'System sessions at high priority',
    cpu_p1 => 70, cpu_p2 => NULL, cpu_p3 => NULL, cpu_p4 => NULL,
    cpu_p5 => NULL, cpu_p6 => NULL, cpu_p7 => NULL, cpu_p8 => NULL,
    parallel_degree_limit_p1 => NULL,
    active_sess_pool_p1 => NULL,
    queueing_p1 => NULL,
    switch_group => NULL,
    switch_time => NULL,
    switch_estimate => false,
    max_est_exec_time => NULL,
    undo_pool => NULL,
    max_idle_time => NULL,
    max_idle_blocker_time => NULL,
    switch_time_in_call => NULL
);
dbms_resource_manager.submit_pending_area();
END;
/
-- Create the plan but do not set it here.
-- ALTER SYSTEM SET resource_manager_plan='PT_LIMIT_PLAN' SCOPE=MEMORY;
EXIT
