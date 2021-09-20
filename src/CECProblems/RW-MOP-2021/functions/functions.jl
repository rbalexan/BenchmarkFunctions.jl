include("mechanical-problems.jl")
include("chemical-problems.jl")
include("power-electronics-problems.jl")
include("power-system-problems.jl")
include("process-design-and-synthesis.jl")

# Mechanical problems
export pressure_vessal, 
vibrating_platform,
two_bar_Truss_design_problems, 
weldan_beam_design,
disc_brake_design, 
speed_reducer_design,
gear_train_design, 
car_side_impact_design,
four_bar_plane_truss,
two_bar_plane_truss, 
water_tesource_management, 
simply_supported_I_beam_design,
gear_box_design, 
multiple_disk_clutch_brake_design, 
spring_design, 
cantilever_beam_design,
bulk_carriers_design,
front_rail_design, 
multi_product_batch_plant, 
hydro_static_thrust_bearing_design,
crash_energy_management_for_high_speed_train

# chemical problems
export haverlys_pooling_problem, 
reactor_network_design, 
heat_exchanger_network_design
 
# Process Design and Synthesis
export process_synthesis,
process_sythesis_and_design,
process_flow_sheeting_problem,
two_reactor_problem,
process_synthesis_problem
 
# Power electronics Problem 
export SOPWM_for_3_level_invereters, 
SOPWM_for_5_level_Inverters,
SOPWM_for_7_level_inverters,
SOPWM_for_9_level_inverters,
SOPWM_for_11_level_inverters, 
SOPWM_for_13_level_inverters

export sizing_of_single_phase_distributed_generation_1, 
 sizing_of_single_phase_distributed_generation_2, 
 sizing_of_single_phase_distributed_generation_3, 
 sizing_of_single_phase_distributed_generation_4, 
 active_and_reactive_power_loss,
 optimal_power_flow_1,
 optimal_power_flow_2,
 optimal_power_flow_3,
 optimal_power_flow_4,
 optimal_power_flow_5,
 optimal_power_flow_6,
 minimization_of_active_power_loss_in_islanded_microgrids_1,
 minimization_of_active_power_loss_in_islanded_microgrids_2,
 minimization_of_active_power_loss_in_islanded_microgrids_3,
 power_distribution_system_planning

export get_RW_MOP_problem
