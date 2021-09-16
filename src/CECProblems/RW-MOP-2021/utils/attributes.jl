#=
Problems based on:
CEC2021 Real world multi-objective Constrained Optimization Test Suite 
See https://github.com/P-N-Suganthan/2021-RW-MOP
=#


const NAME_OF_PROBLEMS_RW_MOP_2021 = [
                       # Mechanical problems
                       "pressure_vessal", 
                       "vibrating_platform",
                       "two_bar_Truss_design_problems", 
                       "weldan_beam_design",
                       "disc_brake_design", 
                       "speed_reducer_design",
                       "gear_train_design", 
                       "car_side_impact_design",
                       "four_bar_plane_truss",
                       "two_bar_plane_truss", 
                       "water_tesource_management", 
                       "simply_supported_I_beam_design",
                       "gear_box_design", 
                       "multiple_disk_clutch_brake_design", 
                       "spring_design", 
                       "cantilever_beam_design",
                       "bulk_carriers_design",
                       "front_rail_design", 
                       "multi_product_batch_plant", 
                       "hydro_static_thrust_bearing_design",
                       "crash_energy_management_for_high_speed_train",

                       # chemical problems
                       "haverlys_pooling_problem", 
                       "reactor_network_design", 
                       "heat_exchanger_network_design",

                       # Process Design and Synthesis
                       "process_synthesis",
                       "process_sythesis_and_design",
                       "process_flow_sheeting_problem",
                       "two_reactor_problem",
                       "process_synthesis_problem",

                       # Power electronics Problem 
                       "SOPWM_for_3_level_invereters", 
                       "SOPWM_for_5_level_Inverters",
                       "SOPWM_for_7_level_inverters",
                       "SOPWM_for_9_level_inverters",
                       "SOPWM_for_11_level_inverters", 
                       "SOPWM_for_13_level_inverters", 

                       "sizing_of_single_phase_distributed_generation_1", 
                       "sizing_of_single_phase_distributed_generation_2", 
                       "sizing_of_single_phase_distributed_generation_3", 
                       "sizing_of_single_phase_distributed_generation_4", 
                       "active_and_reactive_power_loss",
                       "optimal_power_flow_1",
                       "optimal_power_flow_2",
                       "optimal_power_flow_3",
                       "optimal_power_flow_4",
                       "optimal_power_flow_5",
                       "optimal_power_flow_6",
                       "minimization_of_active_power_loss_in_islanded_microgrids_1",
                       "minimization_of_active_power_loss_in_islanded_microgrids_2",
                       "minimization_of_active_power_loss_in_islanded_microgrids_3",
                       "power_distribution_system_planning"
                      ]

function gen_dict()
    # problems_in_issue = [21, 3, 5, 6, 15]

    properties = vcat(
                      # Mechanical problems (21)
                      [Set([ "mechanics", "real-world", "multiobjective"]) for i in 1:21],
                      # chemical problems (3)
                      [Set([ "chemistry", "real-world", "multiobjective"]) for i in 1:3],
                      # Process Design and Synthesis (5)
                      [Set([ "process-design-and-synthesis", "real-world", "multiobjective"]) for i in 1:5],
                      # Power electronics Problem  (6) 
                      [Set([ "power-electronics", "real-world", "multiobjective"]) for i in 1:6],
                      # Power System Problems (15)
                      [Set([ "power-systems", "real-world", "multiobjective"]) for i in 1:15]
                     )

    dict = Dict{String, Set{String}}()

    for (name, property) in zip(NAME_OF_PROBLEMS_RW_MOP_2021, properties)
        dict[name] = property
    end

    dict
end

const functionDict_RWMOP_2021 = gen_dict()



function RW_MOP_bounds(prob_k::Int, dimension = 0)

    n = dimension

    ## range
    # bound constraint definitions for all 50 test functions
    xmin  = [ zeros(1) for i in 1:50 ]
    xmax  = [ zeros(1) for i in 1:50 ]
    xmin[1]    = [0.51,0.51,10,10];
    xmax[1]    = [99.49,99.49,200,200];
    xmin[2]    = [0.05,0.2,0.2,0.35,3];
    xmax[2]    = [0.5,0.5,0.6,0.5,6];
    xmin[3]    = [1e-5,1e-5,1];
    xmax[3]    = [100, 100, 3];
    xmin[4]    = [0.125,0.1,0.1,0.125];
    xmax[4]    = [5,10,10,5];
    xmin[5]    = [55,75,1000,11];
    xmax[5]    = [80,110,3000,20];
    xmin[6]    = [2.6,0.7,16.51,7.3,7.3,2.9,5];
    xmax[6]    = [3.6,0.8,28.49,8.3,8.3,3.9,5.5];
    xmin[7]    = [11.51,11.51,11.51,11.51];
    xmax[7]    = [60.49,60.49,60.49,60.49];
    xmin[8]    = [0.5,0.45,0.5,0.5,0.875,0.4,0.4];
    xmax[8]    = [1.5,1.35,1.5,1.5,2.625,1.2,1.2];
    xmin[9]    = [1,sqrt(2),sqrt(2),1];
    xmax[9]    = [3,3,3,3];
    xmin[10]   = [0.1,0.5];
    xmax[10]   = [2,2.5];
    xmin[11]   = [0.01,0.01, 0.01];
    xmax[11]   = [0.45,0.1, 0.1];
    xmin[12]   = [10, 10, 0.9, 0.9];
    xmax[12]   = [80, 50, 5, 5];  
    xmin[13]    = [2.6,0.7,16.51,7.3,7.3,2.9,5];
    xmax[13]    = [3.6,0.8,28.49,8.3,8.3,3.9,5.5];
    xmin[14]    =  [60,90, 1, 0, 2];
    xmax[14]    = [80, 110, 3, 1000, 9];
    xmin[15]    = [0.51,0.6,0.51];
    xmax[15]    = [70.49,3,42.49];
    xmin[16]    = [0.01, 0.20];
    xmax[16]    = [0.05, 1];
    xmin[17]    = [150.0, 20.0, 13.0, 10.0, 14.0, 0.63];
    xmax[17]    = [274.32, 32.31, 25.0, 11.71, 18.0, 0.75];
    xmin[18]    = [136,56,1.4];
    xmax[18]    = [146,68,2.2];
    xmin[19]   = [ 0.51,0.51,0.51,250,250,250,6,4,40,10];
    xmax[19]   = [3.49,3.49,3.49,2500,2500,2500,20,16,700,450];
    xmin[20]   = [ 1, 1,  1e-6,1];
    xmax[20]   = [16, 16, 16*1e-6,16];
    xmin[21] = [1.3, 2.5, 1.3, 1.3, 1.3, 1.3];
    xmax[21] = [1.7, 3.5, 1.7, 1.7, 1.7, 1.7];
    xmin[22] = zeros(9);
    xmax[22] = [100,200,100,100,100,100,200,100,200];
    xmin[23] = [0,0,0,0,0.00001,0.00001];
    xmax[23] = [ 1,1,1,1,16,16];
    xmin[24] = [0,0,0,0,1000,0,100,100,100];
    xmax[24] = [10,200,100,200,2000000,600,600,600,900];
    xmin[25] = [0,-0.49];
    xmax[25] = [1.6,1.49];
    xmin[26] = [0.5,0.5,-0.49];
    xmax[26] = [1.4,1.4,1.49];
    xmin[27] = [0.2,-2.22554,-0.49];
    xmax[27] = [1,-1,1.49];
    xmin[28] = [0,0,0,0,-0.49,-0.49,0];
    xmax[28] = [20,20,10,10,1.49,1.49,40];
    xmin[29] = [0,0,0,-0.49,-0.49,-0.49,-0.49];
    xmax[29] = [100,100,100,1.49,1.49,1.49,1.49];
    xmin[30]   = -0*ones(n);
    xmax[30]   = 90*ones(n);
    xmin[31]   = -0*ones(n);
    xmax[31]   = 90*ones(n);
    xmin[32]   = -0*ones(n);
    xmax[32]   = 90*ones(n);
    xmin[33]   = -0*ones(n);
    xmax[33]   = 90*ones(n);
    xmin[34]   = -0*ones(n);
    xmax[34]   = 90*ones(n);
    xmin[35]   = -0*ones(n);
    xmax[35]   = 90*ones(n);

    if 39 >= prob_k >= 36
        xmin[36]   = -1*ones(n);xmin[36][25:28] .= 0;
        xmax[36]   = +1*ones(n);
        xmin[37]   = -1*ones(n);xmin[37][25:28] .= 0;
        xmax[37]   = +1*ones(n);
        xmin[38]   = -1*ones(n);xmin[38][25:28] .= 0;
        xmax[38]   = +1*ones(n);
        xmin[39]   = -1*ones(n);xmin[39][25:28] .= 0;
        xmax[39]   = +1*ones(n);
    end
    if 46 >= prob_k >= 40
        xmin[40]   = -1*ones(n);xmin[40][27:34] .= 0;
        xmax[40]   = +1*ones(n);
        xmin[41]   = -1*ones(n);xmin[41][27:34] .= 0;
        xmax[41]   = +1*ones(n);
        xmin[42]   = -1*ones(n);xmin[42][27:34] .= 0;
        xmax[42]   = +1*ones(n);
        xmin[43]   = -1*ones(n);xmin[43][27:34] .= 0;
        xmax[43]   = +1*ones(n);
        xmin[44]   = -1*ones(n);xmin[44][27:34] .= 0;
        xmax[44]   = +1*ones(n);
        xmin[45]   = -1*ones(n);xmin[45][27:34] .= 0;
        xmax[45]   = +1*ones(n);
        xmin[46]   = -1*ones(n);xmin[46][27:34] .= 0;
        xmax[46]   = +1*ones(n);
    end
    if 49 >= prob_k >= 47
        xmin[47]   = -1*ones(n);xmin[47][11:12] .= 0;xmin[47][13:18] .= 0;
        xmax[47]   = +1*ones(n);xmax[47][11:12] .= 2;xmax[47][13:18] .= 500;
        xmin[48]   = -1*ones(n);xmin[48][11:12] .= 0;xmin[48][13:18] .= 0;
        xmax[48]   = +1*ones(n);xmax[48][11:12] .= 2;xmax[48][13:18] .= 500;
        xmin[49]   = -1*ones(n);xmin[49][11:12] .= 0;xmin[49][13:18] .= 0;
        xmax[49]   = +1*ones(n);xmax[49][11:12] .= 2;xmax[49][13:18] .= 500;
    end

    xmin[50]    = [10, 10, 35, 35, 125, 130];
    xmax[50]  = [125, 150, 210, 225, 315, 325];


    xmin_ = xmin[prob_k]
    xmax_ = xmax[prob_k]



    #nadir = nadir_points[prob_k]

    return xmin_, xmax_
end


function get_RW_MOP_config(function_name::AbstractString)
    fnum = findfirst( s -> function_name == s, NAME_OF_PROBLEMS_RW_MOP_2021)

    isnothing(fnum) && error("$function_name is not implemented yet or does not exist.")

    get_RW_MOP_config(fnum)
end

function get_RW_MOP_config(fnum::Int)
    @assert 1 <= fnum <= 50

    problems_dimension = [4,5,3,4,4,7,4,7,4,2,3,4,7,5,3,2,6,3,10,4,6,9,6,9,2,3,3,7,7,25,
                          25,25,30,30,30,28,28,28,28,34,34,34,34,34,34,34,18,18,18,6];

    problems_objectives = [2,2,2,2,2,2,2,3,2,2,5,2,3,2,2,2,3,2,3,2,2,2,2,3,2,
                           2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,3,2,2,3,3,4,2,2,3,2];


    inequility_constrains = [2,5,3,4,4,11,1,9,1,2,7,1,11,8,8,2,9,3,10,7,4,2,1,0,2,1,3,4,9,
                            24,24,24,29,29,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];

    equility_constrains   = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,6,0,1,0,4,0,0,
                            0,0,0,0,0,24,24,24,24,26,26,26,26,26,26,26,12,12,12,1];


    nadir_points = [
                    [359648.85, -7330.3829],
                    [-0.0012746083, 318.25489],
                    [0.1, 100000.0],
                    [36.679325, 0.013066667],
                    [5.3067, 3.0281682],
                    [5969.8221, 1300.0],
                    [3.4655, 45.417795],
                    [92.596587, 4.0, 12.699733],
                    [3048.5281, 0.04],
                    [187.04862, 6.7710178e-5],
                    [73450.511, 1350.0, 2.853469e6, 6.620032e6, 25000.0],
                    [437.95472, 0.061459097],
                    [6103.6015, 1300.0, 1004.6759],
                    [1.3967521, 0.014920745],
                    [27.942662, 187991.19],
                    [3.0630528, 0.0020408763],
                    [-3151.4157, 8260.6298, 812.60004],
                    [0.93366407, 1.196596],
                    [244351.82, 48572.551, 6000.0],
                    [267.25846, -2.7672651e-5],
                    [1.3157336, 26.297736],
                    [-105.90871, 2000.0],
                    [-0.00040194083, 4.0],
                    [6.6395236, -3.6323008e-5, -1.9999995e6],
                    [3.2, -1.25],
                    [2.9263226, -1.5793956],
                    [-0.243, 0.0],
                    [133.43214, 13.1082],
                    [2.999999, 14.0],
                    [0.28549866, 0.10239999],
                    [0.73429846, 0.10239997],
                    [0.58881362, 0.12959996],
                    [0.52171456, 0.10239985],
                    [0.61063821, 0.11108847],
                    [1.9499692, 11.076986],
                    [0.69938497, 0.0040801029],
                    [0.64793246, 0.0057752416],
                    [0.0050223653, 0.0036060355],
                    [0.70181358, 0.0040803309, 0.0057776563],
                    [6.1887155, -0.29920474],
                    [6.1954982, -0.18135402, 4.060485],
                    [0.0068788651, 0.0029695767],
                    [5.7139516, 1.2579325],
                    [5.720257, 1.0231384, 4.0471196],
                    [8.7353948, 2.2861141, 4.6710252],
                    [5.7381081, 2.3578333, 8.1909894, 3.9032935],
                    [0.0093764479, 0.0024737407],
                    [0.14296272, 0.00086761855],
                    [0.14253454, 0.020364141, 0.00058302635],
                    [64895.619, 1253.8936],
                   ]



    nadir = nadir_points[fnum]
    #problem_name = keys(functionDict_RWMOP_2021)[fnum]

    xmin, xmax= RW_MOP_bounds(fnum, problems_dimension[fnum])

    return Dict(:function => NAME_OF_PROBLEMS_RW_MOP_2021[fnum],
                :fn    => problems_objectives[fnum],
                :n     => problems_dimension[fnum],
                :nadir => nadir,
                :gn    => inequility_constrains[fnum],
                :hn    => equility_constrains[fnum],
                :xmin  => xmin,
                :xmax  => xmax)


end


function get_RW_MOP_problem(function_name::AbstractString)
    fnum = findfirst( s -> function_name == s, NAME_OF_PROBLEMS_RW_MOP_2021)

    isnothing(fnum) && error("$function_name is not implemented yet or does not exist.")

    return get_RW_MOP_problem(fnum)
    
end

function get_RW_MOP_problem(fnum::Int)

    !(1 <= fnum <= 50) && error("Problem $fnum is not implemented yet or does not exist.")

    # objetive function x -> f(x)
    f = eval(Symbol(NAME_OF_PROBLEMS_RW_MOP_2021[fnum]))

    # problem configuration
    conf = get_RW_MOP_config(fnum)

    return f, conf
end

